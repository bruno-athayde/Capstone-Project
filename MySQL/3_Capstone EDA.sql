-- SAMPLING EACH TICKET TABLE
-- 10% of the observations

-- AMOUNT OF MEMORY ALLOCATED TO THE INNODB BUFFER POOL
SET GLOBAL innodb_buffer_pool_size=268435456;

-- Create table with the sample by year
-- 2019  
DROP TABLE IF EXISTS sample_2019;
CREATE TABLE sample_2019 AS (SELECT t19.*,
    m19.DestAirportID,
    m19.DestAirportSeqID,
    m19.DestCityMarketID,
    m19.Dest,
    m19.DestCountry,
    m19.DestStateFips,
    m19.DestState,
    m19.DestStateName,
    m19.DestWac FROM
    ticket_2019 AS t19
        INNER JOIN
    market_2019 AS m19 ON (t19.ItinID = m19.ItinID
        AND t19.OriginAirportID = m19.OriginAirportID)
WHERE
    RAND() < 0.1); 
    

-- 2018
DROP TABLE IF EXISTS sample_2018;
CREATE TABLE sample_2018 AS (SELECT t18.*,
    m18.DestAirportID,
    m18.DestAirportSeqID,
    m18.DestCityMarketID,
    m18.Dest,
    m18.DestCountry,
    m18.DestStateFips,
    m18.DestState,
    m18.DestStateName,
    m18.DestWac FROM
    ticket_2018 AS t18
        INNER JOIN
    market_2018 AS m18 ON (t18.ItinID = m18.ItinID
        AND t18.OriginAirportID = m18.OriginAirportID)
WHERE
    RAND() < 0.1);
    

-- CREATE FINAL TABLE 
-- final_2019
DROP TABLE IF EXISTS final_2019;
CREATE TABLE final_2019 AS (
SELECT sample_2019.*,
coupon_2019.FareClass
FROM sample_2019
INNER JOIN coupon_2019
ON (sample_2019.ItinID = coupon_2019.ItinID AND sample_2019.Origin = coupon_2019.Origin)
);

-- final_2018
DROP TABLE IF EXISTS final_2018;
CREATE TABLE final_2018 AS (
SELECT sample_2018.*,
coupon_2018.FareClass
FROM sample_2018
INNER JOIN coupon_2018
ON (sample_2018.ItinID = coupon_2018.ItinID AND sample_2018.Origin = coupon_2018.Origin)
);    
    