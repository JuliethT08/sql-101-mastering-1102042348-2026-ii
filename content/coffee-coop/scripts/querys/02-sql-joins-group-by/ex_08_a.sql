-- Exercise 8-a
-- Tablas: geo.departments, geo.municipalities, buy.deliveries, buy.collection points.
-- a) Consulte el nombre de cada departamento y su n´umero de municipios, con los alias department y municipalities --count, ordenados de mayor a menor n´umero de municipios.

SELECT 
    T2.department_name AS department,
    COUNT(T1.municipality_code) AS municipalities_count
FROM geo.municipalities AS T1
INNER JOIN geo.departments AS T2
    ON T1.department_code = T2.department_code
GROUP BY T2.department_name
ORDER BY municipalities_count DESC;

/**
                        department                        | municipalities_count
----------------------------------------------------------+----------------------
 Antioquia                                                |                  125
 Boyacá                                                   |                  123
 Cundinamarca                                             |                  116
 Santander                                                |                   87
 Nariño                                                   |                   64
 Tolima                                                   |                   47
 Bolívar                                                  |                   46
 Valle Del Cauca                                          |                   42
 Cauca                                                    |                   42
 Norte De Santander                                       |                   40
 Huila                                                    |                   37
 Chocó                                                    |                   30
 Magdalena                                                |                   30
 Córdoba                                                  |                   30
 Meta                                                     |                   29
 Caldas                                                   |                   27
 Sucre                                                    |                   26
 Cesar                                                    |                   25
 Atlántico                                                |                   23
 Casanare                                                 |                   19
 Caquetá                                                  |                   16
 La Guajira                                               |                   15
 Risaralda                                                |                   14
 Putumayo                                                 |                   13
 Quindio                                                  |                   12
 Arauca                                                   |                    7
 Vichada                                                  |                    4
 Guaviare                                                 |                    4
 Vaupés                                                   |                    3
 Amazonas                                                 |                    2
 Archipiélago De San Andrés, Providencia Y Santa Catalina |                    2
 Guainía                                                  |                    1
 Bogotá, D.C.                                             |                    1
(33 filas)
**/