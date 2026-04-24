SELECT * FROM {{ ref('silver_runways') }}
WHERE runway_width_ft < 0
LIMIT 10