-- Exercise 9-a
-- Tablas: buy.deliveries, buy.collection_points, farm.farmers.
--a) Cree la función buy.fn_count_deliveries(p_point_name VARCHAR, p_date DATE) que devuelva (RETURNS INT) el número de 
--entregas que recibió el punto de compra con ese nombre en esa fecha. Use una variable v_total y SELECT COUNT(*) INTO --v_total. Pruébela con 'Punto de Compra Bochalema 1' y el 30 de septiembre de 2026, con el alias deliveries_count.

CREATE OR REPLACE FUNCTION buy.fn_count_deliveries(
    p_point_name VARCHAR,
    p_date DATE
)
RETURNS INT
LANGUAGE plpgsql
AS $$
DECLARE
    v_total INT;
BEGIN
    SELECT COUNT(T1.delivery_id)
    INTO v_total
    FROM buy.deliveries AS T1
    INNER JOIN buy.collection_points AS T2
        ON T1.collection_point_id = T2.collection_point_id
    WHERE T2.point_name = p_point_name
      AND T1.delivered_at::DATE = p_date;
      
    RETURN v_total;
END;
$$;

SELECT 
    buy.fn_count_deliveries('Punto de Compra Bochalema 1', DATE '2026-09-30') AS deliveries_count;

/**
 deliveries_count
------------------
   4
(1 fila)
**/
