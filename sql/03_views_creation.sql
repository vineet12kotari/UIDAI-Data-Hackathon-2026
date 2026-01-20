-- =====================================================
-- UIDAI DATA HACKATHON 2026 - VIEWS CREATION SCRIPT
-- Project: Aadhaar as a Lifecycle-Driven Identity Infrastructure
-- Purpose: Create master fact tables and base views for analytics
-- =====================================================

USE DATABASE merged_dataset_2;
USE SCHEMA merged_dataset_2;

-- =====================================================
-- BASE VIEWS CREATION
-- =====================================================

-- Identity Creation Load (ICL) - Enrollment View
CREATE OR REPLACE VIEW V_ENROLLMENT AS
SELECT 
    DATE,
    STATE,
    DISTRICT,
    PINCODE,
    AGE_0_5,
    AGE_5_17,
    AGE_18_GREATER,
    (AGE_0_5 + AGE_5_17 + AGE_18_GREATER) AS ICL -- Total Enrollments
FROM FINAL_ENROLLEMENT_DATA;

-- Demographic Updates Standardization
CREATE OR REPLACE VIEW V_DEMO_UPDATES AS
SELECT 
    DATE,
    STATE,
    DISTRICT,
    PINCODE,
    DEMO_AGE_5_17,
    DEMO_AGE_17_,
    (DEMO_AGE_5_17 + DEMO_AGE_17_) AS DEMO_UPDATES -- Total Demographic Updates
FROM FINAL_DEMOGRAPHIC_DATA;

-- Biometric Updates Standardization
CREATE OR REPLACE VIEW V_BIO_UPDATES AS
SELECT 
    DATE,
    STATE,
    DISTRICT,
    PINCODE,
    BIO_AGE_5_17,
    BIO_AGE_17_,
    (BIO_AGE_5_17 + BIO_AGE_17_) AS BIO_UPDATES -- Total Biometric Updates
FROM FINAL_BIO_DATA;

-- =====================================================
-- MASTER FACT TABLE - UNIFIED AADHAAR ACTIVITY
-- =====================================================

CREATE OR REPLACE VIEW FACT_AADHAAR_ACTIVITY AS
SELECT 
    e.DATE,
    e.STATE,
    e.DISTRICT,
    e.PINCODE,
    -- Enrollment Metrics
    e.ICL,
    e.AGE_0_5,
    e.AGE_5_17,
    e.AGE_18_GREATER,
    -- Update Metrics (with null handling)
    COALESCE(d.DEMO_UPDATES, 0) AS DEMO_UPDATES,
    COALESCE(b.BIO_UPDATES, 0) AS BIO_UPDATES,
    -- Identity Maintenance Load (IML) = Total Updates
    COALESCE(d.DEMO_UPDATES, 0) + COALESCE(b.BIO_UPDATES, 0) AS IML
FROM V_ENROLLMENT e
LEFT JOIN V_DEMO_UPDATES d 
    ON e.DATE = d.DATE 
    AND e.STATE = d.STATE 
    AND e.DISTRICT = d.DISTRICT
    AND e.PINCODE = d.PINCODE
LEFT JOIN V_BIO_UPDATES b 
    ON e.DATE = b.DATE 
    AND e.STATE = b.STATE 
    AND e.DISTRICT = b.DISTRICT
    AND e.PINCODE = b.PINCODE;

-- =====================================================
-- DATE ENRICHED FACT TABLE
-- =====================================================

CREATE OR REPLACE VIEW FACT_DATE_ENRICHED AS
SELECT 
    *,
    EXTRACT(YEAR FROM DATE) AS YEAR,
    EXTRACT(MONTH FROM DATE) AS MONTH,
    EXTRACT(DAY FROM DATE) AS DAY,
    DAYOFWEEK(DATE) AS DAY_OF_WEEK,
    CASE WHEN DAY(DATE) = 1 THEN 1 ELSE 0 END AS IS_MONTH_START,
    CASE 
        WHEN EXTRACT(MONTH FROM DATE) IN (12, 1, 2) THEN 'Winter'
        WHEN EXTRACT(MONTH FROM DATE) IN (3, 4, 5) THEN 'Spring'
        WHEN EXTRACT(MONTH FROM DATE) IN (6, 7, 8) THEN 'Summer'
        WHEN EXTRACT(MONTH FROM DATE) IN (9, 10, 11) THEN 'Autumn'
    END AS SEASON
FROM FACT_AADHAAR_ACTIVITY;

-- =====================================================
-- DIMENSION TABLES
-- =====================================================

-- State Dimension
CREATE OR REPLACE VIEW DIM_STATE AS
SELECT DISTINCT
    STATE,
    COUNT(DISTINCT DISTRICT) AS TOTAL_DISTRICTS
FROM FACT_AADHAAR_ACTIVITY
GROUP BY STATE
ORDER BY STATE;

-- District Dimension
CREATE OR REPLACE VIEW DIM_DISTRICT AS
SELECT DISTINCT
    STATE,
    DISTRICT,
    COUNT(DISTINCT PINCODE) AS TOTAL_PINCODES
FROM FACT_AADHAAR_ACTIVITY
GROUP BY STATE, DISTRICT
ORDER BY STATE, DISTRICT;

-- Date Dimension
CREATE OR REPLACE VIEW DIM_DATE AS
SELECT DISTINCT
    DATE,
    EXTRACT(YEAR FROM DATE) AS YEAR,
    EXTRACT(MONTH FROM DATE) AS MONTH,
    EXTRACT(DAY FROM DATE) AS DAY,
    DAYOFWEEK(DATE) AS DAY_OF_WEEK,
    CASE WHEN DAY(DATE) = 1 THEN 1 ELSE 0 END AS IS_MONTH_START,
    CASE 
        WHEN EXTRACT(MONTH FROM DATE) IN (12, 1, 2) THEN 'Winter'
        WHEN EXTRACT(MONTH FROM DATE) IN (3, 4, 5) THEN 'Spring'
        WHEN EXTRACT(MONTH FROM DATE) IN (6, 7, 8) THEN 'Summer'
        WHEN EXTRACT(MONTH FROM DATE) IN (9, 10, 11) THEN 'Autumn'
    END AS SEASON
FROM FACT_AADHAAR_ACTIVITY
ORDER BY DATE;

-- =====================================================
-- DATA QUALITY VALIDATION
-- =====================================================

-- Sanity Check: Row counts and distinct keys
SELECT 
    COUNT(*) AS ROWS_IN_FACT,
    COUNT(DISTINCT DATE || STATE || DISTRICT || PINCODE) AS DISTINCT_KEYS,
    COUNT(DISTINCT STATE) AS UNIQUE_STATES,
    COUNT(DISTINCT DISTRICT) AS UNIQUE_DISTRICTS,
    MIN(DATE) AS EARLIEST_DATE,
    MAX(DATE) AS LATEST_DATE
FROM FACT_AADHAAR_ACTIVITY;

-- Check for data completeness by state
SELECT 
    STATE,
    COUNT(*) AS RECORD_COUNT,
    COUNT(DISTINCT DISTRICT) AS DISTRICTS,
    MIN(DATE) AS START_DATE,
    MAX(DATE) AS END_DATE,
    SUM(ICL) AS TOTAL_ENROLLMENTS,
    SUM(IML) AS TOTAL_UPDATES
FROM FACT_AADHAAR_ACTIVITY
GROUP BY STATE
ORDER BY TOTAL_ENROLLMENTS DESC;

-- Identify potential data quality issues
SELECT 
    'Negative ICL' AS issue_type,
    COUNT(*) AS issue_count
FROM FACT_AADHAAR_ACTIVITY
WHERE ICL < 0

UNION ALL

SELECT 
    'Negative IML' AS issue_type,
    COUNT(*) AS issue_count
FROM FACT_AADHAAR_ACTIVITY
WHERE IML < 0

UNION ALL

SELECT 
    'Zero ICL and IML' AS issue_type,
    COUNT(*) AS issue_count
FROM FACT_AADHAAR_ACTIVITY
WHERE ICL = 0 AND IML = 0

UNION ALL

SELECT 
    'Missing State' AS issue_type,
    COUNT(*) AS issue_count
FROM FACT_AADHAAR_ACTIVITY
WHERE STATE IS NULL OR STATE = ''

UNION ALL

SELECT 
    'Missing District' AS issue_type,
    COUNT(*) AS issue_count
FROM FACT_AADHAAR_ACTIVITY
WHERE DISTRICT IS NULL OR DISTRICT = '';

-- =====================================================
-- PERFORMANCE OPTIMIZATION
-- =====================================================

-- Create clustering keys for better query performance (if supported)
-- ALTER TABLE FACT_AADHAAR_ACTIVITY CLUSTER BY (STATE, DISTRICT, DATE);

-- =====================================================
-- COMPLETION MESSAGE
-- =====================================================

SELECT 'Views creation completed successfully!' AS status,
       'Ready for KPI development phase' AS next_step;
