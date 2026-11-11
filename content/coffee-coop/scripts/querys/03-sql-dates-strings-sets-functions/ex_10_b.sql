-- Exercise 10-b
-- Tablas: pay.settlements, pay.payments, buy.deliveries, buy.collection_points.
-- b) Usando la función, consulte las liquidaciones de las entregas del 30 de septiembre de 2026 que no están anuladas 
--(status <> 'cancelled') y que tienen saldo mayor que 0, con el código de la liquidación, la entrega, el estado, el 
--valor neto y el saldo, con los alias settlement, delivery, settlement_status, net_cop y balance_cop, ordenadas por 
--saldo de mayor a menor.

SELECT 
    T1.settlement_id AS settlement,
    T1.delivery_id AS delivery,
    T1.status AS settlement_status,
    T1.net_amount AS net_cop,
    pay.fn_settlement_balance(T1.settlement_id) AS balance_cop
FROM pay.settlements AS T1
INNER JOIN buy.deliveries AS T2
    ON T1.delivery_id = T2.delivery_id
WHERE DATE(T2.delivered_at) = '2026-09-30'
  AND T1.status <> 'cancelled'
  AND pay.fn_settlement_balance(T1.settlement_id) > 0
ORDER BY balance_cop DESC;
/**

     settlement      |      delivery       | settlement_status |  net_cop   | balance_cop
---------------------+---------------------+-------------------+------------+-------------
 STL-20261001-000040 | DLV-20260930-000256 | pending           | 6094824.45 |  6094824.45
 STL-20261001-000057 | DLV-20260930-000105 | pending           | 6051013.94 |  6051013.94
 STL-20261003-000007 | DLV-20260930-000116 | pending           | 5349871.04 |  5349871.04
 STL-20261002-000004 | DLV-20260930-000010 | pending           | 5347247.03 |  5347247.03
 STL-20260930-000069 | DLV-20260930-000204 | pending           | 5013706.66 |  5013706.66
 STL-20261003-000001 | DLV-20260930-000023 | pending           | 4965142.70 |  4965142.70
 STL-20261002-000042 | DLV-20260930-000152 | pending           | 4693178.85 |  4693178.85
 STL-20261003-000012 | DLV-20260930-000286 | pending           | 4135855.75 |  4135855.75
 STL-20261002-000033 | DLV-20260930-000189 | pending           | 4023811.68 |  4023811.68
 STL-20261001-000033 | DLV-20260930-000179 | pending           | 3978665.28 |  3978665.28
 STL-20261002-000032 | DLV-20260930-000141 | pending           | 3835395.90 |  3835395.90
 STL-20261001-000018 | DLV-20260930-000244 | pending           | 3558394.56 |  3558394.56
 STL-20261001-000028 | DLV-20260930-000258 | partially_paid    | 5366947.21 |  3136308.63
 STL-20260930-000061 | DLV-20260930-000239 | pending           | 3062643.10 |  3062643.10
 STL-20261003-000009 | DLV-20260930-000231 | pending           | 2840302.58 |  2840302.58
 STL-20261001-000011 | DLV-20260930-000136 | pending           | 2683788.36 |  2683788.36
 STL-20261001-000032 | DLV-20260930-000148 | pending           | 2650830.73 |  2650830.73
 STL-20261001-000060 | DLV-20260930-000005 | partially_paid    | 5291841.24 |  2524613.01
 STL-20261002-000018 | DLV-20260930-000020 | pending           | 2432254.55 |  2432254.55
 STL-20261001-000006 | DLV-20260930-000003 | pending           | 2422063.44 |  2422063.44
 STL-20261002-000026 | DLV-20260930-000247 | pending           | 2212055.30 |  2212055.30
 STL-20261001-000056 | DLV-20260930-000099 | pending           | 2158422.75 |  2158422.75
 STL-20261002-000035 | DLV-20260930-000174 | partially_paid    | 6170131.44 |  2000117.88
 STL-20261001-000013 | DLV-20260930-000098 | pending           | 1897343.72 |  1897343.72
 STL-20261001-000062 | DLV-20260930-000131 | partially_paid    | 4644994.18 |  1780119.24
 STL-20261001-000020 | DLV-20260930-000207 | pending           | 1646071.75 |  1646071.75
 STL-20260930-000050 | DLV-20260930-000037 | pending           | 1398228.24 |  1398228.24
 STL-20261003-000011 | DLV-20260930-000176 | partially_paid    | 3496817.97 |  1313820.34
 STL-20261001-000003 | DLV-20260930-000289 | pending           | 1296093.12 |  1296093.12
 STL-20261002-000017 | DLV-20260930-000120 | pending           | 1247639.70 |  1247639.70
 STL-20260930-000066 | DLV-20260930-000208 | partially_paid    | 2435274.85 |  1200195.81
 STL-20261001-000055 | DLV-20260930-000154 | pending           | 1119580.57 |  1119580.57
 STL-20261003-000008 | DLV-20260930-000064 | pending           | 1068472.44 |  1068472.44
 STL-20261001-000026 | DLV-20260930-000053 | partially_paid    | 1325507.04 |   650532.86
(34 filas)
**/