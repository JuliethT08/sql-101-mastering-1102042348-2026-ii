-- Exercise 10-c
-- Tablas: pay.settlements, pay.payments, buy.deliveries, buy.collection_points.
-- c) Usando la función dentro de un SUM, consulte por cada punto de compra (mostrando su nombre) el número de 
--liquidaciones no anuladas de las entregas de ese día y el saldo total pendiente, mostrando solo los puntos con saldo 
--mayor que 0, con los alias collection_point, settlements_count y total_balance_cop, ordenados por saldo de mayor a 
--menor. (Tres tablas.)

SELECT 
    T3.point_name AS collection_point,
    COUNT(T1.settlement_id) AS settlements_count,
    SUM(pay.fn_settlement_balance(T1.settlement_id)) AS total_balance_cop
FROM pay.settlements AS T1
INNER JOIN buy.deliveries AS T2
    ON T1.delivery_id = T2.delivery_id
INNER JOIN buy.collection_points AS T3
    ON T2.collection_point_id = T3.collection_point_id
WHERE DATE(T2.delivered_at) = '2026-09-30'  
  AND T1.status <> 'cancelled'
GROUP BY T3.point_name
HAVING SUM(pay.fn_settlement_balance(T1.settlement_id)) > 0
ORDER BY total_balance_cop DESC;

/**
            collection_point            | settlements_count | total_balance_cop
----------------------------------------+-------------------+-------------------
 Punto de Compra San Francisco 1        |                 2 |        8483555.66
 Punto de Compra El Banco 1             |                 3 |        7874484.05
 Punto de Compra San Andrés De Tumaco 1 |                 2 |        7376967.21
 Punto de Compra Cajibío 3              |                 3 |        6400728.72
 Punto de Compra Manzanares 1           |                 2 |        6094824.45
 Punto de Compra Puerto Tejada 1        |                 2 |        6051013.94
 Punto de Compra El Bagre 1             |                 3 |        5013706.66
 Punto de Compra Sáchica 1              |                 1 |        4965142.70
 Punto de Compra Algeciras 1            |                 2 |        4135855.75
 Punto de Compra Turbo 1                |                 1 |        4023811.68
 Punto de Compra Bochalema 1            |                 2 |        3835395.90
 Punto de Compra Carmen De Apicalá 3    |                 1 |        3558394.56
 Punto de Compra Teruel 1               |                 2 |        3226895.19
 Punto de Compra Rioblanco 2            |                 1 |        3062643.10
 Punto de Compra Altamira 1             |                 1 |        2840302.58
 Punto de Compra Balboa 2               |                 1 |        2650830.73
 Punto de Compra Tello 1                |                 1 |        2432254.55
 Punto de Compra Herrán 2               |                 1 |        2212055.30
 Punto de Compra Popayán 1              |                 2 |        2000117.88
 Punto de Compra Tibaná 1               |                 1 |        1897343.72
 Punto de Compra Garzón 1               |                 1 |        1780119.24
 Punto de Compra Pacho 1                |                 1 |        1646071.75
 Punto de Compra El Playón 1            |                 1 |        1398228.24
 Punto de Compra Ocaña 1                |                 1 |        1313820.34
 Punto de Compra Armero Guayabal 2      |                 1 |        1296093.12
 Punto de Compra Bosconia 1             |                 1 |        1247639.70
 Punto de Compra Jambaló 1              |                 1 |        1200195.81
 Punto de Compra Villarrica 1           |                 1 |        1119580.57
 Punto de Compra Rionegro 1             |                 1 |         650532.86
(29 filas)
**/

/**
Se usa COALESCE porque hay liquidaciones a las que todavía no se les ha hecho ningún pago. Si intentamos hacer una resta 
matemática usando un valor nulo (NULL), la base de datos se confunde y arroja un resultado vacío o nulo. La función 
COALESCE(v_paid, 0) sirve por si no encuentra ningún pago registrado y el resultado es nulo, 
debe tratarlo como un cero. De esta manera, la resta se puede realizar sin problemas y nos devuelve correctamente el 
valor neto completo.

Si se ejecuta dos veces CREATE OR REPLACE FUNCTION no pasa ningún error grave. Las palabras OR REPLACE le indican a la 
base de datos que reemplace la versión antigua de la función por la nueva que se está corriendo. Esto es muy útil porque 
permite corregir o actualizar el código de la función las veces que se necesite sin tener que borrarla primero.
**/