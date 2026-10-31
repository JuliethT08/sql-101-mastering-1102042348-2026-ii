-- Exeercise 5-b
-- Tabla: buy.collection points.
-- b)Consulte los puntos de compra que no tienen telefono registrado, ordenados
-- por nombre.
SELECT
    T1.point_name AS point,
    T1.address_line AS address,
    T1.municipality_code  AS municipality_code
FROM buy.collection_points
WHERE T1.phone IS NULL
ORDER BY T1.point_name;