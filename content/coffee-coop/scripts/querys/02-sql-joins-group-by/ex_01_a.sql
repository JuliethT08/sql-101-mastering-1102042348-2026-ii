-- Exercise 1-a
-- Tablas: geo.municipalities, geo.departments, farm.farms, farm.farmers,
-- buy.deliveries, buy.collection points.
-- a) Consulte el codigo y el nombre de los municipios de Norte de Santander
-- (codigo DANE 54) junto con el nombre del departamento, con los alias
-- municipality code, municipality y department, ordenados alfabeticamente
-- por municipio.

SELECT
    T1.municipality_code AS municipality_code,
    T1.municipality_name AS municipality,
    T2.department_name AS department
FROM geo.municipalities AS T1
    INNER JOIN geo.departments AS T2
    ON T1.department_code = T2.department_code
WHERE T1.department_code = '54'
ORDER BY T1.municipality_name;

/**
 municipality_code |   municipality    |     department
-------------------+-------------------+--------------------
 54003             | Ábrego            | Norte De Santander
 54051             | Arboledas         | Norte De Santander
 54099             | Bochalema         | Norte De Santander
 54109             | Bucarasica        | Norte De Santander
 54128             | Cáchira           | Norte De Santander
 54125             | Cácota            | Norte De Santander
 54172             | Chinácota         | Norte De Santander
 54174             | Chitagá           | Norte De Santander
 54206             | Convención        | Norte De Santander
 54001             | Cúcuta            | Norte De Santander
 54223             | Cucutilla         | Norte De Santander
 54239             | Durania           | Norte De Santander
 54245             | El Carmen         | Norte De Santander
 54250             | El Tarra          | Norte De Santander
 54261             | El Zulia          | Norte De Santander
 54313             | Gramalote         | Norte De Santander
 54344             | Hacarí            | Norte De Santander
 54347             | Herrán            | Norte De Santander
 54385             | La Esperanza      | Norte De Santander
 54398             | La Playa          | Norte De Santander
 54377             | Labateca          | Norte De Santander
 54405             | Los Patios        | Norte De Santander
 54418             | Lourdes           | Norte De Santander
 54480             | Mutiscua          | Norte De Santander
 54498             | Ocaña             | Norte De Santander
 54518             | Pamplona          | Norte De Santander
 54520             | Pamplonita        | Norte De Santander
 54553             | Puerto Santander  | Norte De Santander
 54599             | Ragonvalia        | Norte De Santander
 54660             | Salazar           | Norte De Santander
 54670             | San Calixto       | Norte De Santander
 54673             | San Cayetano      | Norte De Santander
 54680             | Santiago          | Norte De Santander
 54720             | Sardinata         | Norte De Santander
 54743             | Silos             | Norte De Santander
 54800             | Teorama           | Norte De Santander
 54810             | Tibú              | Norte De Santander
 54820             | Toledo            | Norte De Santander
 54871             | Villa Caro        | Norte De Santander
 54874             | Villa Del Rosario | Norte De Santander
(40 filas)
**/