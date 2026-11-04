-- Exercise 7-a
-- Tablas: buy.deliveries, buy.quality analyses, farm.certifications, farm.farmers.
-- a) De las entregas de ese d´ıa, consulte el n´umero total de entregas, la suma del peso bruto, el peso bruto promedio --(redondeado a 2 decimales) y el n´umero de fincas distintas que entregaron, con los alias total deliveries, total gross -- kg, avg gross kg y farms delivering.

SELECT 
    COUNT(T1.delivery_id) AS total_deliveries,
    SUM(T1.gross_weight_kg) AS total_gross_kg,
    ROUND(AVG(T1.gross_weight_kg), 2) AS avg_gross_kg,
    COUNT(DISTINCT T1.farm_id) AS farms_delivering
FROM buy.deliveries AS T1
WHERE T1.delivery_id LIKE 'DLV-20260930-%';

/**
 total_deliveries | total_gross_kg | avg_gross_kg | farms_delivering
------------------+----------------+--------------+------------------
              300 |       52190.96 |       173.97 |              300

**/