-- Exercise 8-a
-- Tablas: farm.farms, buy.collection_points, geo.municipalities, buy.deliveries.
-- a) Consulte el código y el nombre de los municipios de Norte de Santander que tienen fincas y también punto de compra, 
-- con los alias municipality_code y municipality, ordenados por nombre.

SELECT 
    T2.municipality_code AS municipality_code,
    T2.municipality_name AS municipality
FROM farm.farms AS T1
INNER JOIN geo.municipalities AS T2
    ON T1.municipality_code = T2.municipality_code
WHERE T2.department_code = '54'
INTERSECT
SELECT 
    T4.municipality_code AS municipality_code,
    T4.municipality_name AS municipality
FROM buy.collection_points AS T3
INNER JOIN geo.municipalities AS T4
    ON T3.municipality_code = T4.municipality_code
WHERE T4.department_code = '54'
ORDER BY municipality;

/**
 municipality_code | municipality
-------------------+--------------
 54099             | Bochalema
 54172             | Chinácota
 54206             | Convención
 54245             | El Carmen
 54261             | El Zulia
 54347             | Herrán
 54498             | Ocaña
 54720             | Sardinata
(8 filas)
**/