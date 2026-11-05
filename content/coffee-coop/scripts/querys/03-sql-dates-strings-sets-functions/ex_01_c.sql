-- Exercise 1-c
-- Tabla: farm.farmers.
-- c) Consulte en una sola la, sin tabla, el resultado de NOW() y de CURRENT_DATE, con los alias now_ts y today.

SELECT 
    NOW() AS now_ts,
    CURRENT_DATE AS today;

/**
            now_ts             |   today
-------------------------------+------------
 2026-11-04 20:52:52.747422-05 | 2026-11-04
(1 fila)
**/