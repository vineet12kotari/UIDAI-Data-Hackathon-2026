-- =====================================================
-- UIDAI DATA HACKATHON 2026 - DATA INGESTION SCRIPT
-- Project: Aadhaar as a Lifecycle-Driven Identity Infrastructure
-- Purpose: Database setup and raw data loading from CSV files
-- =====================================================

-- Database & Schema Setup
CREATE DATABASE IF NOT EXISTS merged_dataset_2;
CREATE SCHEMA IF NOT EXISTS merged_dataset_2;
USE DATABASE merged_dataset_2;
USE SCHEMA merged_dataset_2;

-- =====================================================
-- BIOMETRIC DATA INGESTION
-- =====================================================

-- CSV File Format Configuration
CREATE OR REPLACE FILE FORMAT bio_csv_format
TYPE = 'CSV'
FIELD_OPTIONALLY_ENCLOSED_BY = '"'
SKIP_HEADER = 1
NULL_IF = ('', 'NULL', 'null');

-- Internal Stage for Biometric Data
CREATE OR REPLACE STAGE bio_csv_stage
FILE_FORMAT = bio_csv_format;

-- Raw Biometric Data Table
CREATE OR REPLACE TABLE raw_bio_data (
    date_str STRING,
    state STRING,
    district STRING,
    pincode NUMBER,
    bio_age_5_17 NUMBER,
    bio_age_17_ NUMBER
);

-- Load Biometric CSV Files
COPY INTO raw_bio_data
FROM @bio_csv_stage
FILE_FORMAT = (TYPE = 'CSV')
ON_ERROR = 'CONTINUE';

-- Create Final Biometric Data Table with Date Conversion
CREATE OR REPLACE TABLE final_bio_data AS
SELECT
    TO_DATE(date_str, 'DD-MM-YYYY') AS date,
    state,
    district,
    pincode,
    bio_age_5_17,
    bio_age_17_
FROM raw_bio_data
WHERE TRY_TO_DATE(date_str, 'DD-MM-YYYY') IS NOT NULL;

-- Data Quality Check
SELECT COUNT(*) AS total_bio_records FROM final_bio_data;
SELECT * FROM final_bio_data LIMIT 10;

-- =====================================================
-- ENROLLMENT DATA INGESTION
-- =====================================================

-- Internal Stage for Enrollment Data
CREATE OR REPLACE STAGE bio_csv_stage_1
FILE_FORMAT = bio_csv_format;

-- Raw Enrollment Data Table
CREATE OR REPLACE TABLE raw_bio_data_1 (
    date_str STRING,
    state STRING,
    district STRING,
    pincode NUMBER,
    age_0_5 NUMBER,
    age_5_17 NUMBER,
    age_18_greater NUMBER
);

-- Load Enrollment CSV Files
COPY INTO raw_bio_data_1
FROM @bio_csv_stage_1
FILE_FORMAT = (TYPE = 'CSV')
ON_ERROR = 'CONTINUE';

-- Create Final Enrollment Data Table with Date Conversion
CREATE OR REPLACE TABLE final_enrollement_data AS
SELECT
    TO_DATE(date_str, 'DD-MM-YYYY') AS date,
    state,
    district,
    pincode,
    age_0_5,
    age_5_17,
    age_18_greater
FROM raw_bio_data_1
WHERE TRY_TO_DATE(date_str, 'DD-MM-YYYY') IS NOT NULL;

-- Data Quality Check
SELECT COUNT(*) AS total_enrollment_records FROM final_enrollement_data;
SELECT * FROM final_enrollement_data LIMIT 10;

-- =====================================================
-- DEMOGRAPHIC DATA INGESTION
-- =====================================================

-- Internal Stage for Demographic Data
CREATE OR REPLACE STAGE bio_csv_stage_2
FILE_FORMAT = bio_csv_format;

-- Raw Demographic Data Table
CREATE OR REPLACE TABLE raw_bio_data_2 (
    date_str STRING,
    state STRING,
    district STRING,
    pincode NUMBER,
    demo_age_5_17 NUMBER,
    demo_age_17_ NUMBER
);

-- Load Demographic CSV Files
COPY INTO raw_bio_data_2
FROM @bio_csv_stage_2
FILE_FORMAT = (TYPE = 'CSV')
ON_ERROR = 'CONTINUE';

-- Create Final Demographic Data Table with Date Conversion
CREATE OR REPLACE TABLE final_demographic_data AS
SELECT
    TO_DATE(date_str, 'DD-MM-YYYY') AS date,
    state,
    district,
    pincode,
    demo_age_5_17,
    demo_age_17_
FROM raw_bio_data_2
WHERE TRY_TO_DATE(date_str, 'DD-MM-YYYY') IS NOT NULL;

-- Data Quality Check
SELECT COUNT(*) AS total_demographic_records FROM final_demographic_data;
SELECT * FROM final_demographic_data LIMIT 10;

-- =====================================================
-- DATA VALIDATION & SUMMARY
-- =====================================================

-- Cross-dataset validation for specific pincode
SELECT 'Biometric' AS dataset, COUNT(*) AS records 
FROM final_bio_data WHERE pincode = 793121
UNION ALL
SELECT 'Enrollment' AS dataset, COUNT(*) AS records 
FROM final_enrollement_data WHERE pincode = 793121
UNION ALL
SELECT 'Demographic' AS dataset, COUNT(*) AS records 
FROM final_demographic_data WHERE pincode = 793121;

-- State distribution across datasets
SELECT DISTINCT state FROM final_bio_data ORDER BY state;
SELECT DISTINCT state FROM final_enrollement_data ORDER BY state;
SELECT DISTINCT state FROM final_demographic_data ORDER BY state;

-- Summary Statistics
SELECT 
    'BIOMETRIC' AS dataset,
    COUNT(*) AS total_records,
    COUNT(DISTINCT state) AS unique_states,
    COUNT(DISTINCT district) AS unique_districts,
    MIN(date) AS earliest_date,
    MAX(date) AS latest_date
FROM final_bio_data

UNION ALL

SELECT 
    'ENROLLMENT' AS dataset,
    COUNT(*) AS total_records,
    COUNT(DISTINCT state) AS unique_states,
    COUNT(DISTINCT district) AS unique_districts,
    MIN(date) AS earliest_date,
    MAX(date) AS latest_date
FROM final_enrollement_data

UNION ALL

SELECT 
    'DEMOGRAPHIC' AS dataset,
    COUNT(*) AS total_records,
    COUNT(DISTINCT state) AS unique_states,
    COUNT(DISTINCT district) AS unique_districts,
    MIN(date) AS earliest_date,
    MAX(date) AS latest_date
FROM final_demographic_data;

-- =====================================================
-- COMPLETION MESSAGE
-- =====================================================

SELECT 'Data ingestion completed successfully!' AS status,
       'Ready for data cleaning phase' AS next_step;
