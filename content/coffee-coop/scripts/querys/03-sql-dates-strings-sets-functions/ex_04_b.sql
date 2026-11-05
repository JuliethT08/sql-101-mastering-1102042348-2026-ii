-- Exercise 4-b
-- Tablas: farm.farm_certifications, farm.certifications, farm.farms, buy.deliveries.
-- b) De las fincas del municipio 54518, consulte las certificaciones vigentes (end_date nula) con 2 años o más al 30 de septiembre de 2026, con los alias farm, certification, start_date y years_active, ordenadas por años de mayor a menor y luego por finca.

SELECT 
    T3.farm_name AS farm,
    T2.certification_name AS certification,
    T1.start_date AS start_date,
    DATE_PART('year', AGE(DATE '2026-09-30', T1.start_date)) AS years_active
FROM farm.farm_certifications AS T1
INNER JOIN farm.certifications AS T2
    ON T1.certification_id = T2.certification_id
INNER JOIN farm.farms AS T3
    ON T1.farm_id = T3.farm_id
WHERE T3.municipality_code = '54518'
  AND T1.end_date IS NULL
  AND DATE_PART('year', AGE(DATE '2026-09-30', T1.start_date)) >= 2
ORDER BY years_active DESC, T3.farm_name;

/**
     farm      |    certification    | start_date | years_active
---------------+---------------------+------------+--------------
 El Arrayan    | Rainforest Alliance | 2024-07-29 |            2
 El Danubio    | Fairtrade           | 2024-01-24 |            2
 El Diamante   | 4C                  | 2024-04-28 |            2
 El Diamante   | 4C                  | 2023-12-19 |            2
 El Guamo      | 4C                  | 2024-07-06 |            2
 El Porvenir   | Fairtrade           | 2024-09-23 |            2
 El Porvenir   | Rainforest Alliance | 2024-04-24 |            2
 El Recuerdo   | Organico            | 2024-01-18 |            2
 El Silencio   | Rainforest Alliance | 2024-05-10 |            2
 La Aurora     | Rainforest Alliance | 2024-02-11 |            2
 La Aurora     | 4C                  | 2023-11-03 |            2
 La Cascada    | Rainforest Alliance | 2023-10-19 |            2
 La Esperanza  | 4C                  | 2024-02-06 |            2
 La Palma      | Fairtrade           | 2024-06-05 |            2
 La Reserva    | 4C                  | 2023-10-16 |            2
 Las Palmas    | Rainforest Alliance | 2024-07-14 |            2
 Los Arrayanes | Fairtrade           | 2023-12-13 |            2
 San Jose      | Nespresso AAA       | 2024-01-22 |            2
(18 filas)
**/