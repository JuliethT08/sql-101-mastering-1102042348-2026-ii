-- Exercise 3-c
-- Tablas: buy.deliveries, buy.quality_analyses.
-- c) El laboratorio debe analizar cada entrega en menos de 5 horas. De las entregas del 30 de septiembre de 2026, consulte el top 10 con más horas entre la recepción y el análisis: código de la entrega, fecha y hora de recepción, fecha y hora del análisis y las horas transcurridas, calculadas con EXTRACT(epoch FROM (analyzed_at- delivered_at)) / 3600 y redondeadas a 2 decimales, con los alias delivery, delivered_at, analyzed_at y hours_to_analysis.

SELECT 
    T1.delivery_id AS delivery,
    T1.delivered_at AS delivered_at,
    T2.analyzed_at AS analyzed_at,
    ROUND((EXTRACT(epoch FROM (T2.analyzed_at - T1.delivered_at)) / 3600)::NUMERIC, 2) AS hours_to_analysis
FROM buy.deliveries AS T1
INNER JOIN buy.quality_analyses AS T2
    ON T1.delivery_id = T2.delivery_id
WHERE EXTRACT(year FROM T1.delivered_at) = 2026
  AND EXTRACT(month FROM T1.delivered_at) = 9
  AND EXTRACT(day FROM T1.delivered_at) = 30
ORDER BY hours_to_analysis DESC
LIMIT 10;

/**
      delivery       |    delivered_at     |     analyzed_at     | hours_to_analysis
---------------------+---------------------+---------------------+-------------------
 DLV-20260930-000278 | 2026-09-30 16:01:21 | 2026-09-30 21:00:04 |              4.98
 DLV-20260930-000176 | 2026-09-30 12:36:30 | 2026-09-30 17:32:52 |              4.94
 DLV-20260930-000067 | 2026-09-30 08:13:43 | 2026-09-30 13:10:07 |              4.94
 DLV-20260930-000173 | 2026-09-30 12:31:13 | 2026-09-30 17:25:53 |              4.91
 DLV-20260930-000024 | 2026-09-30 07:00:22 | 2026-09-30 11:51:06 |              4.85
 DLV-20260930-000152 | 2026-09-30 11:31:38 | 2026-09-30 16:22:26 |              4.85
 DLV-20260930-000033 | 2026-09-30 07:20:22 | 2026-09-30 12:10:16 |              4.83
 DLV-20260930-000118 | 2026-09-30 10:22:52 | 2026-09-30 15:09:28 |              4.78
 DLV-20260930-000299 | 2026-09-30 16:49:30 | 2026-09-30 21:34:48 |              4.76
 DLV-20260930-000241 | 2026-09-30 14:50:35 | 2026-09-30 19:35:06 |              4.74
(10 filas)
**/