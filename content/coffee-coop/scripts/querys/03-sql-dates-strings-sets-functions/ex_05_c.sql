-- Exercise 5-c
-- Tablas: farm.coffee_varieties, geo.municipalities, geo.departments.
-- c) Consulte el código y el nombre del departamento escribiendo en el WHERE exactamente 'Norte de Santander'. Luego repita la consulta comparando UPPER(T1.department_name) con UPPER('Norte de Santander'). Use los alias code y department.

SELECT 
    T1.department_code AS code,
    T1.department_name AS department
FROM geo.departments AS T1
WHERE T1.department_name = 'Norte de Santander';
/**
 code | department
------+------------
(0 filas)
**/

SELECT 
    T1.department_code AS code,
    T1.department_name AS department
FROM geo.departments AS T1
WHERE UPPER(T1.department_name) = UPPER('Norte de Santander');

/**
 code |     department
------+--------------------
 54   | Norte De Santander
(1 fila)
**/

/**
En la primera consulta, la comparación directa mediante el operador = no devuelve resultados debido a que PostgreSQL es sensible a diferencias en el uso de mayúsculas, minúsculas o variaciones de caracteres. Contrario a la segunda consulta que resulta exitosa al emplear la función UPPER() en ambos extremos de la condición, estandarizando los textos a mayúsculas sostenidas y permitiendo así una coincidencia insensible a las diferencias de formato del registro original.
**/