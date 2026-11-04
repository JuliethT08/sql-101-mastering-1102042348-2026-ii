-- Exercise 9-b
-- Tablas: geo.departments, geo.municipalities, buy.deliveries, buy.collection points, farm.farms, buy.quality analyses.
--b) De las entregas del 30 de septiembre de 2026, consulte los puntos de compra (por nombre) que recibieron m´as de 1000 -- kg de peso bruto ese d´ıa, con los alias collection point y total gross kg, ordenados de mayor a menor.

SELECT 
    T2.point_name AS collection_point,
    SUM(T1.gross_weight_kg) AS total_gross_kg
FROM buy.deliveries AS T1
INNER JOIN buy.collection_points AS T2
    ON T1.collection_point_id = T2.collection_point_id
WHERE T1.delivery_id LIKE 'DLV-20260930-%'
GROUP BY T2.point_name
HAVING SUM(T1.gross_weight_kg) > 1000
ORDER BY total_gross_kg DESC;

/**
            collection_point            | total_gross_kg
----------------------------------------+----------------
 Punto de Compra Algeciras 1            |        1093.81
 Punto de Compra Coromoro 1             |        1079.24
 Punto de Compra San Andrés De Tumaco 1 |        1014.27
(3 filas)
**/