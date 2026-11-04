-- Exercise 2-b
-- Tablas: farm.farmers, farm.farms, buy.deliveries, buy.quality analyses.
-- b) A partir del literal a), muestre ´unicamente los asociados que no tienen ninguna finca registrada.

SELECT
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T2.farm_name AS farm
FROM farm.farmers AS T1
LEFT JOIN farm.farms AS T2
     ON T1.farmer_id = T2.farmer_id
WHERE T1.municipality_code ='54518'
    AND T2.farm_id IS NULL;

/**
 document | first_name | last_name | farm
----------+------------+-----------+------
(0 filas)
All registered farmers in municipality 54518 currently have at least one farm associated.
**/