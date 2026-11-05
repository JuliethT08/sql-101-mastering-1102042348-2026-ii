-- Exercise 2-b
-- Tablas: farm.farmers, geo.municipalities.
-- b) Del municipio 54518, consulte por cada género el número de asociados y la edad promedio en años (redondeada a 2 decimales; use ::NUMERIC antes de ROUND), con los alias gender, farmers_count y avg_age_years

SELECT 
    T1.gender AS gender,
    COUNT(T1.farmer_id) AS farmers_count,
    ROUND(AVG(DATE_PART('year', AGE(DATE '2026-09-30', T1.birth_date)))::NUMERIC, 2) AS avg_age_years
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'
GROUP BY T1.gender;

/**
 gender | farmers_count | avg_age_years
--------+---------------+---------------
 F      |           111 |         49.59
 M      |           115 |         51.31
 O      |             4 |         46.25
(3 filas)
**/