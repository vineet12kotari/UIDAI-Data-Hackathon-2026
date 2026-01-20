

--------------------------------------------------------STATE CLEANING-----------------------------------------------------------

update final_bio_data
set state= 'Andaman and Nicobar Islands'
where state= 'Andaman & Nicobar Islands';

update final_bio_data
set state= 'Chhattisgarh'
where state= 'Chhatisgarh';

update final_bio_data
set state= 'Dadra and Nagar Haveli'
where state= 'Dadra & Nagar Haveli';

update final_bio_data
set state= 'Daman and Diu'
where state= 'Daman & Diu';

update final_bio_data
set state= 'Jammu and Kashmir'
where state= 'Jammu & Kashmir';

update final_bio_data
set state= 'Odisha'
where state= 'ODISHA';

update final_bio_data
set state= 'Odisha'
where state= 'Orissa';

update final_bio_data
set state= 'Pondicherry'
where state= 'Puducherry';

update final_bio_data
set state= 'Tamil Nadu'
where state= 'Tamilnadu';

update final_bio_data
set state= 'Uttarakhand'
where state= 'Uttaranchal';

update final_bio_data
set state= 'West Bengal'
where state= 'WEST BENGAL';

update final_bio_data
set state= 'West Bengal'
where state= 'WESTBENGAL';

update final_bio_data
set state= 'West Bengal'
where state= 'West  Bengal';

update final_bio_data
set state= 'West Bengal'
where state= 'West Bangal';

update final_bio_data
set state= 'West Bengal'
where state= 'West bengal';

update final_bio_data
set state= 'West Bengal'
where state= 'Westbengal';

update final_bio_data
set state= 'West Bengal'
where state= 'west Bengal';

update final_bio_data
set state= 'Andhra Pradesh'
where state= 'andhra pradesh';

update final_bio_data
set state= 'Odisha'
where state= 'odisha';

update final_bio_data
set state= 'Dadra and Nagar Haveli and Daman and Diu'
where state= 'Dadra and Nagar Haveli';

update final_bio_data
set state= 'Dadra and Nagar Haveli and Daman and Diu'
where state= 'Daman and Diu';

---------------------------------------------------------------------CITY CLEANING-----------------------------------------------

--GUJARAT

UPDATE final_bio_data
SET district = 'Ahmedabad'
WHERE district IN ('Ahmadabad', 'Ahmedabad ');

UPDATE final_bio_data
SET district = 'Banaskantha'
WHERE district IN ('Banas Kantha');

UPDATE final_bio_data
SET district = 'Dahod'
WHERE district IN ('Dohad');

UPDATE final_bio_data
SET district = 'Panchmahals'
WHERE district IN ('Panch Mahals');

UPDATE final_bio_data
SET district = 'Sabarkantha'
WHERE district IN ('Sabar Kantha');

UPDATE final_bio_data
SET district = 'Surendranagar'
WHERE district IN ('Surendra Nagar');


--ANDAMAN DML

--To ensure no inconsistancy remains in the data renaming 'South Andamans' and 'North and Middle Andaman' to 'Andaman' because there is one district named Andamans which is not an official district but as per the government website Andaman was seperated into these tow districts 

UPDATE final_bio_data
SET district = 'Nicobars'
WHERE district IN ('Nicobar');

UPDATE final_bio_data
SET district = 'Andamans'
WHERE district IN ('South Andaman','North And Middle Andaman');

--LADAKH DML

UPDATE final_bio_data
SET district = 'Leh'
WHERE district IN ('Leh (ladakh)');

-- DADRA AND NAGER HAVELI

UPDATE final_bio_data
SET district = 'Dadra and Nagar Haveli'
WHERE district IN ('Dadra & Nagar Haveli');

--PUDUCHERRY

UPDATE final_bio_data
SET district = 'Puducherry'
WHERE district IN ('Pondicherry');

------------------------------

-- ANDHRA PRADESH DML

UPDATE final_bio_data
SET district = 'Anantapur'
WHERE district IN ('Ananthapur', 'Ananthapuramu');

UPDATE final_bio_data
SET district = 'Chittoor'
WHERE district IN ('chittoor');

UPDATE final_bio_data
SET district = 'NTR'
WHERE district IN ('N. T. R');

UPDATE final_bio_data
SET district = 'Tirupattur'
WHERE district IN ('Tirupathur');

UPDATE final_bio_data
SET district = 'YSR Kadapa'
WHERE district IN ('Y. S. R');

UPDATE final_bio_data
SET district = 'Jangaon'
WHERE district IN ('Jangoan');


UPDATE final_bio_data
SET state= 'Telangana'
WHERE district IN ('Adilabad');


UPDATE final_bio_data
SET state= 'Telangana'
WHERE district IN ('Hyderabad');

UPDATE final_bio_data
SET state= 'Telangana'
WHERE district IN ('Karimnagar');

UPDATE final_bio_data
SET state= 'Telangana'
WHERE district IN ('Khammam');

UPDATE final_bio_data
SET state= 'Telangana'
WHERE district IN ('Mahabubnagar');

UPDATE final_bio_data
SET state= 'Telangana'
WHERE district IN ('Medak');

UPDATE final_bio_data
SET district = 'YSR Kadapa'
WHERE district IN ('Cuddapah');

UPDATE final_bio_data
SET state= 'Telangana'
WHERE district IN ('Nalgonda');

UPDATE final_bio_data
SET state= 'Telangana'
WHERE district IN ('Nalgonda');

UPDATE final_bio_data
SET district = 'Sri Potti Sriramulu Nellore'
WHERE district IN ('Nellore');


UPDATE final_bio_data
SET state= 'Telangana'
WHERE district IN ('Nizamabad');

UPDATE final_bio_data
SET state= 'Telangana'
WHERE district IN ('Warangal');

--------------------------------

--TELANGANA DML

UPDATE final_bio_data
SET district = 'Jangaon'
WHERE district IN ('Jangoan');

UPDATE final_bio_data
SET district = 'Karimnagar'
WHERE district IN ('Karim Nagar');


UPDATE final_bio_data
SET district = 'Mahabubnagar'
WHERE district IN ('Mahabub Nagar', 'Mahbubnagar');

UPDATE final_bio_data
SET district = 'Medchal-Malkajgiri'
WHERE district IN ('Medchal?malkajgiri', 'Medchal−malkajgiri');


-- Warangal Urban standardisation
UPDATE final_bio_data
SET district = 'Warangal Urban'
WHERE district IN ('Warangal (urban)');

UPDATE final_bio_data
SET district= 'Warangal'
WHERE district IN ('Warangal Rural','Warangal Urban');

UPDATE final_bio_data
SET district = 'Yadadri'
WHERE district IN ('Yadadri.');


UPDATE final_bio_data
SET district= 'Medchal-Malkajgiri'
WHERE district IN ('Medchal-malkajgiri');



---------------------------------

--ASSAM DML

UPDATE final_bio_data
SET district = 'Dima Hasao'
WHERE district IN ('North Cachar Hills');

UPDATE final_bio_data
SET district = 'Sivasagar'
WHERE district IN ('Sibsagar');

UPDATE final_bio_data
SET district = 'Tamulpur'
WHERE district IN ('Tamulpur District');

UPDATE final_bio_data
SET district= 'Sribhumi'
WHERE district IN ('Karimganj');

---------------------------------

--BIHAR DML

UPDATE final_bio_data
SET district = 'Aurangabad'
WHERE district IN ('Aurangabad(BH)', 'Aurangabad(bh)');

UPDATE final_bio_data
SET district = 'Samastipur'
WHERE district IN ('Samstipur');

UPDATE final_bio_data
SET district = 'Sheikhpura'
WHERE district IN ('Sheikpura');

UPDATE final_bio_data
SET district = 'Munger'
WHERE district IN ('Monghyr');

UPDATE final_bio_data
SET district = 'Paschim Champaran'
WHERE district IN ('Pashchim Champaran');

UPDATE final_bio_data
SET district = 'Purnia'
WHERE district IN ('Purnea');

UPDATE final_bio_data
SET district= 'Kaimur (Bhabua)'
WHERE district IN ('Bhabua');

UPDATE final_bio_data
SET district= 'Purba Champaran'
WHERE district IN ('East Champaran');

UPDATE final_bio_data
SET district= 'Saran'
WHERE district IN ('West Champaran');

------------------------------

--CHANDIGARH DISTRICT

UPDATE final_bio_data
SET district= 'S.A.S Nagar'
WHERE district IN ('Mohali');

UPDATE final_bio_data
SET state= 'Punjab'
WHERE district IN ('Rupnagar');

UPDATE final_bio_data
SET state= 'Punjab'
WHERE district IN ('S.A.S Nagar');

-- PUNJAB DML

UPDATE final_bio_data
SET district= 'S.A.S Nagar'
WHERE district IN ('SAS Nagar (Mohali)');

UPDATE final_bio_data
SET district= 'Sri Muktsar Sahib'
WHERE district IN ('Muktsar');

-- CHATTISGARH DML

UPDATE final_bio_data
SET district = 'Dantewada'
WHERE district IN ('Dakshin Bastar Dantewada');

UPDATE final_bio_data
SET district = 'Janjgir-Champa'
WHERE district IN ('Janjgir - Champa', 'Janjgir Champa', 'Janjgir-champa');

UPDATE final_bio_data
SET district = 'Kabirdham'
WHERE district IN ('Kawardha', 'Kabeerdham');

UPDATE final_bio_data
SET district = 'Manendragarh-Chirmiri-Bharatpur'
WHERE district IN ('ManendragarhChirmiriBharatpur', 'Manendragarh–Chirmiri–Bharatpur');

UPDATE final_bio_data
SET district = 'Mohla-Manpur-Ambagarh Chowki'
WHERE district IN ('Mohla-Manpur-Ambagarh Chouki');

UPDATE final_bio_data
SET district= 'Mohalla-Manpur-Ambagarh Chowki'
WHERE district IN ('Mohla-Manpur-Ambagarh Chowki');

UPDATE final_bio_data
SET district= 'Uttar Bastar Kanker'
WHERE district IN ('Kanker');

-- DELHI DML

UPDATE final_bio_data
SET district= 'North East Delhi'
WHERE district IN ('North East');

UPDATE final_bio_data
SET district= 'South West Delhi'
WHERE district IN ('Najafgarh');

-- GOA DML

UPDATE final_bio_data
SET district= 'North Goa'
WHERE district IN ('Bardez','Tiswadi');

--HARYANA DML

UPDATE final_bio_data
SET district = 'Gurugram'
WHERE district IN ('Gurgaon');

UPDATE final_bio_data
SET district = 'Yamunanagar'
WHERE district IN ('Yamuna Nagar');

UPDATE final_bio_data
SET district = 'Nuh'
WHERE district IN ('Mewat');

UPDATE final_bio_data
SET district= 'Nuh'
WHERE district IN ('Akhera');

--HIMACHAL PRADESH

UPDATE final_bio_data
SET district = 'Lahaul and Spiti'
WHERE district IN ('Lahul & Spiti', 'Lahul and Spiti');

--JAMMU AND KASHMIR DML

UPDATE final_bio_data
SET district = 'Bandipore'
WHERE district IN ('Bandipur');

UPDATE final_bio_data
SET district = 'Budgam'
WHERE district IN ('Badgam');

UPDATE final_bio_data
SET district = 'Haridwar'
WHERE district IN ('Hardwar');

UPDATE final_bio_data
SET district = 'Poonch'
WHERE district IN ('Punch');

UPDATE final_bio_data
SET district = 'Rajouri'
WHERE district IN ('Rajauri');

UPDATE final_bio_data
SET district = 'Shopian'
WHERE district IN ('Shupiyan');

UPDATE final_bio_data
SET district = 'Udhampur'
WHERE district IN ('udhampur');

UPDATE final_bio_data
SET state= 'Ladakh'
WHERE district IN ('Kargil','Leh');

-- JHARKHAND DML

UPDATE final_bio_data
SET district = 'Bokaro'
WHERE district IN ('Bokaro *');

UPDATE final_bio_data
SET district = 'Garhwa'
WHERE district IN ('Garhwa *');

UPDATE final_bio_data
SET district = 'Hazaribagh'
WHERE district IN ('Hazaribag');

UPDATE final_bio_data
SET district = 'Koderma'
WHERE district IN ('Kodarma');

UPDATE final_bio_data
SET district = 'Pakur'
WHERE district IN ('Pakaur');

UPDATE final_bio_data
SET district = 'Palamu'
WHERE district IN ('Palamau');

UPDATE final_bio_data
SET district = 'Sahibganj'
WHERE district IN ('Sahebganj');

UPDATE final_bio_data
SET district = 'Seraikela-Kharsawan'
WHERE district IN ('Seraikela-kharsawan');

UPDATE final_bio_data
SET district= 'East Singhbum'
WHERE district IN ('East Singhbhum');

UPDATE final_bio_data
SET district= 'West Singhbum'
WHERE district IN ('West Singhbhum');

--KERELA DML

UPDATE final_bio_data
SET district = 'Kasaragod'
WHERE district IN ('Kasargod');

-- KARNATAKA DML

UPDATE final_bio_data
SET district = 'Bagalkot'
WHERE district IN ('Bagalkot *');

UPDATE final_bio_data
SET district = 'Ballari'
WHERE district IN ('Bellary');

UPDATE final_bio_data
SET district = 'Chikkamagaluru'
WHERE district IN ('Chikmagalur');

UPDATE final_bio_data
SET district = 'Belagavi'
WHERE district IN ('Belgaum');

UPDATE final_bio_data
SET district = 'Bengaluru'
WHERE district IN ('Bangalore');

UPDATE final_bio_data
SET district = 'Bijapur'
WHERE district IN ('Bijapur(KAR)');

UPDATE final_bio_data
SET district = 'Chamarajanagar'
WHERE district IN ('Chamrajanagar', 'Chamrajnagar');

UPDATE final_bio_data
SET district = 'Davanagere'
WHERE district IN ('Davangere');

UPDATE final_bio_data
SET district = 'Gadag'
WHERE district IN ('Gadag *');

UPDATE final_bio_data
SET district = 'Hassan'
WHERE district IN ('Hasan');

UPDATE final_bio_data
SET district = 'Haveri'
WHERE district IN ('Haveri *');

UPDATE final_bio_data
SET district = 'Mysuru'
WHERE district IN ('Mysore');

UPDATE final_bio_data
SET district = 'Shivamogga'
WHERE district IN ('Shimoga');

UPDATE final_bio_data
SET district = 'Tumakuru'
WHERE district IN ('Tumkur');

UPDATE final_bio_data
SET district = 'Udupi'
WHERE district IN ('Udupi *');

UPDATE final_bio_data
SET district = 'Yadgir'
WHERE district IN ('yadgir');

UPDATE final_bio_data
SET district= 'Bengaluru Rural'
WHERE district IN ('Bangalore Rural');

UPDATE final_bio_data
SET district= 'Bengaluru Urban'
WHERE district IN ('Bengaluru');

UPDATE final_bio_data
SET district= 'Vijayapura'
WHERE district IN ('Bijapur');

UPDATE final_bio_data
SET district= 'Gulbarga'
WHERE district IN ('Kalaburagi');

UPDATE final_bio_data
SET district= 'Bengaluru South'
WHERE district IN ('Ramanagar');

--MADHYA PRADESH

UPDATE final_bio_data
SET district = 'Khandwa'
WHERE district IN ('East Nimar');

UPDATE final_bio_data
SET district = 'Khargone'
WHERE district IN ('West Nimar');

UPDATE final_bio_data
SET district = 'Mahoba'
WHERE district IN ('Mahoba *');

UPDATE final_bio_data
SET district = 'Narmadapuram'
WHERE district IN ('Hoshangabad');

UPDATE final_bio_data
SET district = 'Narsinghpur'
WHERE district IN ('Narsimhapur');

UPDATE final_bio_data
SET district = 'Harda'
WHERE district IN ('Harda *');

-- MAHARASHTRA DML

UPDATE final_bio_data
SET district = 'Beed'
WHERE district IN ('Bid');

UPDATE final_bio_data
SET district = 'Buldhana'
WHERE district IN ('Buldana');

UPDATE final_bio_data
SET district = 'Dharashiv'
WHERE district IN ('Osmanabad');

UPDATE final_bio_data
SET district = 'Hingoli'
WHERE district IN ('Hingoli *');

UPDATE final_bio_data
SET district = 'Mumbai Suburban'
WHERE district IN ('Mumbai( Sub Urban )');

UPDATE final_bio_data
SET district = 'Nandurbar'
WHERE district IN ('Nandurbar *');

UPDATE final_bio_data
SET district = 'Washim'
WHERE district IN ('Washim *');

UPDATE final_bio_data
SET district = 'Ahmednagar'
WHERE district IN ('Ahmed Nagar', 'Ahmadnagar', 'Ahilyanagar');

UPDATE final_bio_data
SET district = 'Chhatrapati Sambhajinagar'
WHERE district IN ('Chatrapati Sambhaji Nagar');

UPDATE final_bio_data
SET district = 'Gondiya'
WHERE district IN ('Gondia');

UPDATE final_bio_data
SET district = 'Gondiya'
WHERE district IN ('Gondiya *');

UPDATE final_bio_data
SET district= 'Chhatrapati Sambhajinagar'
WHERE district IN ('Aurangabad');

--there are 3 districts in dataset associated with mumbai 
-- Mumbai, Mumbai City, Mumbai Subarban
-- since there is no source of what is 'Mumbai' so assuming it to be complete district so have renamed Mumbai City and Mumbai Subarban to Mumbai

UPDATE final_bio_data
SET district= 'Mumbai'
WHERE district IN ('Mumbai City','Mumbai Suburban');

UPDATE final_bio_data
SET district= 'Raigad'
WHERE district IN ('Raigarh(MH)');


--MANIPUR DML

--there are 4 such districts named:-
--Kamjong,Kangpokpi,Noney,Tengnoupal
-- which are not in excel sheet but are 
--there in website.but not included them

--MEGHALAYA DISTRICT

--There is one district named Jaintia hills in excel which doesn't exist in the website.but in web it is mentioned that jaintia hills got seperated into East Jaintia hills and west Jaintia hills
--so replacing east and west jaintia hills with jaintia hills


UPDATE final_bio_data
SET district= 'Jaintia Hills'
WHERE district IN ('East Jaintia Hills','West Jaintia Hills');

--MIZORAM

UPDATE final_bio_data
SET district = 'Mamit'
WHERE district IN ('Mammit');

--ODISHA DISTRICT

UPDATE final_bio_data
SET district = 'Angul'
WHERE district IN ('ANGUL', 'ANUGUL', 'Anugul','Anugul  *','Anugal');

UPDATE final_bio_data
SET district = 'Balangir'
WHERE district IN ('BALANGIR');

UPDATE final_bio_data
SET district = 'Baleshwar'
WHERE district IN ('Baleswar');

UPDATE final_bio_data
SET district = 'Boudh'
WHERE district IN ('Baudh');

UPDATE final_bio_data
SET district = 'Jagatsinghpur'
WHERE district IN ('Jagatsinghapur');

UPDATE final_bio_data
SET district = 'Jajpur'
WHERE district IN ('JAJPUR', 'Jajapur');

UPDATE final_bio_data
SET district = 'Jajpur'
WHERE district IN ('jajpur');

UPDATE final_bio_data
SET district = 'Khordha'
WHERE district IN ('Khorda', 'Khordha  *');

UPDATE final_bio_data
SET district = 'Nayagarh'
WHERE district IN ('NAYAGARH');

UPDATE final_bio_data
SET district = 'Nuapada'
WHERE district IN ('NUAPADA');

UPDATE final_bio_data
SET district = 'Sundargarh'
WHERE district IN ('Sundergarh');

UPDATE final_bio_data
SET district= 'Sonapur'
WHERE district IN ('Subarnapur');

--PUNJAB

UPDATE final_bio_data
SET district = 'Ferozepur'
WHERE district IN ('Firozpur');

UPDATE final_bio_data
SET district = 'SAS Nagar (Mohali)'
WHERE district IN ('S.A.S Nagar(Mohali)');

UPDATE final_bio_data
SET district = 'Shaheed Bhagat Singh Nagar'
WHERE district IN ('Nawanshahr');

--PONDICHERRY DISTRICT

UPDATE final_bio_data
SET state= 'Tamil Nadu'
WHERE district IN ('Viluppuram');

UPDATE final_bio_data
SET state= 'Tamil Nadu'
WHERE district IN ('Cuddalore');

UPDATE final_bio_data
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

UPDATE final_bio_data
SET district= 'Mangan'
WHERE district IN ('North','North Sikkim');


UPDATE final_bio_data
SET district= 'Namchi'
WHERE district IN ('South','South Sikkim');

UPDATE final_bio_data
SET district= 'Gangtok'
WHERE district IN ('East','East Sikkim');


UPDATE final_bio_data
SET district= 'West Sikkim'
WHERE district IN ('West');

select distinct district from final_bio_data where state='Sikkim' order by district;


-- TAMIL NADU DML

UPDATE final_bio_data
SET district = 'Kanyakumari'
WHERE district IN ('Kanniyakumari');

UPDATE final_bio_data
SET district = 'Thoothukkudi'
WHERE district IN ('Tuticorin');

UPDATE final_bio_data
SET district = 'Viluppuram'
WHERE district IN ('Villupuram');

UPDATE final_bio_data
SET district= 'Thiruvarur'
WHERE district IN ('Tiruvarur');

UPDATE final_bio_data
SET district= 'Thiruvallur'
WHERE district IN ('Tiruvallur');

UPDATE final_bio_data
SET district= 'Kancheepuram'
WHERE district IN ('Kanchipuram');

--TRIPURA 

UPDATE final_bio_data
SET district = 'Dhalai'
WHERE district IN ('Dhalai  *');


--RAJASTHAN DML

UPDATE final_bio_data
SET district = 'Chittorgarh'
WHERE district IN ('Chittaurgarh');

UPDATE final_bio_data
SET district = 'Deeg'
WHERE district IN ('Deeg ');

UPDATE final_bio_data
SET district = 'Deeg'
WHERE district IN ('Deeg ', 'Deeg  ');

UPDATE final_bio_data
SET district = 'Dholpur'
WHERE district IN ('Dhaulpur');

UPDATE final_bio_data
SET district = 'Jalore'
WHERE district IN ('Jalor');

UPDATE final_bio_data
SET district = 'Jhunjhunu'
WHERE district IN ('Jhunjhunun');

UPDATE final_bio_data
SET district= 'Deeg'
WHERE district IN ('Deeg');

-- UP DML

UPDATE final_bio_data
SET district = 'Amroha'
WHERE district IN ('Jyotiba Phule Nagar');

UPDATE final_bio_data
SET district = 'Auraiya'
WHERE district IN ('Auraiya *');

UPDATE final_bio_data
SET district = 'Ayodhya'
WHERE district IN ('Faizabad');

UPDATE final_bio_data
SET district = 'Barabanki'
WHERE district IN ('Bara Banki');

UPDATE final_bio_data
SET district = 'Baghpat'
WHERE district IN ('Bagpat');

UPDATE final_bio_data
SET district = 'Bulandshahr'
WHERE district IN ('Bulandshahar');

UPDATE final_bio_data
SET district = 'Gautam Buddha Nagar'
WHERE district IN ('Gautam Buddha Nagar *');

UPDATE final_bio_data
SET district = 'Kushinagar'
WHERE district IN ('Kushinagar *');

UPDATE final_bio_data
SET district = 'Maharajganj'
WHERE district IN ('Mahrajganj');

UPDATE final_bio_data
SET district = 'Raebareli'
WHERE district IN ('Rae Bareli');

UPDATE final_bio_data
SET district = 'Chandauli'
WHERE district IN ('Chandauli *');

UPDATE final_bio_data
SET district = 'Sant Ravidas Nagar Bhadohi'
WHERE district IN ('Sant Ravidas Nagar');

UPDATE final_bio_data
SET district= 'Prayagraj'
WHERE district IN ('Allahabad');

UPDATE final_bio_data
SET district= 'Bhadohi'
WHERE district IN ('Sant Ravidas Nagar Bhadohi');

--UTTARAKHAND DML

UPDATE final_bio_data
SET district= 'Haridwar'
WHERE district IN ('Hardwar');

UPDATE final_bio_data
SET district= 'Pauri Garhwal'
WHERE district IN ('Garhwal');

--WEST BENGAL DML

UPDATE final_bio_data
SET district = 'Bardhaman'
WHERE district IN ('Barddhaman', 'Burdwan');

UPDATE final_bio_data
SET district = 'Cooch Behar'
WHERE district IN ('Koch Bihar');

UPDATE final_bio_data
SET district = 'Darjeeling'
WHERE district IN ('Darjiling');

UPDATE final_bio_data
SET district = 'Hooghly'
WHERE district IN ('hooghly');

UPDATE final_bio_data
SET district = 'Hooghly'
WHERE district IN ('HOOGHLY', 'Hooghiy', 'Hugli');

UPDATE final_bio_data
SET district = 'Howrah'
WHERE district IN ('HOWRAH', 'Hawrah', 'Haora');

UPDATE final_bio_data
SET district = 'Kolkata'
WHERE district IN ('KOLKATA');

UPDATE final_bio_data
SET district = 'Malda'
WHERE district IN ('MALDA', 'Maldah');

UPDATE final_bio_data
SET district = 'Nadia'
WHERE district IN ('NADIA');

UPDATE final_bio_data
SET district = 'North 24 Parganas'
WHERE district IN ('North Twenty Four Parganas');

UPDATE final_bio_data
SET district = 'Purulia'
WHERE district IN ('Puruliya');

UPDATE final_bio_data
SET district = 'South 24 Parganas'
WHERE district IN (
    'South 24 Pargana',
    'South 24 pargana',
    'South 24 parganas',
    'South Twenty Four Parganas'
);

UPDATE final_bio_data
SET district = 'West Medinipur'
WHERE district IN ('West Midnapore');

UPDATE final_bio_data
SET district = 'East Midnapore'
WHERE district IN ('East midnapore', 'east midnapore');

UPDATE final_bio_data
SET district = 'East Midnapore'
WHERE district IN ('East Midnapur');

UPDATE final_bio_data
SET district= 'Howrah'
WHERE district IN ('Bally Jagachha','Domjur');

UPDATE final_bio_data
SET district= 'Purba Medinipur'
WHERE district IN ('East Midnapore');

UPDATE final_bio_data
SET district= 'Paschim Medinipur'
WHERE district IN ('Medinipur');

UPDATE final_bio_data
SET district= 'Uttar Dinajpur'
WHERE district IN ('North Dinajpur');

UPDATE final_bio_data
SET district= 'North 24 Parganas'
WHERE district IN ('South DumDum(M)');

UPDATE final_bio_data
SET district= 'Paschim Medinipur'
WHERE district IN ('West Medinipur');

UPDATE final_bio_data
SET district= 'Dakshin Dinajpur'
WHERE district IN ('South Dinajpur');

--there is one district named Bardhaman in dataset which got seperated into Paschim Bardhaman and Purba Bardhaman.
--so replacing both by Bardhaman

UPDATE final_bio_data
SET district= 'Bardhaman'
WHERE district IN ('Paschim Bardhaman','Purba Bardhaman');

--------------------------------------

select distinct district from final_bio_data where state='Gujarat' order by district;

select count(distinct district) from final_bio_data where state = 'Andaman and Nicobar Islands';

select distinct district from final_bio_data where state='Andaman and Nicobar Islands';

select count(distinct district) from final_bio_data where state = 'Andhra Pradesh';

select distinct district from final_bio_data where state='Andhra Pradesh' order by district;

select count(distinct district) from final_bio_data where state = 'Arunachal Pradesh'order by district;

select distinct district from final_bio_data where state = 'Arunachal Pradesh' order by district;

select count(distinct district) from final_bio_data where state = 'Assam';

select distinct district from final_bio_data where state = 'Assam' order by district;

select count(distinct district) from final_bio_data where state = 'Bihar';

select distinct district from final_bio_data where state = 'Bihar' order by district;

select count(distinct district) from final_bio_data where state = 'Chandigarh';

select distinct district from final_bio_data where state = 'Chandigarh';

select count(distinct district) from final_bio_data where state = 'Chhattisgarh';

select distinct district from final_bio_data where state = 'Chhattisgarh' order by district;

select count(distinct district) from final_bio_data where state = 'Dadra and Nagar Haveli and Daman and Diu';

select distinct district from final_bio_data where state = 'Dadra and Nagar Haveli and Daman and Diu';

select count(distinct district) from final_bio_data where state = 'Delhi';

select distinct district from final_bio_data where state = 'Delhi' order by district;

select count(distinct district) from final_bio_data where state = 'Goa';

select distinct district from final_bio_data where state = 'Goa' order by district;

select count(distinct district) from final_bio_data where state = 'Gujarat';

select distinct district from final_bio_data where state = 'Gujarat' order by district;

select count(distinct district) from final_bio_data where state = 'Haryana';

select distinct district from final_bio_data where state = 'Haryana' order by district;

select count(distinct district) from final_bio_data where state = 'Himachal Pradesh';

select distinct district from final_bio_data where state = 'Himachal Pradesh' order by district;

select count(distinct district) from final_bio_data where state = 'Jammu and Kashmir';

select distinct district from final_bio_data where state = 'Jammu and Kashmir' order by district;

DELETE FROM final_bio_data
WHERE state = 'Jammu and Kashmir'
  AND district = '?';


select count(distinct district) from final_bio_data where state = 'Jharkhand';

select distinct district from final_bio_data where state = 'Jharkhand' order by district;

select count(distinct district) from final_bio_data where state = 'Karnataka';

select distinct district from final_bio_data where state = 'Karnataka' order by district;

select count(distinct district) from final_bio_data where state = 'Kerala';

select distinct district from final_bio_data where state = 'Kerala' order by district;

select count(distinct district) from final_bio_data where state = 'Ladakh';

select distinct district from final_bio_data where state = 'Ladakh';

select count(distinct district) from final_bio_data where state = 'Lakshadweep';

select distinct district from final_bio_data where state = 'Lakshadweep';

select count(distinct district) from final_bio_data where state = 'Madhya Pradesh';

select distinct district from final_bio_data where state = 'Madhya Pradesh' order by district;

select count(distinct district) from final_bio_data where state = 'Maharashtra';

select distinct district from final_bio_data where state = 'Maharashtra' order by district;

select count(distinct district) from final_bio_data where state = 'Manipur';

select distinct district from final_bio_data where state = 'Manipur' order by district;

select count(distinct district) from final_bio_data where state = 'Meghalaya';

select distinct district from final_bio_data where state = 'Meghalaya' order by district;

select count(distinct district) from final_bio_data where state = 'Mizoram';

select distinct district from final_bio_data where state = 'Mizoram' order by district;

select count(distinct district) from final_bio_data where state = 'Nagaland';

select distinct district from final_bio_data where state = 'Nagaland' order by district;

select count(distinct district) from final_bio_data where state = 'Odisha';

select distinct district from final_bio_data where state = 'Odisha' order by district;

select count(distinct district) from final_bio_data where state = 'Pondicherry';

select distinct district from final_bio_data where state = 'Pondicherry';

select count(distinct district) from final_bio_data where state = 'Punjab';

select Distinct district from final_bio_data where state = 'Punjab' order by district;

select count(distinct district) from final_bio_data where state = 'Rajasthan';

select distinct district from final_bio_data where state = 'Rajasthan' order by district;

select count(distinct district) from final_bio_data where state = 'Sikkim';

select distinct district from final_bio_data where state = 'Sikkim';

select count(distinct district) from final_bio_data where state = 'Tamil Nadu';

select distinct district from final_bio_data where state = 'Tamil Nadu' order by district;

select count(distinct district) from final_bio_data where state = 'Telangana';

select distinct district from final_bio_data where state = 'Telangana' order by district;

select count(distinct district) from final_bio_data where state = 'Tripura';

select distinct district from final_bio_data where state = 'Tripura' order by district;

select count(distinct district) from final_bio_data where state = 'Uttar Pradesh';

select distinct district from final_bio_data where state = 'Uttar Pradesh' order by district;

select count(distinct district) from final_bio_data where state = 'Uttarakhand';

select distinct district from final_bio_data where state = 'Uttarakhand' order by district;

select count(distinct district) from final_bio_data where state = 'West Bengal';

select distinct district from final_bio_data where state = 'West Bengal' order by district;


USE ROLE ACCOUNTADMIN;

select state,count(distinct district) from final_bio_data group by state order by state;

select count(distinct state) from final_bio_data;

select * from final_bio_data limit 5;

show tables;


select count(*) from final_bio_data;
