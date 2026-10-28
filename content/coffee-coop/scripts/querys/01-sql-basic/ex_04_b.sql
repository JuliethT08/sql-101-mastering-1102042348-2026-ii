-- Exercise 4 - b
--Tabla: geo.municipalities.
-- b) Del mismo departamento, consulte ´unicamente los municipios cuyo nombre
--comienza con la palabra San.

SELECT 
    T1.municipality_code AS municipality_code,
    T1.municipality_name AS municipality,
    T1.department_code
FROM geo.municipalities AS T1
WHERE T1.department_code ='54'
    AND T1.municipality_name LIKE 'San%'
ORDER BY T1.municipality_name;

/**
 municipality_code | municipality | department_code
-------------------+--------------+-----------------
 54670             | San Calixto  | 54
 54673             | San Cayetano | 54
 54680             | Santiago     | 54
(3 filas)
**/