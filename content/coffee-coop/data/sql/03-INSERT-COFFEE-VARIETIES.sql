-- farm.coffee_varieties: rows 1 to 12 of 12
BEGIN;
INSERT INTO farm.coffee_varieties (variety_id, variety_name, species, is_rust_resistant, description) VALUES
(1, 'Castillo', 'arabica', TRUE, 'Variedad colombiana resistente a la roya, la más sembrada del país.'),
(2, 'Colombia', 'arabica', TRUE, 'Variedad compuesta resistente a la roya, antecesora de Castillo.'),
(3, 'Caturra', 'arabica', FALSE, 'Mutación de Borbón de porte bajo y alta productividad.'),
(4, 'Cenicafé 1', 'arabica', TRUE, 'Variedad de porte bajo con resistencia a la roya.'),
(5, 'Típica', 'arabica', FALSE, 'Variedad tradicional de porte alto.'),
(6, 'Borbón', 'arabica', FALSE, 'Variedad tradicional de buena calidad en taza.'),
(7, 'Tabi', 'arabica', TRUE, 'Variedad de porte alto resistente a la roya.'),
(8, 'Geisha', 'arabica', FALSE, 'Variedad de especialidad con perfil floral.'),
(9, 'Borbón Rosado', 'arabica', FALSE, 'Variedad de especialidad de fruto rosado.'),
(10, 'Maragogipe', 'arabica', FALSE, 'Variedad de grano grande.'),
(11, 'Pacamara', 'arabica', FALSE, 'Cruce de Pacas y Maragogipe, grano grande.'),
(12, 'Robusta', 'robusta', TRUE, 'Especie Coffea canephora, de mayor contenido de cafeína.');
COMMIT;
