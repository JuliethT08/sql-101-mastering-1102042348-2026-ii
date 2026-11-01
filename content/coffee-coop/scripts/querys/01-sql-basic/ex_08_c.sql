--Exercise 08-c
-- Tabla: buy.deliveries.
-- c) Del mismo d´ıa, consulte las entregas cuyo tipo de caf´e sea wet parchment o
-- cherry (use IN), ordenadas por peso bruto de mayor a menor.

SELECT 
    T1.delivery_id AS delivery,
    T1.coffee_type AS coffee_type,
    T1.gross_weight_kg AS gross_weight_kg
FROM buy.deliveries AS T1
WHERE T1.delivery_id LIKE 'DLV-20260930-%' 
    AND T1.coffee_type IN ('wet_parchment', 'cherry')
ORDER BY T1.gross_weight_kg DESC;

/**
      delivery       |  coffee_type  | gross_weight_kg
---------------------+---------------+-----------------
 DLV-20260930-000081 | cherry        |          475.13
 DLV-20260930-000187 | cherry        |          339.30
 DLV-20260930-000105 | wet_parchment |          277.63
 DLV-20260930-000028 | wet_parchment |          258.00
 DLV-20260930-000133 | cherry        |          254.83
 DLV-20260930-000094 | cherry        |          246.96
 DLV-20260930-000129 | wet_parchment |          206.71
 DLV-20260930-000161 | wet_parchment |          197.04
 DLV-20260930-000046 | wet_parchment |          186.73
 DLV-20260930-000248 | cherry        |          159.89
 DLV-20260930-000052 | wet_parchment |          154.42
 DLV-20260930-000260 | cherry        |          149.08
 DLV-20260930-000217 | wet_parchment |          132.86
 DLV-20260930-000237 | wet_parchment |          128.69
 DLV-20260930-000071 | cherry        |          123.86
 DLV-20260930-000003 | wet_parchment |          112.33
 DLV-20260930-000100 | cherry        |          106.62
 DLV-20260930-000019 | wet_parchment |          106.26
 DLV-20260930-000280 | cherry        |           99.14
 DLV-20260930-000297 | cherry        |           98.35
 DLV-20260930-000147 | wet_parchment |           66.42
 DLV-20260930-000037 | wet_parchment |           64.16
(22 filas)
**/