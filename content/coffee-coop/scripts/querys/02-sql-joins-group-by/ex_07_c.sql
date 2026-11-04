-- Exercise 7-c
-- Tablas: buy.deliveries, buy.quality analyses, farm.certifications, farm.farmers.
-- c) De la tabla de asociados del municipio 54518, consulte el total de asociados (COUNT(*)) y el total de asociados con -- correo registrado (COUNT sobre la columna del correo), con los alias total farmers y farmers with email. En
-- el documento Markdown, explique por qu´e los dos conteos son distintos.

SELECT 
    COUNT(*) AS total_farmers,
    COUNT(T1.email) AS farmers_with_email
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518';

/**
 total_farmers | farmers_with_email
---------------+--------------------
           230 |                165
(1 fila)
**/