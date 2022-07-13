-- SET DEFAULT SCHEMA
USE airlines;


-- LOAD DATA DB1B TICKET 2019
SET GLOBAL local_infile = 'ON';

LOAD DATA LOCAL INFILE 
'/Volumes/GoogleDrive/My Drive/BrainStation/CAPSTONE/DATABASE/DB1B Ticket/Origin_and_Destination_Survey_DB1BTicket_2019_4/Origin_and_Destination_Survey_DB1BTicket_2019_4.csv'
INTO TABLE ticket_2019
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES; 


LOAD DATA LOCAL INFILE 
'/Volumes/GoogleDrive/My Drive/BrainStation/CAPSTONE/DATABASE/DB1B Ticket/Origin_and_Destination_Survey_DB1BTicket_2019_3/Origin_and_Destination_Survey_DB1BTicket_2019_3.csv'
INTO TABLE ticket_2019
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES; 


LOAD DATA LOCAL INFILE 
'/Volumes/GoogleDrive/My Drive/BrainStation/CAPSTONE/DATABASE/DB1B Ticket/Origin_and_Destination_Survey_DB1BTicket_2019_2/Origin_and_Destination_Survey_DB1BTicket_2019_2.csv'
INTO TABLE ticket_2019
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES; 



LOAD DATA LOCAL INFILE 
'/Volumes/GoogleDrive/My Drive/BrainStation/CAPSTONE/DATABASE/DB1B Ticket/Origin_and_Destination_Survey_DB1BTicket_2019_1/Origin_and_Destination_Survey_DB1BTicket_2019_1.csv'
INTO TABLE ticket_2019
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES; 


-- LOAD DATA DB1B TICKET 2018 


LOAD DATA LOCAL INFILE 
'/Volumes/GoogleDrive/My Drive/BrainStation/CAPSTONE/DATABASE/DB1B Ticket/Origin_and_Destination_Survey_DB1BTicket_2018_4/Origin_and_Destination_Survey_DB1BTicket_2018_4.csv'
INTO TABLE ticket_2018
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES; 


LOAD DATA LOCAL INFILE 
'/Volumes/GoogleDrive/My Drive/BrainStation/CAPSTONE/DATABASE/DB1B Ticket/Origin_and_Destination_Survey_DB1BTicket_2018_3/Origin_and_Destination_Survey_DB1BTicket_2018_3.csv'
INTO TABLE ticket_2018
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES; 


LOAD DATA LOCAL INFILE 
'/Volumes/GoogleDrive/My Drive/BrainStation/CAPSTONE/DATABASE/DB1B Ticket/Origin_and_Destination_Survey_DB1BTicket_2018_2/Origin_and_Destination_Survey_DB1BTicket_2018_2.csv'
INTO TABLE ticket_2018
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES; 



LOAD DATA LOCAL INFILE 
'/Volumes/GoogleDrive/My Drive/BrainStation/CAPSTONE/DATABASE/DB1B Ticket/Origin_and_Destination_Survey_DB1BTicket_2018_1/Origin_and_Destination_Survey_DB1BTicket_2018_1.csv'
INTO TABLE ticket_2018
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES; 


-- LOADING DATA FOR THE MARKET TABLES
-- 4 QUERIES FOR EVERY YEAR 

-- LOAD DATA DB1B MARKET 2019

LOAD DATA LOCAL INFILE 
'/Volumes/GoogleDrive/My Drive/BrainStation/CAPSTONE/DATABASE/DB1B Market/Origin_and_Destination_Survey_DB1BMarket_2019_1/Origin_and_Destination_Survey_DB1BMarket_2019_1.csv'
INTO TABLE market_2019
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES; 


LOAD DATA LOCAL INFILE 
'/Volumes/GoogleDrive/My Drive/BrainStation/CAPSTONE/DATABASE/DB1B Market/Origin_and_Destination_Survey_DB1BMarket_2019_2/Origin_and_Destination_Survey_DB1BMarket_2019_2.csv'
INTO TABLE market_2019
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES; 


LOAD DATA LOCAL INFILE 
'/Volumes/GoogleDrive/My Drive/BrainStation/CAPSTONE/DATABASE/DB1B Market/Origin_and_Destination_Survey_DB1BMarket_2019_3/Origin_and_Destination_Survey_DB1BMarket_2019_3.csv'
INTO TABLE market_2019
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES; 



LOAD DATA LOCAL INFILE 
'/Volumes/GoogleDrive/My Drive/BrainStation/CAPSTONE/DATABASE/DB1B Market/Origin_and_Destination_Survey_DB1BMarket_2019_4/Origin_and_Destination_Survey_DB1BMarket_2019_4.csv'
INTO TABLE market_2019
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES; 


-- LOAD DATA DB1B MARKET 2018 


LOAD DATA LOCAL INFILE 
'/Volumes/GoogleDrive/My Drive/BrainStation/CAPSTONE/DATABASE/DB1B Market/Origin_and_Destination_Survey_DB1BMarket_2018_1/Origin_and_Destination_Survey_DB1BMarket_2018_1.csv'
INTO TABLE market_2018
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES; 


LOAD DATA LOCAL INFILE 
'/Volumes/GoogleDrive/My Drive/BrainStation/CAPSTONE/DATABASE/DB1B Market/Origin_and_Destination_Survey_DB1BMarket_2018_2/Origin_and_Destination_Survey_DB1BMarket_2018_2.csv'
INTO TABLE market_2018
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES; 


LOAD DATA LOCAL INFILE 
'/Volumes/GoogleDrive/My Drive/BrainStation/CAPSTONE/DATABASE/DB1B Market/Origin_and_Destination_Survey_DB1BMarket_2018_3/Origin_and_Destination_Survey_DB1BMarket_2018_3.csv'
INTO TABLE market_2018
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES; 


LOAD DATA LOCAL INFILE 
'/Volumes/GoogleDrive/My Drive/BrainStation/CAPSTONE/DATABASE/DB1B Market/Origin_and_Destination_Survey_DB1BMarket_2018_4/Origin_and_Destination_Survey_DB1BMarket_2018_4.csv'
INTO TABLE market_2018
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES; 


-- LOAD DATA DB1B COUPON 2019 

LOAD DATA LOCAL INFILE 
'/Volumes/GoogleDrive/My Drive/BrainStation/CAPSTONE/DATABASE/DB1B Coupon/Origin_and_Destination_Survey_DB1BCoupon_2019_1/Origin_and_Destination_Survey_DB1BCoupon_2019_1.csv'
INTO TABLE coupon_2019
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES; 


LOAD DATA LOCAL INFILE 
'/Volumes/GoogleDrive/My Drive/BrainStation/CAPSTONE/DATABASE/DB1B Coupon/Origin_and_Destination_Survey_DB1BCoupon_2019_2/Origin_and_Destination_Survey_DB1BCoupon_2019_2.csv'
INTO TABLE coupon_2019
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES; 


LOAD DATA LOCAL INFILE 
'/Volumes/GoogleDrive/My Drive/BrainStation/CAPSTONE/DATABASE/DB1B Coupon/Origin_and_Destination_Survey_DB1BCoupon_2019_3/Origin_and_Destination_Survey_DB1BCoupon_2019_3.csv'
INTO TABLE coupon_2019
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES; 



LOAD DATA LOCAL INFILE 
'/Volumes/GoogleDrive/My Drive/BrainStation/CAPSTONE/DATABASE/DB1B Coupon/Origin_and_Destination_Survey_DB1BCoupon_2019_4/Origin_and_Destination_Survey_DB1BCoupon_2019_4.csv'
INTO TABLE coupon_2019
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;


-- LOAD DATA DB1B COUPON 2018 

LOAD DATA LOCAL INFILE 
'/Volumes/GoogleDrive/My Drive/BrainStation/CAPSTONE/DATABASE/DB1B Coupon/Origin_and_Destination_Survey_DB1BCoupon_2018_1/Origin_and_Destination_Survey_DB1BCoupon_2018_1.csv'
INTO TABLE coupon_2018
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES; 


LOAD DATA LOCAL INFILE 
'/Volumes/GoogleDrive/My Drive/BrainStation/CAPSTONE/DATABASE/DB1B Coupon/Origin_and_Destination_Survey_DB1BCoupon_2018_2/Origin_and_Destination_Survey_DB1BCoupon_2018_2.csv'
INTO TABLE coupon_2018
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES; 


LOAD DATA LOCAL INFILE 
'/Volumes/GoogleDrive/My Drive/BrainStation/CAPSTONE/DATABASE/DB1B Coupon/Origin_and_Destination_Survey_DB1BCoupon_2018_3/Origin_and_Destination_Survey_DB1BCoupon_2018_3.csv'
INTO TABLE coupon_2018
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES; 



LOAD DATA LOCAL INFILE 
'/Volumes/GoogleDrive/My Drive/BrainStation/CAPSTONE/DATABASE/DB1B Coupon/Origin_and_Destination_Survey_DB1BCoupon_2018_4/Origin_and_Destination_Survey_DB1BCoupon_2018_4.csv'
INTO TABLE coupon_2018
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
