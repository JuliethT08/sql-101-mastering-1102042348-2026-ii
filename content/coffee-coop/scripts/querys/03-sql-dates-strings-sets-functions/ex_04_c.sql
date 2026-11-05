-- Exercise 4-c
-- Tablas: farm.farm_certifications, farm.certifications, farm.farms, buy.deliveries.
-- c) De las entregas de 2026, consulte por cada semana del año (week) entre la 36 y la 40 el número de entregas y el primer y último día del año (doy) de esa semana con datos, con los alias week_number, deliveries_count, first_day_of_year y last_day_of_year, ordenadas por semana.

SELECT 
    EXTRACT(week FROM T1.delivered_at) AS week_number,
    COUNT(T1.delivery_id) AS deliveries_count,
    MIN(EXTRACT(doy FROM T1.delivered_at)) AS first_day_of_year,
    MAX(EXTRACT(doy FROM T1.delivered_at)) AS last_day_of_year
FROM buy.deliveries AS T1
WHERE EXTRACT(year FROM T1.delivered_at) = 2026
  AND EXTRACT(week FROM T1.delivered_at) BETWEEN 36 AND 40
GROUP BY EXTRACT(week FROM T1.delivered_at)
ORDER BY week_number;

/**
 week_number | deliveries_count | first_day_of_year | last_day_of_year
-------------+------------------+-------------------+------------------
          36 |             2146 |               243 |              249
          37 |             2151 |               250 |              256
          38 |             2099 |               257 |              263
          39 |             2104 |               264 |              270
          40 |              928 |               271 |              273
(5 filas)
**/