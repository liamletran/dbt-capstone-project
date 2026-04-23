{{
    config (
        materialized='ephemeral'
    )
}}
WITH src_runways AS (
    SELECT * FROM {{ source('airstats', 'runways') }}
)
SELECT 
       ID AS runway_id,
       AIRPORT_IDENT AS airport_ident,
       LENGTH_FT AS runway_length_ft,
       WIDTH_FT AS runway_width_ft,
       SURFACE AS runway_surface,
       LIGHTED AS runway_lighted,
       CLOSED AS runway_closed
FROM 
src_runways