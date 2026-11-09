-- Exercise 5-b
-- Tablas: farm.coffee_varieties, geo.municipalities, geo.departments.
-- b) Consulte el municipio de Norte de Santander con el nombre más largo y su longitud, con los alias municipality y name_length. Si hay empate, debe salir el primero en orden alfabético (LIMIT 1).

SELECT 
    T1.municipality_name AS municipality,
    LENGTH(T1.municipality_name) AS name_length
FROM geo.municipalities AS T1
WHERE T1.department_code = '54'
ORDER BY name_length DESC, T1.municipality_name
LIMIT 1;

/**
   municipality    | name_length
-------------------+-------------
 Villa Del Rosario |          17
(1 fila)
**/