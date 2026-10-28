-- Exercise 2 -a 
-- Tabla: farm.coffee varieties.
-- a) Consulte el nombre, la especie y la descripcion de las variedades resistentes
--a la roya, con los alias variety, species y description.

SELECT 
    variety_name AS variety,
    species AS species,
    description AS description
FROM farm.coffee_varieties
WHERE is_rust_resistant = TRUE;

/** 
  variety   | species |                             description
------------+---------+---------------------------------------------------------------------
 Castillo   | arabica | Variedad colombiana resistente a la roya, la más sembrada del país.
 Colombia   | arabica | Variedad compuesta resistente a la roya, antecesora de Castillo.
 Cenicafé 1 | arabica | Variedad de porte bajo con resistencia a la roya.
 Tabi       | arabica | Variedad de porte alto resistente a la roya.
 Robusta    | robusta | Especie Coffea canephora, de mayor contenido de cafeína.
(5 filas)
**/
