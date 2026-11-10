-- Exercise 9-b
-- Tablas: buy.deliveries, buy.collection_points, farm.farmers.
--b) Cree la función farm.fn_age_years(p_birth_date DATE, p_reference_date DATE) que devuelva la edad en años (RETURNS --INT) entre las dos fechas. Úsela en una consulta del top 10 de asociados del municipio 54518 que se afiliaron más 
--jóvenes, mostrando su edad al 30 de septiembre de 2026 y su edad en la fecha de a liación, con los alias document, 
--first_name, last_name, age_years y age_at_membership, ordenados por edad de afiliación.

CREATE OR REPLACE FUNCTION farm.fn_age_years(
    p_birth_date DATE,
    p_reference_date DATE
)
RETURNS INT
LANGUAGE plpgsql
AS $$
DECLARE
    v_years INT;
BEGIN
    v_years := DATE_PART('year', AGE(p_reference_date, p_birth_date));
    RETURN v_years;
END;
$$;

SELECT 
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    farm.fn_age_years(T1.birth_date, DATE '2026-09-30') AS age_years,
    farm.fn_age_years(T1.birth_date, T1.membership_date) AS age_at_membership
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'
ORDER BY age_at_membership
LIMIT 10;
/**
  document  |   first_name   |     last_name     | age_years | age_at_membership
------------+----------------+-------------------+-----------+-------------------
 92240743   | Mario          | Ríos Ibarra       |        27 |                18
 1180237528 | Ángela Beatriz | Sandoval Bermúdez |        29 |                18
 571748382  | Marleny        | Pinzón Delgado    |        35 |                18
 333176982  | Edilma         | Rivera Rivera     |        30 |                18
 1090968710 | Ruth           | Rodríguez Pérez   |        34 |                18
 455264704  | Valentina      | Mora Rangel       |        26 |                18
 211924295  | Álvaro         | Valencia Rivera   |        30 |                18
 700421194  | Teresa         | Torres Giraldo    |        27 |                18
 463842401  | Rocío          | Álvarez Cárdenas  |        26 |                18
 1196615388 | Fernando       | Burbano Flórez    |        27 |                18
(10 filas)
**/