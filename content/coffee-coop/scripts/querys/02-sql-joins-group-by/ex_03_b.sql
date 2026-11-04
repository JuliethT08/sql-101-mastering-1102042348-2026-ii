-- Exercise 3-b
-- Tablas: buy.deliveries, buy.collection points, farm.plot varieties, farm.coffee varieties.
-- b) A partir del literal a), muestre ´unicamente los puntos de compra que no recibieron entregas ese dıa.

SELECT
    T2.point_name AS collection_point,
    T1.delivery_id AS delivery,
    T1.gross_weight_kg AS gross_weight_kg
FROM buy.deliveries AS T1
RIGHT JOIN buy.collection_points AS T2
    ON T1.collection_point_id = T2.collection_point_id
    AND T1.delivery_id LIKE 'DLV-20260930-%'
WHERE T1.delivery_id IS NULL
ORDER BY T2.point_name;

/**
           collection_point           | delivery | gross_weight_kg
--------------------------------------+----------+-----------------
 Punto de Compra Aipe 1               |          |
 Punto de Compra Aipe 2               |          |
 Punto de Compra Andalucía 1          |          |
 Punto de Compra Apía 1               |          |
 Punto de Compra Armero Guayabal 1    |          |
 Punto de Compra Belmira 1            |          |
 Punto de Compra Caldono 1            |          |
 Punto de Compra Caloto 1             |          |
 Punto de Compra Carmen De Apicalá 2  |          |
 Punto de Compra Chinácota 1          |          |
 Punto de Compra Circasia 1           |          |
 Punto de Compra El Tambo 2           |          |
 Punto de Compra Guatapé 1            |          |
 Punto de Compra Guática 2            |          |
 Punto de Compra Herrán 1             |          |
 Punto de Compra Hobo 1               |          |
 Punto de Compra Icononzo 1           |          |
 Punto de Compra La Argentina 1       |          |
 Punto de Compra La Gloria 1          |          |
 Punto de Compra Marulanda 1          |          |
 Punto de Compra Marulanda 2          |          |
 Punto de Compra Murillo 1            |          |
 Punto de Compra Pailitas 1           |          |
 Punto de Compra Pelaya 2             |          |
 Punto de Compra Policarpa 1          |          |
 Punto de Compra Quinchía 1           |          |
 Punto de Compra Rioblanco 1          |          |
 Punto de Compra Roncesvalles 1       |          |
 Punto de Compra Salamina 1           |          |
 Punto de Compra San Vicente Ferrer 1 |          |
 Punto de Compra Tarqui 1             |          |
 Punto de Compra Tesalia 3            |          |
 Punto de Compra Toca 1               |          |
 Punto de Compra Urumita 1            |          |
 Punto de Compra Valparaíso 1         |          |
 Punto de Compra Villa Rica 1         |          |
 Punto de Compra Villahermosa 1       |          |
 Punto de Compra Yaguará 1            |          |
(38 filas)
**/