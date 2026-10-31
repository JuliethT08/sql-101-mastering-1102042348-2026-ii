-- Exercise 4-c
-- Tabla: geo.municipalities.
-- c)Consulte en todo el pa´ıs los municipios cuyo nombre contiene la palabra
-- Pamplona, sin importar mayusculas o minusculas (ILIKE).

SELECT 
T1.municipality_code AS municipality_code,
T1.municipality_name AS municipality,
T1.department_code
FROM geo.municipalities AS T1
WHERE T1.municipality_name ILIKE '%Pamplona%';

/**
 municipality_code | municipality | department_code
-------------------+--------------+-----------------
 54518             | Pamplona     | 54
(1 fila)
**/