-- Exercise 10-a
-- Tablas: pay.settlements, pay.payments, buy.deliveries, buy.collection_points.
-- a) Cree la función pay.fn_settlement_balance(p_settlement_id VARCHAR) que devuelva (RETURNS NUMERIC) el saldo de una 
--liquidación. Use dos variables: v_net, con el net_amount de la liquidación, y v_paid, con la suma de sus pagos. 
--Devuelva v_net- COALESCE(v_paid, 0). Pruébela con la liquidación 'STL-20261001-000040', con el alias balance_cop.


CREATE OR REPLACE FUNCTION pay.fn_settlement_balance(
    p_settlement_id VARCHAR
)
RETURNS NUMERIC
LANGUAGE plpgsql
AS $$
DECLARE
    v_net NUMERIC;
    v_paid NUMERIC;
BEGIN
    SELECT T1.net_amount
    INTO v_net
    FROM pay.settlements AS T1
    WHERE T1.settlement_id = p_settlement_id;
    
    SELECT SUM(T2.amount)
    INTO v_paid
    FROM pay.payments AS T2
    WHERE T2.settlement_id = p_settlement_id;
    
    RETURN v_net - COALESCE(v_paid, 0);
END;
$$;

SELECT 
    pay.fn_settlement_balance('STL-20261001-000040') AS balance_cop;

/**
 balance_cop
-------------
  6094824.45
(1 fila)
**/