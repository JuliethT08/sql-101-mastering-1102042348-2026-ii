-- Exercise 4 - a
--Tabla: geo.municipalities.
-- a) Consulte el codigo y el nombre de los municipios de Norte de Santander, con
-- los alias municipality code y municipality, ordenados alfab´eticamente.

SELECT 
    T1.municipality_code AS municipality_code,
    T1.municipality_name AS municipality,
    T1.department_code
FROM geo.municipalities AS T1
WHERE T1.department_code ='54'
ORDER BY T1.municipality_name;

/**
 municipality_code |   municipality    | department_code
-------------------+-------------------+-----------------
 54003             | Ábrego            | 54
 54051             | Arboledas         | 54
 54099             | Bochalema         | 54
 54109             | Bucarasica        | 54
 54128             | Cáchira           | 54
 54125             | Cácota            | 54
 54172             | Chinácota         | 54
 54174             | Chitagá           | 54
 54206             | Convención        | 54
 54001             | Cúcuta            | 54
 54223             | Cucutilla         | 54
 54239             | Durania           | 54
 54245             | El Carmen         | 54
 54250             | El Tarra          | 54
 54261             | El Zulia          | 54
 54313             | Gramalote         | 54
 54344             | Hacarí            | 54
 54347             | Herrán            | 54
 54385             | La Esperanza      | 54
 54398             | La Playa          | 54
 54377             | Labateca          | 54
 54405             | Los Patios        | 54
 54418             | Lourdes           | 54
 54480             | Mutiscua          | 54
 54498             | Ocaña             | 54
 54518             | Pamplona          | 54
 54520             | Pamplonita        | 54
 54553             | Puerto Santander  | 54
 54599             | Ragonvalia        | 54
 54660             | Salazar           | 54
 54670             | San Calixto       | 54
 54673             | San Cayetano      | 54
 54680             | Santiago          | 54
 54720             | Sardinata         | 54
 54743             | Silos             | 54
 54800             | Teorama           | 54
 54810             | Tibú              | 54
 54820             | Toledo            | 54
 54871             | Villa Caro        | 54
 54874             | Villa Del Rosario | 54
(40 filas)
**/