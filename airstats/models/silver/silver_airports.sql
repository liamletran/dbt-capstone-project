WITH silver_airports AS (
    SELECT
        *
    FROM {{ ref('src_airports') }}
)
SELECT AIRPORT_IDENT, 
       AIRPORT_TYPE, 
       AIRPORT_NAME, 
       AIRPORT_LAT, 
       AIRPORT_LONG, 
       CONTINENT, 
       ISO_COUNTRY, 
       ISO_REGION
FROM 
silver_airports