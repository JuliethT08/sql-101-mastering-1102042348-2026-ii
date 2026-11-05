-- Exercise 4-a
-- Tablas: farm.farm_certifications, farm.certifications, farm.farms, buy.deliveries.
--a) De las fincas del municipio 54518, consulte el top 10 de periodos de certicación ya cerrados (end_date no nula) de mayor duración: nombre de la finca, certicación, fecha de inicio, fecha de fin, duración en días (resta de fechas) y duración con AGE, con los alias farm, certification, start_date, end_date, duration_days y duration. (Tres tablas.)

SELECT 
    T3.farm_name AS farm,
    T2.certification_name AS certification,
    T1.start_date AS start_date,
    T1.end_date AS end_date,
    T1.end_date - T1.start_date AS duration_days,
    AGE(T1.end_date, T1.start_date) AS duration
FROM farm.farm_certifications AS T1
INNER JOIN farm.certifications AS T2
    ON T1.certification_id = T2.certification_id
INNER JOIN farm.farms AS T3
    ON T1.farm_id = T3.farm_id
WHERE T3.municipality_code = '54518'
  AND T1.end_date IS NOT NULL
ORDER BY duration_days DESC
LIMIT 10;

/**
     farm     |    certification    | start_date |  end_date  | duration_days | duration
--------------+---------------------+------------+------------+---------------+----------
 Bellavista   | 4C                  | 2018-09-21 | 2021-09-21 |          1096 | 3 years
 La Esperanza | Fairtrade           | 2023-04-23 | 2026-04-23 |          1096 | 3 years
 La Esperanza | 4C                  | 2017-12-25 | 2020-12-25 |          1096 | 3 years
 Bellavista   | 4C                  | 2015-08-16 | 2018-08-16 |          1096 | 3 years
 Las Delicias | Rainforest Alliance | 2016-02-09 | 2019-02-09 |          1096 | 3 years
 Las Delicias | 4C                  | 2018-12-29 | 2021-12-29 |          1096 | 3 years
 Las Delicias | 4C                  | 2022-02-01 | 2025-02-01 |          1096 | 3 years
 La Cascada   | Nespresso AAA       | 2018-03-14 | 2021-03-14 |          1096 | 3 years
 La Esperanza | Fairtrade           | 2017-03-17 | 2020-03-17 |          1096 | 3 years
 Bellavista   | 4C                  | 2021-11-12 | 2024-11-12 |          1096 | 3 years
(10 filas)
**/