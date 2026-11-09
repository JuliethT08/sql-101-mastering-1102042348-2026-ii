-- Exercise 6-b
-- Tablas: farm.farmers, buy.collection_points, geo.municipalities, buy.deliveries.
-- b) Consulte una frase por cada punto de compra de Norte de Santander con el nombre del punto, el texto ' recibe café en ' y el nombre de su municipio (por ejemplo Punto de Compra Bochalema 1 recibe café en Bochalema), con el alias description, ordenadas por nombre del punto.

SELECT 
    CONCAT(T1.point_name, ' recibe café en ', T2.municipality_name) AS description
FROM buy.collection_points AS T1
INNER JOIN geo.municipalities AS T2
    ON T1.municipality_code = T2.municipality_code
WHERE T2.department_code = '54'
ORDER BY T1.point_name;

/**
                      description
--------------------------------------------------------
 Punto de Compra Bochalema 1 recibe café en Bochalema
 Punto de Compra Chinácota 1 recibe café en Chinácota
 Punto de Compra Convención 1 recibe café en Convención
 Punto de Compra El Carmen 1 recibe café en El Carmen
 Punto de Compra El Carmen 2 recibe café en El Carmen
 Punto de Compra El Zulia 1 recibe café en El Zulia
 Punto de Compra Herrán 1 recibe café en Herrán
 Punto de Compra Herrán 2 recibe café en Herrán
 Punto de Compra Ocaña 1 recibe café en Ocaña
 Punto de Compra Sardinata 1 recibe café en Sardinata
(10 filas)
**/