-- Exercise 8-b
-- Tablas: geo.departments, geo.municipalities, buy.deliveries, buy.collection points.
-- b) De las entregas del 30 de septiembre de 2026, consulte por cada tipo de caf´e el n´umero de entregas y el peso --bruto total, con los alias coffee type, deliveries count y total gross kg, ordenados por peso total de mayor a menor.

SELECT 
    T1.coffee_type AS coffee_type,
    COUNT(T1.delivery_id) AS deliveries_count,
    SUM(T1.gross_weight_kg) AS total_gross_kg
FROM buy.deliveries AS T1
WHERE T1.delivery_id LIKE 'DLV-20260930-%'
GROUP BY T1.coffee_type
ORDER BY total_gross_kg DESC;

/**
  coffee_type  | deliveries_count | total_gross_kg
---------------+------------------+----------------
 dry_parchment |              278 |       48246.55
 cherry        |               10 |        2053.16
 wet_parchment |               12 |        1891.25
(3 filas)
**/