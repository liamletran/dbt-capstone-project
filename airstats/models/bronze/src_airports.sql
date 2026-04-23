{{
    config (
        materialized='ephemeral'
    )
}}
WITH src_airports AS (
    SELECT * FROM {{ source('airstats', 'airports') }}
)

SELECT 
       IDENT AS airport_ident,
       TYPE AS airport_type,
       NAME AS airport_name,
       LATITUDE_DEG AS airport_lat,
       LONGITUDE_DEG AS airport_long,
       CONTINENT,
       ISO_COUNTRY,
       ISO_REGION
FROM 
src_airports