-- Exercise 2-b
-- Tabla: farm.coffee varieties.
-- b)Consulte las variedades no resistentes a la roya de la especie arabica, ordenadas por nombre de forma descendente.

SELECT 
variety_name AS variety,
species AS species,
description AS description

FROM farm.coffee_varieties
WHERE is_rust_resistant = FALSE
    AND species='arabica'
ORDER BY variety_name DESC;

/** 
    variety    | species |                      description
---------------+---------+--------------------------------------------------------
 Típica        | arabica | Variedad tradicional de porte alto.
 Pacamara      | arabica | Cruce de Pacas y Maragogipe, grano grande.
 Maragogipe    | arabica | Variedad de grano grande.
 Geisha        | arabica | Variedad de especialidad con perfil floral.
 Caturra       | arabica | Mutación de Borbón de porte bajo y alta productividad.
 Borbón Rosado | arabica | Variedad de especialidad de fruto rosado.
 Borbón        | arabica | Variedad tradicional de buena calidad en taza.
(7 filas)
**/

