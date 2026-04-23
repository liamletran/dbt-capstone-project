{{ 
    config(
        materialized='incremental',
        on_schema_change='fail'
) 
}}



WITH silver_airport_comments AS (
    SELECT
        *
    FROM {{ ref('src_airport_comments') }}
)
SELECT COMMENT_ID, 
       AIRPORT_IDENT, 
       COMMENT_TIMESTAMP, 
       NVL(MEMBER_NICKNAME, '__UNKNOWN__') MEMBER_NICKNAME, 
       COMMENT_SUBJECT, 
       COMMENT_BODY, 
       current_timestamp() AS LOADED_AT
FROM 
silver_airport_comments
WHERE COMMENT_BODY IS NOT NULL OR COMMENT_BODY <> ''



{% if is_incremental() %}
    AND COMMENT_ID NOT IN (SELECT COMMENT_ID FROM {{ this }})
{% endif%}