-- Exercise 8-b
-- Tablas: farm.farms, buy.collection_points, geo.municipalities, buy.deliveries.
-- b) Consulte el código y el nombre de los municipios de Norte de Santander que tienen fincas pero no tienen punto de 
-- compra, con los mismos alias. Son los candidatos para abrir nuevos puntos.

SELECT 
    T2.municipality_code AS municipality_code,
    T2.municipality_name AS municipality
FROM farm.farms AS T1
INNER JOIN geo.municipalities AS T2
    ON T1.municipality_code = T2.municipality_code
WHERE T2.department_code = '54'
EXCEPT
SELECT 
    T4.municipality_code AS municipality_code,
    T4.municipality_name AS municipality
FROM buy.collection_points AS T3
INNER JOIN geo.municipalities AS T4
    ON T3.municipality_code = T4.municipality_code
WHERE T4.department_code = '54'
ORDER BY municipality;

/**
SELECT 
    T2.municipality_code AS municipality_code,
    T2.municipality_name AS municipality
FROM farm.farms AS T1
INNER JOIN geo.municipalities AS T2
    ON T1.municipality_code = T2.municipality_code
WHERE T2.department_code = '54'
EXCEPT
SELECT 
    T4.municipality_code AS municipality_code,
    T4.municipality_name AS municipality
FROM buy.collection_points AS T3
INNER JOIN geo.municipalities AS T4
    ON T3.municipality_code = T4.municipality_code
WHERE T4.department_code = '54'
ORDER BY municipality;
**/