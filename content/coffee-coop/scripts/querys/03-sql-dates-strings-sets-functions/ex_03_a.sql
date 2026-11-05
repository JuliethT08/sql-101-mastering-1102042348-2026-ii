-- Exercise 3-a
-- Tablas: buy.deliveries, buy.quality_analyses.
-- a) De las entregas de septiembre de 2026 ( filtre con EXTRACT(year ...) y EXTRACT(month ...), no con LIKE), consulte por cada día de la semana el número de entregas y el peso bruto total, con los alias day_of_week, deliveries_count y total_gross_kg, ordenados por día de la semana.

SELECT 
    EXTRACT(dow FROM T1.delivered_at) AS day_of_week,
    COUNT(T1.delivery_id) AS deliveries_count,
    SUM(T1.gross_weight_kg) AS total_gross_kg
FROM buy.deliveries AS T1
WHERE EXTRACT(year FROM T1.delivered_at) = 2026
  AND EXTRACT(month FROM T1.delivered_at) = 9
GROUP BY EXTRACT(dow FROM T1.delivered_at)
ORDER BY day_of_week;

/**
 day_of_week | deliveries_count | total_gross_kg
-------------+------------------+----------------
           0 |             1230 |      221024.65
           1 |             1234 |      221199.72
           2 |             1515 |      263977.32
           3 |             1511 |      269496.31
           4 |             1250 |      221423.80
           5 |             1237 |      219113.26
           6 |             1207 |      217700.09
(7 filas)
**/