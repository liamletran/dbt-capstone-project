WITH silver_runways AS (
    SELECT
        *
    FROM {{ ref('src_runways') }}
)
SELECT RUNWAY_ID, 
       AIRPORT_IDENT, 
       RUNWAY_LENGTH_FT, 
       RUNWAY_WIDTH_FT, 
       CASE 
        WHEN RUNWAY_SURFACE IS NULL OR RUNWAY_SURFACE <> ''
        THEN '__UNKNOWN__'
        ELSE runway_surface
        END runway_surface, 
       RUNWAY_LIGHTED, 
       RUNWAY_CLOSED
FROM 
silver_runways