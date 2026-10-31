-- Exercise 1-c
-- Table:geo.departments.
-- c)Repita el literal b) ordenando el resultado alfab´eticamente por el nombre del
--departamento. 

SELECT
    T1.department_code AS code,
    T1.department_name AS deparment
FROM geo.departments AS T1
ORDER BY T1.department_name;


/**
 code |                        deparment
------+----------------------------------------------------------
 91   | Amazonas
 05   | Antioquia
 81   | Arauca
 88   | Archipiélago De San Andrés, Providencia Y Santa Catalina
 08   | Atlántico
 11   | Bogotá, D.C.
 13   | Bolívar
 15   | Boyacá
 17   | Caldas
 18   | Caquetá
 85   | Casanare
 19   | Cauca
 20   | Cesar
 27   | Chocó
 23   | Córdoba
 25   | Cundinamarca
 94   | Guainía
 95   | Guaviare
 41   | Huila
 44   | La Guajira
 47   | Magdalena
 50   | Meta
 52   | Nariño
 54   | Norte De Santander
 86   | Putumayo
 63   | Quindio
 66   | Risaralda
 68   | Santander
 70   | Sucre
 73   | Tolima
 76   | Valle Del Cauca
 97   | Vaupés
 99   | Vichada
(33 filas)
**/