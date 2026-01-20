use database merged_dataset_2;
use schema merged_dataset_2.merged_dataset_2;

show tables;

--------------------------------------------------------STATE CLEANING-------------------------------------------------------------

update FINAL_DEMOGRAPHIC_DATA
set state= 'Andaman and Nicobar Islands'
where state= 'Andaman & Nicobar Islands';

update FINAL_DEMOGRAPHIC_DATA
set state= 'Chhattisgarh'
where state= 'Chhatisgarh';

update final_demographic_data
set state= 'Dadra and Nagar Haveli'
where state= 'Dadra & Nagar Haveli';

update final_demographic_data
set state= 'Daman and Diu'
where state= 'Daman & Diu';

update FINAL_DEMOGRAPHIC_DATA
set state= 'Jammu and Kashmir'
where state= 'Jammu & Kashmir';

update FINAL_DEMOGRAPHIC_DATA
set state= 'Odisha'
where state= 'ODISHA';

update FINAL_DEMOGRAPHIC_DATA
set state= 'Odisha'
where state= 'Orissa';

update FINAL_DEMOGRAPHIC_DATA
set state= 'Pondicherry'
where state= 'Puducherry';

update FINAL_DEMOGRAPHIC_DATA
set state= 'Tamil Nadu'
where state= 'Tamilnadu';

update FINAL_DEMOGRAPHIC_DATA
set state= 'Uttarakhand'
where state= 'Uttaranchal';

update FINAL_DEMOGRAPHIC_DATA
set state= 'West Bengal'
where state= 'WEST BENGAL';

update FINAL_DEMOGRAPHIC_DATA
set state= 'West Bengal'
where state= 'WESTBENGAL';

update FINAL_DEMOGRAPHIC_DATA
set state= 'West Bengal'
where state= 'West  Bengal';

update FINAL_DEMOGRAPHIC_DATA
set state= 'West Bengal'
where state= 'West Bangal';

update FINAL_DEMOGRAPHIC_DATA
set state= 'West Bengal'
where state= 'West bengal';

update FINAL_DEMOGRAPHIC_DATA
set state= 'West Bengal'
where state= 'Westbengal';

update FINAL_DEMOGRAPHIC_DATA
set state= 'West Bengal'
where state= 'west Bengal';

update FINAL_DEMOGRAPHIC_DATA
set state= 'West Bengal'
where state= 'West Bengli';

update FINAL_DEMOGRAPHIC_DATA
set state= 'Andhra Pradesh'
where state= 'andhra pradesh';

update FINAL_DEMOGRAPHIC_DATA
set state= 'Odisha'
where state= 'odisha';

update FINAL_DEMOGRAPHIC_DATA
set state= 'Dadra and Nagar Haveli and Daman and Diu'
where state= 'Dadra and Nagar Haveli';

update FINAL_DEMOGRAPHIC_DATA
set state= 'Dadra and Nagar Haveli and Daman and Diu'
where state= 'Daman and Diu';

---------------------------------------------------------------------CITY CLEANING-------------------------------------------------------

--GUJARAT

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Ahmedabad'
WHERE district IN ('Ahmadabad', 'Ahmedabad ');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Banaskantha'
WHERE district IN ('Banas Kantha');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Dahod'
WHERE district IN ('Dohad');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Panchmahals'
WHERE district IN ('Panch Mahals');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Sabarkantha'
WHERE district IN ('Sabar Kantha');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Surendranagar'
WHERE district IN ('Surendra Nagar');


--ANDAMAN DML

--To ensure no inconsistancy remains in the data renaming 'South Andamans' and 'North and Middle Andaman' to 'Andaman' because there is one district named Andamans which is not an official district but as per the government website Andaman was seperated into these tow districts 

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Nicobars'
WHERE district IN ('Nicobar');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Andamans'
WHERE district IN ('South Andaman','North And Middle Andaman');

--LADAKH DML

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Leh'
WHERE district IN ('Leh (ladakh)');

-- DADRA AND NAGER HAVELI

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Dadra and Nagar Haveli'
WHERE district IN ('Dadra & Nagar Haveli');

--PUDUCHERRY

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Puducherry'
WHERE district IN ('Pondicherry');

------------------------------

-- ANDHRA PRADESH DML

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Anantapur'
WHERE district IN ('Ananthapur', 'Ananthapuramu');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Chittoor'
WHERE district IN ('chittoor');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'NTR'
WHERE district IN ('N. T. R');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Tirupattur'
WHERE district IN ('Tirupathur');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'YSR Kadapa'
WHERE district IN ('Y. S. R');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Jangaon'
WHERE district IN ('Jangoan');


UPDATE FINAL_DEMOGRAPHIC_DATA
SET state= 'Telangana'
WHERE district IN ('Adilabad');


UPDATE FINAL_DEMOGRAPHIC_DATA
SET state= 'Telangana'
WHERE district IN ('Hyderabad');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET state= 'Telangana'
WHERE district IN ('Karimnagar');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET state= 'Telangana'
WHERE district IN ('Khammam');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET state= 'Telangana'
WHERE district IN ('Mahabubnagar');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET state= 'Telangana'
WHERE district IN ('Medak');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'YSR Kadapa'
WHERE district IN ('Cuddapah');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET state= 'Telangana'
WHERE district IN ('Nalgonda');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET state= 'Telangana'
WHERE district IN ('Nalgonda');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Sri Potti Sriramulu Nellore'
WHERE district IN ('Nellore');


UPDATE FINAL_DEMOGRAPHIC_DATA
SET state= 'Telangana'
WHERE district IN ('Nizamabad');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET state= 'Telangana'
WHERE district IN ('Warangal');

--------------------------------

--TELANGANA DML

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Jangaon'
WHERE district IN ('Jangoan');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Karimnagar'
WHERE district IN ('Karim Nagar');


UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Mahabubnagar'
WHERE district IN ('Mahabub Nagar', 'Mahbubnagar');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Medchal-Malkajgiri'
WHERE district IN ('Medchal?malkajgiri', 'Medchal−malkajgiri');


-- Warangal Urban standardisation
UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Warangal Urban'
WHERE district IN ('Warangal (urban)');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Warangal'
WHERE district IN ('Warangal Rural','Warangal Urban');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Yadadri'
WHERE district IN ('Yadadri.');


UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Medchal-Malkajgiri'
WHERE district IN ('Medchal-malkajgiri','Medchalâmalkajgiri');



---------------------------------

--ASSAM DML

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Dima Hasao'
WHERE district IN ('North Cachar Hills');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Sivasagar'
WHERE district IN ('Sibsagar');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Tamulpur'
WHERE district IN ('Tamulpur District');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Sribhumi'
WHERE district IN ('Karimganj');

---------------------------------

--BIHAR DML

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Aurangabad'
WHERE district IN ('Aurangabad(BH)', 'Aurangabad(bh)');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Samastipur'
WHERE district IN ('Samstipur');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Sheikhpura'
WHERE district IN ('Sheikpura');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Munger'
WHERE district IN ('Monghyr');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Paschim Champaran'
WHERE district IN ('Pashchim Champaran');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Purnia'
WHERE district IN ('Purnea');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Kaimur (Bhabua)'
WHERE district IN ('Bhabua');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Purba Champaran'
WHERE district IN ('East Champaran');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Saran'
WHERE district IN ('West Champaran');

------------------------------

--CHANDIGARH DISTRICT

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'S.A.S Nagar'
WHERE district IN ('Mohali');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET state= 'Punjab'
WHERE district IN ('Rupnagar');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET state= 'Punjab'
WHERE district IN ('S.A.S Nagar');

-- PUNJAB DML

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'S.A.S Nagar'
WHERE district IN ('SAS Nagar (Mohali)');


UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Sri Muktsar Sahib'
WHERE district IN ('Muktsar');

-- CHATTISGARH DML

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Dantewada'
WHERE district IN ('Dakshin Bastar Dantewada');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Janjgir-Champa'
WHERE district IN ('Janjgir - Champa', 'Janjgir Champa', 'Janjgir-champa');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Kabirdham'
WHERE district IN ('Kawardha', 'Kabeerdham');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Manendragarh-Chirmiri-Bharatpur'
WHERE district IN ('ManendragarhChirmiriBharatpur', 'Manendragarh–Chirmiri–Bharatpur');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Mohla-Manpur-Ambagarh Chowki'
WHERE district IN ('Mohla-Manpur-Ambagarh Chouki');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Mohalla-Manpur-Ambagarh Chowki'
WHERE district IN ('Mohla-Manpur-Ambagarh Chowki');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Uttar Bastar Kanker'
WHERE district IN ('Kanker');

-- DELHI DML

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'North East Delhi'
WHERE district IN ('North East');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'South West Delhi'
WHERE district IN ('Najafgarh');

-- GOA DML

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'North Goa'
WHERE district IN ('Bardez','Tiswadi','Bicholim');

--HARYANA DML

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Gurugram'
WHERE district IN ('Gurgaon');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Yamunanagar'
WHERE district IN ('Yamuna Nagar');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Nuh'
WHERE district IN ('Mewat');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Nuh'
WHERE district IN ('Akhera');

--HIMACHAL PRADESH

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Lahaul and Spiti'
WHERE district IN ('Lahul & Spiti', 'Lahul and Spiti');

--JAMMU AND KASHMIR DML

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Bandipore'
WHERE district IN ('Bandipur');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Budgam'
WHERE district IN ('Badgam');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Haridwar'
WHERE district IN ('Hardwar');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Poonch'
WHERE district IN ('Punch');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Rajouri'
WHERE district IN ('Rajauri');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Shopian'
WHERE district IN ('Shupiyan');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Udhampur'
WHERE district IN ('udhampur');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET state= 'Ladakh'
WHERE district IN ('Kargil','Leh');

-- JHARKHAND DML

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Bokaro'
WHERE district IN ('Bokaro *');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Garhwa'
WHERE district IN ('Garhwa *');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Hazaribagh'
WHERE district IN ('Hazaribag');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Koderma'
WHERE district IN ('Kodarma');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Pakur'
WHERE district IN ('Pakaur');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Palamu'
WHERE district IN ('Palamau');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Sahibganj'
WHERE district IN ('Sahebganj');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Seraikela-Kharsawan'
WHERE district IN ('Seraikela-kharsawan');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'East Singhbum'
WHERE district IN ('Purbi Singhbhum');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'West Singhbum'
WHERE district IN ('Pashchimi Singhbhum');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'East Singhbum'
WHERE district IN ('East Singhbhum');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'West Singhbum'
WHERE district IN ('West Singhbhum');

--KERELA DML

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Kasaragod'
WHERE district IN ('Kasargod');

-- KARNATAKA DML

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Bagalkot'
WHERE district IN ('Bagalkot *');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Ballari'
WHERE district IN ('Bellary');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Chikkamagaluru'
WHERE district IN ('Chikmagalur','Chickmagalur');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Belagavi'
WHERE district IN ('Belgaum');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Bengaluru'
WHERE district IN ('Bangalore');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Bijapur'
WHERE district IN ('Bijapur(KAR)');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Chamarajanagar'
WHERE district IN ('Chamrajanagar', 'Chamrajnagar','Chamarajanagar *');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Davanagere'
WHERE district IN ('Davangere');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Gadag'
WHERE district IN ('Gadag *');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Hassan'
WHERE district IN ('Hasan');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Haveri'
WHERE district IN ('Haveri *');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Mysuru'
WHERE district IN ('Mysore');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Shivamogga'
WHERE district IN ('Shimoga');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Tumakuru'
WHERE district IN ('Tumkur');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Udupi'
WHERE district IN ('Udupi *');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Yadgir'
WHERE district IN ('yadgir');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Bengaluru Rural'
WHERE district IN ('Bangalore Rural');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Bengaluru Urban'
WHERE district IN ('Bengaluru');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Vijayapura'
WHERE district IN ('Bijapur');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Kalaburagi'
WHERE district IN ('Gulbarga');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Bengaluru South'
WHERE district IN ('Ramanagar');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET state= 'Karnataka'
WHERE district IN ('Vijayapura');

--MADHYA PRADESH

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Khandwa'
WHERE district IN ('East Nimar');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Khargone'
WHERE district IN ('West Nimar');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Mahoba'
WHERE district IN ('Mahoba *');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Narmadapuram'
WHERE district IN ('Hoshangabad');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Narsinghpur'
WHERE district IN ('Narsimhapur');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Harda'
WHERE district IN ('Harda *');

-- MAHARASHTRA DML

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Beed'
WHERE district IN ('Bid');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Thane'
WHERE district IN ('Dist : Thane');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Buldhana'
WHERE district IN ('Buldana');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Dharashiv'
WHERE district IN ('Osmanabad');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Hingoli'
WHERE district IN ('Hingoli *');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Mumbai Suburban'
WHERE district IN ('Mumbai( Sub Urban )');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Nandurbar'
WHERE district IN ('Nandurbar *');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Washim'
WHERE district IN ('Washim *');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Ahmednagar'
WHERE district IN ('Ahmed Nagar', 'Ahmadnagar', 'Ahilyanagar');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Chhatrapati Sambhajinagar'
WHERE district IN ('Chatrapati Sambhaji Nagar');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Gondiya'
WHERE district IN ('Gondia');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Gondiya'
WHERE district IN ('Gondiya *');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Chhatrapati Sambhajinagar'
WHERE district IN ('Aurangabad');

--there are 3 districts in dataset associated with mumbai 
-- Mumbai, Mumbai City, Mumbai Subarban
-- since there is no source of what is 'Mumbai' so assuming it to be complete district so have renamed Mumbai City and Mumbai Subarban to Mumbai

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Mumbai'
WHERE district IN ('Mumbai City','Mumbai Suburban');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Raigad'
WHERE district IN ('Raigarh(MH)');

update final_demographic_data
set district='Raigad'
where district in ('Raigarh');


--MANIPUR DML

--there are 4 such districts named:-
--Kamjong,Kangpokpi,Noney,Tengnoupal
-- which are not in excel sheet but are 
--there in website.but not included them

--MEGHALAYA DISTRICT

--There is one district named Jaintia hills in excel which doesn't exist in the website.but in web it is mentioned that jaintia hills got seperated into East Jaintia hills and west Jaintia hills
--so replacing east and west jaintia hills with jaintia hills


UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Jaintia Hills'
WHERE district IN ('East Jaintia Hills','West Jaintia Hills');

--MIZORAM

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Mamit'
WHERE district IN ('Mammit');

--ODISHA DISTRICT

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Angul'
WHERE district IN ('ANGUL', 'ANUGUL', 'Anugul','Anugul  *','Anugal');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Balangir'
WHERE district IN ('BALANGIR');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Baleshwar'
WHERE district IN ('Baleswar');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Boudh'
WHERE district IN ('Baudh');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Jagatsinghpur'
WHERE district IN ('Jagatsinghapur');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Jajpur'
WHERE district IN ('JAJPUR', 'Jajapur','Jajapur  *');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Jajpur'
WHERE district IN ('jajpur');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Khordha'
WHERE district IN ('Khorda', 'Khordha  *','Balianta');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Nayagarh'
WHERE district IN ('NAYAGARH');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Nuapada'
WHERE district IN ('NUAPADA');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Sundargarh'
WHERE district IN ('Sundergarh');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Sonapur'
WHERE district IN ('Subarnapur');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Bhadrak'
WHERE district IN ('Bhadrak(R)');

--PUNJAB

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Ferozepur'
WHERE district IN ('Firozpur');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'SAS Nagar (Mohali)'
WHERE district IN ('S.A.S Nagar(Mohali)');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Shaheed Bhagat Singh Nagar'
WHERE district IN ('Nawanshahr');

--PONDICHERRY DISTRICT

UPDATE FINAL_DEMOGRAPHIC_DATA
SET state= 'Tamil Nadu'
WHERE district IN ('Viluppuram');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET state= 'Tamil Nadu'
WHERE district IN ('Cuddalore');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Puducherry'
WHERE district IN ('Yanam');

--SIKKIM DML

--there are officially 6 districts in sikkim -Gangtok,Gyalshing, Mangan, Namchi,Pakyong,Soreng

--and in dataset there are 8 districts
--East,East Sikkim,Namchi,NOrth,North Sikkim,South,South Sikkim,West,West Sikkim

--So replacing as per the sources from web:-

--North and North Sikkim-> Mangan
--South and South Sikkim-> Namchi
--East and East Sikkim-> Gangtok
--Keeping West sikkim(West) as it is because 
--it was seperated into soreng and gyalshing

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Mangan'
WHERE district IN ('North','North Sikkim');


UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Namchi'
WHERE district IN ('South','South Sikkim');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Gangtok'
WHERE district IN ('East','East Sikkim');


UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'West Sikkim'
WHERE district IN ('West');

select distinct district from FINAL_DEMOGRAPHIC_DATA where state='Sikkim' order by district;


-- TAMIL NADU DML

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Kanyakumari'
WHERE district IN ('Kanniyakumari');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Thoothukkudi'
WHERE district IN ('Tuticorin');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Viluppuram'
WHERE district IN ('Villupuram');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Thiruvarur'
WHERE district IN ('Tiruvarur');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Thiruvallur'
WHERE district IN ('Tiruvallur');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Kancheepuram'
WHERE district IN ('Kanchipuram');

--TRIPURA 

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Dhalai'
WHERE district IN ('Dhalai  *');


--RAJASTHAN DML

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Chittorgarh'
WHERE district IN ('Chittaurgarh');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Deeg'
WHERE district IN ('Deeg ');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Deeg'
WHERE district IN ('Deeg ', 'Deeg  ');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Dholpur'
WHERE district IN ('Dhaulpur');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Jalore'
WHERE district IN ('Jalor');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Jhunjhunu'
WHERE district IN ('Jhunjhunun');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Deeg'
WHERE district IN ('Deeg');

-- UP DML

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Amroha'
WHERE district IN ('Jyotiba Phule Nagar','Jyotiba Phule Nagar *');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Auraiya'
WHERE district IN ('Auraiya *');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Ayodhya'
WHERE district IN ('Faizabad');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Barabanki'
WHERE district IN ('Bara Banki');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Baghpat'
WHERE district IN ('Bagpat','Baghpat *');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Bulandshahr'
WHERE district IN ('Bulandshahar');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Gautam Buddha Nagar'
WHERE district IN ('Gautam Buddha Nagar *');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Kushinagar'
WHERE district IN ('Kushinagar *');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Maharajganj'
WHERE district IN ('Mahrajganj');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Raebareli'
WHERE district IN ('Rae Bareli');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Chandauli'
WHERE district IN ('Chandauli *');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Sant Ravidas Nagar Bhadohi'
WHERE district IN ('Sant Ravidas Nagar');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Prayagraj'
WHERE district IN ('Allahabad');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Bhadohi'
WHERE district IN ('Sant Ravidas Nagar Bhadohi');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Chitrakoot'
WHERE district IN ('Chitrakoot *');

--UTTARAKHAND DML

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Haridwar'
WHERE district IN ('Hardwar');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Pauri Garhwal'
WHERE district IN ('Garhwal');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Udham Singh Nagar'
WHERE district IN ('Udham Singh Nagar *');

--WEST BENGAL DML

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Bardhaman'
WHERE district IN ('Barddhaman', 'Burdwan');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Cooch Behar'
WHERE district IN ('Koch Bihar');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Darjeeling'
WHERE district IN ('Darjiling');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Hooghly'
WHERE district IN ('hooghly');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Hooghly'
WHERE district IN ('HOOGHLY', 'Hooghiy', 'Hugli');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Howrah'
WHERE district IN ('HOWRAH', 'Hawrah', 'Haora');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Kolkata'
WHERE district IN ('KOLKATA');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Malda'
WHERE district IN ('MALDA', 'Maldah');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Nadia'
WHERE district IN ('NADIA','nadia');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'North 24 Parganas'
WHERE district IN ('North Twenty Four Parganas','Naihati Anandabazar');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'Purulia'
WHERE district IN ('Puruliya');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'South 24 Parganas'
WHERE district IN (
    'South 24 Pargana',
    'South 24 pargana',
    'South 24 parganas',
    'South Twenty Four Parganas',
    'South  Twenty Four Parganas'
);

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'West Medinipur'
WHERE district IN ('West Midnapore');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'East Midnapore'
WHERE district IN ('East midnapore', 'east midnapore');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district = 'East Midnapore'
WHERE district IN ('East Midnapur');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Howrah'
WHERE district IN ('Bally Jagachha','Domjur');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Purba Medinipur'
WHERE district IN ('East Midnapore');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Paschim Medinipur'
WHERE district IN ('Medinipur');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Uttar Dinajpur'
WHERE district IN ('North Dinajpur');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'North 24 Parganas'
WHERE district IN ('South DumDum(M)');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Paschim Medinipur'
WHERE district IN ('West Medinipur');

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Dakshin Dinajpur'
WHERE district IN ('South Dinajpur');

--there is one district named Bardhaman in dataset which got seperated into Paschim Bardhaman and Purba Bardhaman.
--so replacing both by Bardhaman

UPDATE FINAL_DEMOGRAPHIC_DATA
SET district= 'Bardhaman'
WHERE district IN ('Paschim Bardhaman','Purba Bardhaman');

------------------------------------------------------------------------------------------------------

--CUSTOMIZED STATEMENTS

select state,count(distinct district) from final_demographic_data group by state order by state;

------------------------cleaning 

select * from final_demographic_data where state='100000';

select * from final_demographic_data where state='BALANAGAR';

select * from final_demographic_data where state='Darbhanga';

select * from final_demographic_data where state='Nagpur';

UPDATE final_demographic_data
SET state = 'Bihar',
    district = 'Darbhanga'
WHERE district IN ('Near University Thana');

UPDATE final_demographic_data
SET state = 'Rajasthan',
    district = 'Jaipur'
WHERE district IN ('Near meera hospital');

UPDATE final_demographic_data
SET state = 'Telangana',
    district = 'Medchal-Malkajgiri'
WHERE state IN ('BALANAGAR');

UPDATE final_demographic_data
SET state = 'Andhra Pradesh',
    district = 'Annamayya'
WHERE state IN ('Madanapalle');

UPDATE final_demographic_data
SET state = 'Maharashtra',
    district = 'Nagpur'
WHERE state IN ('Nagpur');

UPDATE final_demographic_data
SET state = 'Karnataka',
    district = 'Bengaluru Urban'
WHERE state IN ('Puttenahalli');

UPDATE final_demographic_data
SET state = 'Tamil Nadu',
    district = 'Chennai'
WHERE state IN ('Raja Annamalai Puram');


DELETE FROM final_demographic_data WHERE state = '100000';

----------------------------------

select distinct district from final_demographic_data where state='Andhra Pradesh' order by district;

select distinct district from final_demographic_data where state='Manipur' order by district;

select distinct district from final_bio_data where state='Manipur' order by district;

select distinct district from final_demographic_data where state='Jharkhand' order by district;

select distinct district from final_demographic_data where state='Goa' order by district;

select distinct district from final_demographic_data where state='Karnataka' order by district;

select distinct district from final_demographic_data where state='Maharashtra' order by district;

select distinct district from final_demographic_data where state='Odisha' order by district;

select distinct district from final_demographic_data where state='Punjab' order by district;


select distinct district from final_demographic_data where state='Telangana' order by district;

select distinct district from final_demographic_data where state='Uttar Pradesh' order by district;

select distinct district from final_demographic_data where state='Uttarakhand' order by district;

select distinct district from final_demographic_data where state='West Bengal' order by district;


select * from final_demographic_data where state='Madanapalle';

select * from final_demographic_data where state='Puttenahalli';

select * from final_demographic_data where state='Jaipur';

select * from final_demographic_data where state='West Bengli';

select * from final_demographic_data where state='Raja Annamalai Puram';

update final_demographic_data
set district='Rangareddy'
where district in ('rangareddi','Rangareddi','K.V.Rangareddy','K.v. Rangareddy');

update final_demographic_data
set state='Telangana'
where district in ('Rangareddy');
