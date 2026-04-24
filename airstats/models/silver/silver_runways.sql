WITH silver_runways AS (
    SELECT
        *
    FROM {{ ref('src_runways') }}
)
SELECT RUNWAY_ID, 
       AIRPORT_IDENT, 
       RUNWAY_LENGTH_FT, 
       RUNWAY_WIDTH_FT, 
       NVL(RUNWAY_SURFACE, '__UNKNOWN__') AS runway_surface, 
       RUNWAY_LIGHTED, 
       RUNWAY_CLOSED
FROM 
silver_runways