-- Exercise 8-b
-- Tabla: buy.deliveries.
-- El jefe de bodega revisa al cierre de mes las entregas recibidas el 30 de septiembre de 2026.
-- b) Del mismo dıa, consulte las entregas rechazadas, agregando una columna
-- calculada con el peso promedio por bulto (gross weight kg / bag count) con
-- el alias avg kg per bag.

SELECT
    T1.delivery_id AS delivery,
    T1.gross_weight_kg AS gross_weight_kg,
    T1.bag_count AS bag_count,
    T1.gross_weight_kg / T1.bag_count AS avg_kg_per_bag
FROM buy.deliveries AS T1
WHERE T1.delivery_id LIKE 'DLV-20260930-%'
    AND T1.status = 'rejected';

/**
    delivery       | gross_weight_kg | bag_count |   avg_kg_per_bag
---------------------+-----------------+-----------+---------------------
 DLV-20260930-000006 |          139.81 |         3 | 46.6033333333333333
 DLV-20260930-000070 |          147.13 |         3 | 49.0433333333333333
 DLV-20260930-000083 |           89.95 |         2 | 44.9750000000000000
 DLV-20260930-000109 |          311.88 |         5 | 62.3760000000000000
 DLV-20260930-000147 |           66.42 |         1 | 66.4200000000000000
 DLV-20260930-000165 |          348.59 |         6 | 58.0983333333333333
 DLV-20260930-000214 |          177.63 |         3 | 59.2100000000000000
 DLV-20260930-000223 |          338.32 |         7 | 48.3314285714285714
 DLV-20260930-000253 |          253.15 |         5 | 50.6300000000000000
(9 filas)
**/

