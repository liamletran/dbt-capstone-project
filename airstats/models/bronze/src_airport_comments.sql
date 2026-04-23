WITH src_airport_comments AS (
    SELECT * FROM AIRSTATS.RAW.AIRPORT_COMMENTS
)
SELECT 
       ID AS comment_id,
       AIRPORT_IDENT AS airport_ident,
       DATE AS comment_timestamp,
       MEMBER_NICKNAME,
       SUBJECT AS comment_subject,
       BODY AS comment_body
FROM 
src_airport_comments