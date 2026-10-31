-- Exercise 1-b
-- Table:geo.departments.
-- b)Consulte unicamente el codigo y el nombre del departamento, renombrando las
-- columnas como code y department.

SELECT
    T1.department_code AS code,
    T1.department_name AS deparment
FROM geo.departments AS T1;



/**
 code |                        deparment
------+----------------------------------------------------------
 05   | Antioquia
 08   | Atlántico
 11   | Bogotá, D.C.
 13   | Bolívar
 15   | Boyacá
 17   | Caldas
 18   | Caquetá
 19   | Cauca
 20   | Cesar
 23   | Córdoba
 25   | Cundinamarca
 27   | Chocó
 41   | Huila
 44   | La Guajira
 47   | Magdalena
 50   | Meta
 52   | Nariño
 54   | Norte De Santander
 63   | Quindio
 66   | Risaralda
 68   | Santander
 70   | Sucre
 73   | Tolima
 76   | Valle Del Cauca
 81   | Arauca
 85   | Casanare
 86   | Putumayo
 88   | Archipiélago De San Andrés, Providencia Y Santa Catalina
 91   | Amazonas
 94   | Guainía
 95   | Guaviare
 97   | Vaupés
 99   | Vichada
(33 filas)
**/