-- Exercise 10-c
-- Tablas: pay.settlements, buy.deliveries, farm.farms, farm.farmers, geo.municipalities.
-- c) Consulte, por cada municipio de Norte de Santander (mostrando su nombre), el n´umero de fincas, el ´area total --sumada y la altitud promedio redondeada a 2 decimales, con los alias municipality, farms count, total area ha y
--avg altitude masl, mostrando solo los municipios con al menos 5 fincas y ordenados por altitud promedio de mayor a menor.

SELECT 
    T2.municipality_name AS municipality,
    COUNT(T1.farm_id) AS farms_count,
    SUM(T1.total_area_ha) AS total_area_ha,
    ROUND(AVG(T1.altitude_masl), 2) AS avg_altitude_masl
FROM farm.farms AS T1
INNER JOIN geo.municipalities AS T2
    ON T1.municipality_code = T2.municipality_code
WHERE T2.department_code = '54'
GROUP BY T2.municipality_name
HAVING COUNT(T1.farm_id) >= 5
ORDER BY avg_altitude_masl DESC;

/**
   municipality    | farms_count | total_area_ha | avg_altitude_masl
-------------------+-------------+---------------+-------------------
 Ragonvalia        |         377 |        990.30 |           1688.35
 Cucutilla         |         315 |        806.32 |           1674.67
 Cácota            |         345 |        950.47 |           1670.86
 Labateca          |         358 |       1103.31 |           1669.03
 Ábrego            |         330 |        900.02 |           1666.75
 Puerto Santander  |         323 |        803.82 |           1666.08
 Cúcuta            |         308 |        849.52 |           1657.92
 Santiago          |         356 |       1013.47 |           1654.08
 Pamplonita        |         326 |        901.48 |           1653.36
 Pamplona          |         368 |       1062.41 |           1652.74
 Bochalema         |         360 |        938.72 |           1651.86
 San Calixto       |         349 |       1013.62 |           1651.72
 Toledo            |         379 |       1040.38 |           1650.60
 El Zulia          |         356 |       1055.59 |           1650.56
 Durania           |         291 |        858.47 |           1649.10
 Mutiscua          |         345 |        945.04 |           1649.05
 Lourdes           |         330 |        977.66 |           1647.87
 Sardinata         |         330 |        895.96 |           1647.66
 Chitagá           |         334 |        893.56 |           1646.15
 El Tarra          |         333 |        983.38 |           1645.17
 Bucarasica        |         299 |        877.83 |           1644.67
 Villa Caro        |         372 |        947.97 |           1644.20
 Salazar           |         332 |        829.87 |           1643.65
 Gramalote         |         356 |        934.62 |           1643.37
 Silos             |         329 |        929.93 |           1642.03
 Herrán            |         332 |        831.53 |           1639.69
 La Playa          |         361 |       1016.61 |           1639.33
 San Cayetano      |         337 |        947.27 |           1638.84
 Ocaña             |         339 |        836.98 |           1638.55
 El Carmen         |         319 |        914.45 |           1638.53
 Teorama           |         360 |       1102.08 |           1637.94
 Los Patios        |         369 |       1083.52 |           1637.39
 Convención        |         321 |        976.74 |           1635.27
 Hacarí            |         339 |       1009.47 |           1631.99
 Arboledas         |         384 |       1016.38 |           1631.88
 Villa Del Rosario |         367 |       1007.90 |           1631.11
 Chinácota         |         369 |        963.94 |           1628.23
 Tibú              |         342 |        853.96 |           1628.04
 Cáchira           |         311 |        828.40 |           1619.76
 La Esperanza      |         310 |        919.50 |           1617.97
(40 filas)
**/