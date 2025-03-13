{{ config(
    materialized='view'
) }}

SELECT
    station_id,
    CAST(year AS INT) AS year,
    CAST(month AS INT) AS month,
    CAST(day AS INT) AS day,
    CAST(avg_temperature AS FLOAT64) AS avg_temperature,
    CAST(dew_point AS FLOAT64) AS dew_point,
    CAST(sea_level_pressure AS FLOAT64) AS sea_level_pressure,
    CAST(station_pressure AS FLOAT64) AS station_pressure,
    CAST(visibility AS FLOAT64) AS visibility,
    CAST(wind_speed AS FLOAT64) AS wind_speed,
    CAST(max_temperature AS FLOAT64) AS max_temperature,
    CAST(min_temperature AS FLOAT64) AS min_temperature,
    CAST(precipitation AS FLOAT64) AS precipitation,
    CAST(fog AS BOOLEAN) AS fog
FROM `axiomatic-sonar-453100-f1.climate_analytics.global_temperatures`
WHERE avg_temperature IS NOT NULL
