WITH src_airports AS (
    SELECT * FROM AIRSTATS.RAW.AIRPORTS
)

SELECT ID AS airport_id,
       IDENT AS airport_ident,
       TYPE AS airport_type,
       NAME AS airport_name,
       LATITUDE_DEG,
       LONGITUDE_DEG, 
       ELEVATION_FT, 
       CONTINENT, 
       ISO_COUNTRY, 
       ISO_REGION, 
       MUNICIPALITY, 
       SCHEDULED_SERVICE, 
       GPS_CODE, 
       IATA_CODE, 
       LOCAL_CODE, 
       HOME_LINK, 
       WIKIPEDIA_LINK, 
       KEYWORDS
FROM 
src_airports