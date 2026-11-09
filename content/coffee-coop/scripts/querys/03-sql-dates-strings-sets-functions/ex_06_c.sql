-- Exercise 6-c
-- Tablas: farm.farmers, buy.collection_points, geo.municipalities, buy.deliveries.
-- c) De las entregas del 30 de septiembre de 2026 recibidas en el Punto de Compra Bochalema 1 (collection_point_id = 163), consulte el código completo y, por separado, su prefijo, la fecha y el consecutivo extraídos con SUBSTRING, junto con la fecha y hora de recepción, con los alias delivery, prefix, date_code, sequence_code y delivered_at.

SELECT 
    T1.delivery_id AS delivery,
    SUBSTRING(T1.delivery_id FROM 1 FOR 3) AS prefix,
    SUBSTRING(T1.delivery_id FROM 5 FOR 8) AS date_code,
    SUBSTRING(T1.delivery_id FROM 14 FOR 6) AS sequence_code,
    T1.delivered_at AS delivered_at
FROM buy.deliveries AS T1
WHERE T1.collection_point_id = 163
  AND EXTRACT(year FROM T1.delivered_at) = 2026
  AND EXTRACT(month FROM T1.delivered_at) = 9
  AND EXTRACT(day FROM T1.delivered_at) = 30;

  /**
      delivery       | prefix | date_code | sequence_code |    delivered_at
---------------------+--------+-----------+---------------+---------------------
 DLV-20260930-000233 | DLV    | 20260930  | 000233        | 2026-09-30 14:36:39
 DLV-20260930-000063 | DLV    | 20260930  | 000063        | 2026-09-30 08:04:43
 DLV-20260930-000077 | DLV    | 20260930  | 000077        | 2026-09-30 08:53:06
 DLV-20260930-000141 | DLV    | 20260930  | 000141        | 2026-09-30 11:11:53
(4 filas)
**/