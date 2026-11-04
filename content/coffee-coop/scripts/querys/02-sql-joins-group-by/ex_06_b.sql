-- Exercise 6-b
-- Tablas: farm.farms (como T1 y T2), farm.farmers (como T1 y T2).
-- b) Consulte los pares de asociados del municipio 54518 que tienen el mismo primer apellido, mostrando el apellido y --los dos nombres completos, con los alias last name, farmer a y farmer b. Cada par una sola vez.

SELECT 
    T1.last_name AS last_name,
    T1.first_name AS farmer_a,
    T2.first_name AS farmer_b
FROM farm.farmers AS T1
INNER JOIN farm.farmers AS T2
    ON T1.last_name = T2.last_name
   AND T1.municipality_code = '54518'
   AND T2.municipality_code = '54518'
   AND T1.farmer_id < T2.farmer_id
ORDER BY T1.last_name;

/**
     last_name      |    farmer_a    | farmer_b
--------------------+----------------+----------
 Bastidas Rodríguez | Alberto        | Antonio
 Díaz Cuéllar       | Inés Lucía     | Fabio
 Flórez González    | Mónica Claudia | Myriam
 Mejía Vera         | Nelson Samuel  | Elsa
 Valencia Moreno    | Teresa Adriana | Myriam
(5 filas)
**/