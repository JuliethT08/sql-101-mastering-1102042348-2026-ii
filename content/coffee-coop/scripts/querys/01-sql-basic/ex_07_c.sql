-- Exercise 7-c
-- Tabla: farm.farms.
-- c) Consulte las fincas del municipio 54518 que no tienen coordenadas geograficas
-- registradas (latitud o longitud nulas).

SELECT 
    T1.farm_name AS farm,
    T1.rural_district AS rural_district,
    T1.latitude,
    T1.longitude 
FROM farm.farms AS T1
WHERE T1.municipality_code = '54518' 
  AND (T1.latitude IS NULL 
    OR T1.longitude IS NULL);

/**
       farm       |    rural_district    | latitude | longitude
------------------+----------------------+----------+-----------
 El Recuerdo      | Alto Grande          |          |
 La Esperanza     | El Palchal           |          |
 Las Delicias     | Caima                |          |
 Los Arrayanes    | Cabecera Municipal   |          |
 El Brillante     | Peñas                |          |
 El Porvenir      | Fontibón             |          |
 La Florida       | Peñas                |          |
 Los Arrayanes    | Navarro              |          |
 El Guayabo       | San Francisco        |          |
 El Encanto       | Fontibón             |          |
 Cafetal Viejo    | San José De Tonchala |          |
 El Vergel        | Cabecera Municipal   |          |
 El Higuerón      | Caima                |          |
 Bella Vista Alta | El Rosal             |          |
 El Horizonte     | San José De Tonchala |          |
 La Esperanza     | Peñas                |          |
 El Mesón         | Iscaligua            |          |
 Las Mercedes     | Llano Castro         |          |
 Las Orquídeas    | Sabaneta Baja        |          |
 La Unión         | La Legua             |          |
 San Antonio      | Jurado               |          |
 San Luis         | Sabaneta Alta        |          |
 El Danubio       | García               |          |
 Tierra Linda     | Lengua               |          |
 Tierra Linda     | Iscaligua            |          |
 Los Laureles     | Peñas                |          |
 Bella Vista Alta | Sabaneta Baja        |          |
 La Argentina     | Peñas                |          |
 El Triunfo       | Cabecera Municipal   |          |
 La Holanda       | Cabecera Municipal   |          |
 Los Naranjos     | El Rosal             |          |
 La Floresta      | Alcaparral           |          |
 El Guamo         | Fontibón             |          |
 La Reserva       | García               |          |
 El Nogal         | El Totumo            |          |
 La Loma          | Sabagua              |          |
 El Encanto       | San José De Tonchala |          |
 El Mirador       | Fontibón             |          |
 La Siberia       | Sabaneta Baja        |          |
 El Higuerón      | La ┌Pa               |          |
 El Tesoro        | Peñas                |          |
 San Antonio      | La Legua             |          |
 La Siberia       | Monteadentro         |          |
 El Refugio       | Monteadentro         |          |
 Santa Clara      | Cunuba               |          |
 La Esperanza     | El Rosal             |          |
 La Loma          | Jurado               |          |
 La Gloria        | San José De Tonchala |          |
 La Floresta      | San José De Tonchala |          |
 El Guamo         | Fontibón             |          |
 La Cumbre        | Cabecera Municipal   |          |
 Santa Bárbara    | Caima                |          |
 La Palma         | Cunuba               |          |
 Tierra Linda     | Tampanqueba          |          |
 Los Laureles     | San José De Tonchala |          |
 San José         | Iscaligua            |          |
 El Brillante     | La Legua             |          |
 Altamira         | El Alizal            |          |
 La Primavera     | San José De Tonchala |          |
 El Guayabo       | El Totumo            |          |
 La Palma         | El Escorial          |          |
 El Bosque        | Tampanqueba          |          |
 El Manantial     | Santa Matilde        |          |
 Las Margaritas   | García               |          |
 Las Mercedes     | San Francisco        |          |
 Villa Rosa       | Cunuba               |          |
 San Luis         | Sabaneta Alta        |          |
 San Luis         | Tampanqueba          |          |
 El Mirador       | El Palchal           |          |
 La Cabaña        | La ┌Pa               |          |
 El Edén          | Cabecera Municipal   |          |
 Los Arrayanes    | El Palchal           |          |
 La Palma         | Tampanqueba          |          |
 Villa Rosa       | Peñas                |          |
 Las Brisas       | Alto Grande          |          |
 La Siberia       | El Alizal            |          |
 El Silencio      | Iscaligua            |          |
 El Triunfo       | El Escorial          |          |
 La Quebrada      | El Totumo            |          |
 El Horizonte     | La ┌Pa               |          |
 El Placer        | Monteadentro         |          |
 Villa Hermosa    | El Escorial          |          |
 Tierra Linda     | La Legua             |          |
 Los Laureles     | El Alizal            |          |
 Bellavista       | Cunuba               |          |
 La Carolina      | Llano Castro         |          |
 Cafetal Viejo    | La Legua             |          |
 Villa Hermosa    | El Rosal             |          |
 La Cascada       | Lengua               |          |
 Bellavista       | Peñas                |          |
 San Rafael       | El Totumo            |          |
 Los Pinos        | Alcaparral           |          |
 El Refugio       | Sabaneta Baja        |          |
 Monteverde       | Tampanqueba          |          |
 San Rafael       | Tampanqueba          |          |
 Los Guaduales    | Santa Matilde        |          |
 El Paraíso       | Navarro              |          |
 Miraflores       | Alcaparral           |          |
 La Isabela       | Monteadentro         |          |
 La Esperanza     | Monteadentro         |          |
 La Aurora        | El Palchal           |          |
 La Palma         | Iscaligua            |          |
 Las Margaritas   | El Palchal           |          |
 El Nogal         | Tampanqueba          |          |
 San Antonio      | Iscaligua            |          |
 El Brillante     | Navarro              |          |
 La Fortuna       | San Francisco        |          |
 La Selva         | Peñas                |          |
 Las Mercedes     | Navarro              |          |
 La Cabaña        | Cunuba               |          |
 Bellavista       | Alto Grande          |          |
 El Encanto       | García               |          |
 La Milagrosa     | El Palchal           |          |
 El Cedro         | La Legua             |          |
 Bella Vista Alta | Alto Grande          |          |
 El Mango         | La Legua             |          |
 La Palma         | Cunuba               |          |
 Villa Rosa       | El Alizal            |          |
 La Pradera       | Sabagua              |          |
 El Mango         | La ┌Pa               |          |
 El Diamante      | El Alizal            |          |
 El Oasis         | El Alizal            |          |
 El Paraíso       | El Palchal           |          |
 El Diamante      | Monteadentro         |          |
 La Gaitana       | Cunuba               |          |
 Bellavista       | San José De Tonchala |          |
 Las Margaritas   | Fontibón             |          |
 La Argentina     | Sabaneta Baja        |          |
 El Cedro         | Iscaligua            |          |
 Cafetal Viejo    | Caima                |          |
 Mi Ranchito      | Iscaligua            |          |
 San Rafael       | San José De Tonchala |          |
 La Floresta      | Peñas                |          |
 La Granja        | El Palchal           |          |
 La Isabela       | García               |          |
 El Silencio      | Jurado               |          |
 El Guayabo       | Caima                |          |
 La Quebrada      | Monteadentro         |          |
 La Cabaña        | Sabagua              |          |
 Las Margaritas   | Caima                |          |
 La Cascada       | Caima                |          |
 La Milagrosa     | Jurado               |          |
 San José         | Tampanqueba          |          |
 La Reserva       | El Escorial          |          |
 El Danubio       | Tampanqueba          |          |
 El Guayabo       | Tampanqueba          |          |
 El Retiro        | Sabaneta Alta        |          |
 Bella Vista Alta | Sabaneta Baja        |          |
 Las Palmas       | El Escorial          |          |
 Santa Clara      | La Legua             |          |
 El Refugio       | Peñas                |          |
 San José         | Santa Matilde        |          |
 La Cabaña        | Lengua               |          |
(153 filas)
**/