-- Exercise 9-a
-- Tablas: geo.departments, geo.municipalities, buy.deliveries, buy.collection points, farm.farms, buy.quality analyses.
-- a) Repita el literal a) del ejercicio anterior mostrando solo los departamentos con mas de 40 municipios.

SELECT 
    T2.department_name AS department,
    COUNT(T1.municipality_code) AS municipalities_count
FROM geo.municipalities AS T1
INNER JOIN geo.departments AS T2
    ON T1.department_code = T2.department_code
GROUP BY T2.department_name
HAVING COUNT(T1.municipality_code) > 40
ORDER BY municipalities_count DESC;

/**
   department    | municipalities_count
-----------------+----------------------
 Antioquia       |                  125
 Boyacá          |                  123
 Cundinamarca    |                  116
 Santander       |                   87
 Nariño          |                   64
 Tolima          |                   47
 Bolívar         |                   46
 Valle Del Cauca |                   42
 Cauca           |                   42
(9 filas)
**/