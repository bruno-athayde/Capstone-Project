-- CREATE A pre_covid_route TABLE
DROP TABLE IF EXISTS pre_covid_route;
CREATE TABLE pre_covid_route AS (SELECT ItinID,
    _Year,
    _Quarter,
    Origin,
    OriginAirportID,
    OriginCityMarketID,
    OriginStateFips,
    OriginState,
    OriginWac,
    Dest,
    DestAirportID,
    DestCityMarketID,
    DestStateFips,
    DestState,
    DestWac,
    RoundTrip,
    FarePerMile,
    RPCarrier,
    Passengers,
    ItinFare,
    Distance,
    DistanceGroup,
    MilesFlown, 
    FareClass,
    DollarCred,
    BulkFare
    FROM
    final_2018
WHERE
    (DollarCred = 1 AND BulkFare = 0)) UNION (SELECT 
    ItinID,
    _Year,
    _Quarter,
    Origin,
    OriginAirportID,
    OriginCityMarketID,
    OriginStateFips,
    OriginState,
    OriginWac,
    Dest,
    DestAirportID,
    DestCityMarketID,
    DestStateFips,
    DestState,
    DestWac,
    RoundTrip,
    FarePerMile,
    RPCarrier,
    Passengers,
    ItinFare,
    Distance,
    DistanceGroup,
    MilesFlown,
    FareClass,
    DollarCred,
    BulkFare
FROM
    final_2019
WHERE
    (DollarCred = 1 AND BulkFare = 0));


-- DELETE DUPLICATE ROWS
-- pre_covid_route TABLE
DELETE FROM pre_covid_route 
WHERE
    ItinID = ANY (SELECT 
        ItinID
    FROM
        (SELECT 
            *
        FROM
            final_2018 UNION SELECT 
            *
        FROM
            final_2019) AS pc2
    GROUP BY ItinID
    HAVING COUNT(ItinID) > 1); 
    
    
-- DELETE NULL VALUES
-- WHERE ItinFare and FareClass ARE EQUAL TO ZERO
-- pre_covid_route TABLE
DELETE FROM pre_covid_route 
WHERE
    ItinFare = " "; 
    
DELETE FROM pre_covid_route 
WHERE
    FareClass = ''; 
    
    

-- REASSIGN FareClass COLUMN 
-- ECONOMY = 0, BUSINESS = 2, FIRST = 1
-- pre_covid_route TABLE
UPDATE pre_covid_route SET FareClass = REPLACE(FareClass,'X',0);
UPDATE pre_covid_route SET FareClass = REPLACE(FareClass,'Y',0);
UPDATE pre_covid_route SET FareClass = REPLACE(FareClass,'F',1);
UPDATE pre_covid_route SET FareClass = REPLACE(FareClass,'G',1);
UPDATE pre_covid_route SET FareClass = REPLACE(FareClass,'C',2);
UPDATE pre_covid_route SET FareClass = REPLACE(FareClass,'D',2);
UPDATE pre_covid_route SET FareClass = REPLACE(FareClass,'U',4); 

-- DELETE UNKNOWN CLASS FROM FareClass  
DELETE FROM pre_covid_route 
WHERE
    FareClass = 4;
    

-- CONCATENATE ORIGIN AND DESTINATION COLUMNS TO CREATE THE Route COLUMN
-- pre_covid_route 
ALTER TABLE pre_covid_route
ADD COLUMN Route VARCHAR(255);
    
UPDATE pre_covid_route SET Route = CONCAT(Origin,'-',Dest);     

SELECT * FROM pre_covid_route LIMIT 5;

SELECT DISTINCT(Route) FROM pre_covid_route;

-- DROP COLUMNS WITH DUPLICATED INFO
-- DROP 'Origin', 'OriginState', 'Dest', 'DestState'
-- pre_covid_route TABLE 
ALTER TABLE pre_covid_route
DROP COLUMN Origin,
DROP COLUMN OriginState,
DROP COLUMN OriginAirportID,
DROP COLUMN OriginCityMarketID,
DROP COLUMN OriginStateFips,
DROP COLUMN OriginWac,
DROP COLUMN Dest,
DROP COLUMN DestState,
DROP COLUMN DestAirportID,
DROP COLUMN DestCityMarketID,
DROP COLUMN DestStateFips,
DROP COLUMN DestWac;

-- CHECK DollarCred AND BulkFare COLUMNS
-- I SHOULD HAVE ONLY DollarCred = 1 and BulkFare = 0 IN MY DATASET 
SELECT DISTINCT(DollarCred) FROM pre_covid_route;
SELECT DISTINCT(BulkFare) FROM pre_covid_route;
 
-- DROP DollarCred AND BulkFare COLUMNS 
ALTER TABLE pre_covid_route
DROP COLUMN DollarCred,
DROP COLUMN BulkFare;
