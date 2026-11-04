-- Exercise 3-c
-- Tablas: buy.deliveries, buy.collection points, farm.plot varieties, farm.coffee varieties.
-- c) Escribiendo farm.plot varieties como T1 y farm.coffee varieties como
--T2, use RIGHT JOIN para listar las variedades que no est´an sembradas en ningun lote, con los alias variety y species.

SELECT
    T2.variety_name AS variety,
    T2.species AS species
FROM farm.plot_varieties AS T1
RIGHT JOIN farm.coffee_varieties AS T2
    ON T1.variety_id = T2.variety_id
WHERE T1.plot_variety_id IS NULL
ORDER BY T2.variety_name;

/**
 variety | species
---------+---------
(0 filas)
**/