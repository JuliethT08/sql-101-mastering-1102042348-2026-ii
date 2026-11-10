-- Exercise 8-c
-- Tablas: farm.farms, buy.collection_points, geo.municipalities, buy.deliveries.
-- c) Consulte el nombre y la vereda de las fincas del municipio 54518 que entregaron café en 2025 pero no en 2026 
-- (use EXTRACT(year ...)), con los alias farm y rural_district, ordenadas por finca y vereda.

SELECT 
    T2.farm_name AS farm,
    T2.rural_district AS rural_district
FROM buy.deliveries AS T1
INNER JOIN farm.farms AS T2
    ON T1.farm_id = T2.farm_id
WHERE T2.municipality_code = '54518'
  AND EXTRACT(year FROM T1.delivered_at) = 2025
EXCEPT
SELECT 
    T4.farm_name AS farm,
    T4.rural_district AS rural_district
FROM buy.deliveries AS T3
INNER JOIN farm.farms AS T4
    ON T3.farm_id = T4.farm_id
WHERE T4.municipality_code = '54518'
  AND EXTRACT(year FROM T3.delivered_at) = 2026
ORDER BY farm, rural_district;

/**
     farm      |    rural_district
---------------+----------------------
 Agua Bonita   | García
 Altamira      | El Alizal
 Bellavista    | Cunuba
 Cafetal Viejo | Caima
 Cafetal Viejo | Cunuba
 Cafetal Viejo | San José De Tonchala
 El Arrayán    | Iscaligua
 El Brillante  | Peñas
 El Diamante   | San José De Tonchala
 El Encanto    | Cunuba
 El Guamo      | Fontibón
 El Guayabo    | Caima
 El Guayabo    | El Rosal
 El Higuerón   | Caima
 El Higuerón   | La ┌Pa
 El Horizonte  | El Totumo
 El Horizonte  | Tampanqueba
 El Jardín     | Cabecera Municipal
 El Jardín     | El Escorial
 El Jardín     | La Legua
 El Manantial  | Santa Matilde
 El Mango      | La Legua
 El Mirador    | El Palchal
 El Porvenir   | Iscaligua
 El Porvenir   | La ┌Pa
 El Recreo     | La Legua
 El Recuerdo   | El Escorial
 El Refugio    | Peñas
 El Retiro     | Sabaneta Alta
 El Rosal      | Cabecera Municipal
 El Tesoro     | San Francisco
 El Vergel     | Cabecera Municipal
 La Argentina  | El Escorial
 La Argentina  | Lengua
 La Argentina  | San José De Tonchala
 La Aurora     | La ┌Pa
 La Cabaña     | Cunuba
 La Cabaña     | Llano Castro
 La Cabaña     | Sabagua
 La Carolina   | Tampanqueba
 La Ceiba      | San Francisco
 La Divisa     | Cabecera Municipal
 La Esperanza  | El Palchal
 La Floresta   | San José De Tonchala
 La Fortuna    | El Palchal
 La Gaitana    | Sabagua
 La Granja     | El Palchal
 La Loma       | Navarro
 La Milagrosa  | Cabecera Municipal
 La Milagrosa  | El Alizal
 La Montaña    | Monteadentro
 La Palma      | Cunuba
 La Primavera  | Sabagua
 La Primavera  | Tampanqueba
 La Quebrada   | El Totumo
 La Quebrada   | Navarro
 La Selva      | Peñas
 La Selva      | Sabagua
 La Siberia    | García
 La Unión      | Llano Castro
 La Unión      | Santa Matilde
 La Victoria   | El Escorial
 La Victoria   | La ┌Pa
 Las Acacias   | Cunuba
 Las Brisas    | Alto Grande
 Las Delicias  | Caima
 Las Palmas    | El Rosal
 Los Guaduales | Santa Matilde
 Los Laureles  | Lengua
 Los Laureles  | Peñas
 Miraflores    | El Rosal
 Monteverde    | El Alizal
 Monteverde    | El Palchal
 San Antonio   | Monteadentro
 San José      | Iscaligua
 San Rafael    | San José De Tonchala
 Tierra Linda  | El Palchal
 Villa Hermosa | Cunuba
 Villa Hermosa | La Legua
(79 filas)
**/
