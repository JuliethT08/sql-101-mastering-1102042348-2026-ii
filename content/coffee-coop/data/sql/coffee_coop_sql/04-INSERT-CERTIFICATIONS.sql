-- farm.certifications: rows 1 to 7 of 7
BEGIN;
INSERT INTO farm.certifications (certification_id, certification_name, issuing_body, premium_per_kg) VALUES
(1, 'Rainforest Alliance', 'Rainforest Alliance', 300.00),
(2, 'Fairtrade', 'Fairtrade International', 400.00),
(3, '4C', '4C Services', 150.00),
(4, 'Orgánico', 'Ente certificador orgánico', 800.00),
(5, 'C.A.F.E. Practices', 'Starbucks / SCS Global Services', 250.00),
(6, 'Nespresso AAA', 'Nespresso / Rainforest Alliance', 350.00),
(7, 'Bird Friendly', 'Smithsonian Migratory Bird Center', 500.00);
COMMIT;
