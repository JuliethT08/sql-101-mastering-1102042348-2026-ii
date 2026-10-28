-- Exercise 3 - c
--farm.certifications.
--c) Muestre solo las certificaciones cuya prima por kg sea mayor o igual a 350 COP.

SELECT 
    T1.certification_name AS certificacion,
    T1.issuing_body AS issuer,
    T1.premium_per_kg AS premium_per_kg_cop
FROM farm.certifications AS T1
WHERE T1.premium_per_kg >= 350
ORDER BY T1.premium_per_kg DESC;

/**
 certificacion |              issuer               | premium_per_kg_cop
---------------+-----------------------------------+--------------------
 Orgánico      | Ente certificador orgánico        |             800.00
 Bird Friendly | Smithsonian Migratory Bird Center |             500.00
 Fairtrade     | Fairtrade International           |             400.00
 Nespresso AAA | Nespresso / Rainforest Alliance   |             350.00
(4 filas)
**/