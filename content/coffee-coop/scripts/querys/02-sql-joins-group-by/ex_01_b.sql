-- Exercise 01-b
-- Tablas: geo.municipalities, geo.departments, farm.farms, farm.farmers,buy.deliveries, buy.collection points.
-- b) Consulte el nombre de la finca, la vereda, el nombre del municipio y los nombres
-- y apellidos del caficultor dueno de las fincas del municipio 54518, con los alias
-- farm, rural district, municipality, first name y last name, ordenadas
-- por apellido del caficultor. (Tres tablas.)

SELECT 
    T1.farm_name AS farm,
    T1.rural_district AS rural_district,
    T2.municipality_name AS municipality,
    T3.first_name AS first_name,
    T3.last_name AS last_name
FROM farm.farms AS T1
    INNER JOIN geo.municipalities AS T2
    ON T1.municipality_code = T2.municipality_code
INNER JOIN farm.farmers AS T3
    ON T1.farmer_id = T3.farmer_id
WHERE T1.municipality_code = '54518'
ORDER BY T3.last_name;

/**
       farm       |    rural_district    | municipality |     first_name     |      last_name
------------------+----------------------+--------------+--------------------+---------------------
 El Jardín        | El Escorial          | Pamplona     | Manuel             | Agudelo Jiménez
 La Selva         | Peñas                | Pamplona     | Manuel             | Agudelo Jiménez
 El Diamante      | El Alizal            | Pamplona     | Marleny            | Agudelo Sandoval
 El Encanto       | Fontibón             | Pamplona     | Rocío              | Álvarez Cárdenas
 Bellavista       | Alto Grande          | Pamplona     | Rocío              | Álvarez Cárdenas
 La Cabaña        | Lengua               | Pamplona     | Mónica             | Álvarez Carrillo
 Monteverde       | Lengua               | Pamplona     | Mónica             | Álvarez Carrillo
 El Arrayán       | Navarro              | Pamplona     | Marleny            | Álvarez Correa
 El Mango         | La Legua             | Pamplona     | Alberto            | Álvarez Villamizar
 Monteverde       | La Legua             | Pamplona     | Myriam Yuliana     | Arango Narváez
 El Recuerdo      | La Legua             | Pamplona     | Ancízar            | Arango Silva
 El Rosal         | Navarro              | Pamplona     | Edilma Gabriela    | Arias Álvarez
 Monteverde       | El Palchal           | Pamplona     | Edilma Gabriela    | Arias Álvarez
 Las Delicias     | Sabagua              | Pamplona     | Camilo             | Arias Mora
 La Quebrada      | Navarro              | Pamplona     | Viviana            | Arias Ramírez
 La Selva         | Sabaneta Baja        | Pamplona     | Guillermo Pedro    | Arias Rodríguez
 San Luis         | Sabaneta Alta        | Pamplona     | Isabella           | Barrera Cabrera
 La Siberia       | El Alizal            | Pamplona     | Mariana            | Barrera Correa
 El Brillante     | La Legua             | Pamplona     | Miguel             | Barrera Osorio
 La Floresta      | San José De Tonchala | Pamplona     | Ángela             | Barrera Peña
 El Oasis         | El Alizal            | Pamplona     | Ramiro             | Barrera Villamizar
 Agua Bonita      | Monteadentro         | Pamplona     | Manuela            | Bastidas Medina
 Monteverde       | Alto Grande          | Pamplona     | Antonio            | Bastidas Rodríguez
 Villa Rosa       | Cunuba               | Pamplona     | Fabio              | Bastidas Ruiz
 El Triunfo       | García               | Pamplona     | Rocío              | Bastidas Suárez
 La Argentina     | Caima                | Pamplona     | Rocío              | Bastidas Suárez
 Los Pinos        | San Francisco        | Pamplona     | Rafael Héctor      | Bedoya Pinzón
 La Reserva       | La Legua             | Pamplona     | Nelson             | Bedoya Vélez
 Las Margaritas   | Caima                | Pamplona     | Nelson             | Bedoya Vélez
 El Jardín        | La Legua             | Pamplona     | Laura              | Benavides Álvarez
 La Argentina     | Lengua               | Pamplona     | Manuela Yolanda    | Benavides Delgado
 La Unión         | Santa Matilde        | Pamplona     | Carolina Alejandra | Benavides Martínez
 Santa Clara      | El Rosal             | Pamplona     | Mateo              | Benavides Rangel
 El Horizonte     | El Totumo            | Pamplona     | Gustavo            | Bermúdez Bedoya
 El Oasis         | La ┌Pa               | Pamplona     | Iván               | Bermúdez Flórez
 Villa Hermosa    | Monteadentro         | Pamplona     | Alberto            | Bermúdez Gómez
 La Fortuna       | San Francisco        | Pamplona     | Yesenia            | Bermúdez Henao
 El Diamante      | Sabaneta Baja        | Pamplona     | Yesenia            | Bermúdez Henao
 Los Naranjos     | El Rosal             | Pamplona     | Álvaro             | Bermúdez Marín
 La Victoria      | Cunuba               | Pamplona     | Álvaro             | Bermúdez Marín
 El Retiro        | García               | Pamplona     | Álvaro             | Bermúdez Marín
 Las Palmas       | El Escorial          | Pamplona     | Rodrigo Guillermo  | Bermúdez Muñoz
 Santa Clara      | La Legua             | Pamplona     | Emilio             | Bermúdez Rojas
 Miraflores       | El Rosal             | Pamplona     | Mónica             | Betancur Arango
 El Horizonte     | San José De Tonchala | Pamplona     | Daniel             | Bonilla Duarte
 La Esperanza     | Peñas                | Pamplona     | Daniel             | Bonilla Duarte
 La Primavera     | Sabagua              | Pamplona     | Daniel             | Bonilla Duarte
 La Reserva       | El Escorial          | Pamplona     | Édgar              | Burbano Arango
 El Nogal         | San José De Tonchala | Pamplona     | María              | Burbano Duarte
 La Divisa        | Cabecera Municipal   | Pamplona     | María              | Burbano Duarte
 San Luis         | El Totumo            | Pamplona     | Fernando           | Burbano Flórez
 Villa Hermosa    | El Alizal            | Pamplona     | Jazmín             | Burbano Jaimes
 Las Delicias     | Caima                | Pamplona     | Óscar              | Cabrera Bastidas
 El Porvenir      | El Palchal           | Pamplona     | Nubia              | Cabrera Sánchez
 La Holanda       | Cabecera Municipal   | Pamplona     | Rodrigo Nelson     | Cabrera Villamizar
 El Silencio      | Santa Matilde        | Pamplona     | Iván Jaime         | Cáceres Galvis
 El Arrayán       | Cunuba               | Pamplona     | Iván Jaime         | Cáceres Galvis
 La Holanda       | El Palchal           | Pamplona     | Natalia            | Cáceres Salazar
 El Higuerón      | Jurado               | Pamplona     | Nubia Juliana      | Caicedo Medina
 La Cascada       | Fontibón             | Pamplona     | Luisa              | Caicedo Restrepo
 El Brillante     | Peñas                | Pamplona     | Luisa              | Caicedo Restrepo
 La Milagrosa     | Cabecera Municipal   | Pamplona     | Gustavo            | Calderón Bedoya
 La Fortuna       | Lengua               | Pamplona     | Camilo Iván        | Calderón Trujillo
 La Palma         | Iscaligua            | Pamplona     | Nubia              | Cárdenas Benavides
 El Cafetal       | Sabaneta Alta        | Pamplona     | Julián             | Cárdenas Mora
 El Porvenir      | Iscaligua            | Pamplona     | Carmen             | Cárdenas Moreno
 La Primavera     | Tampanqueba          | Pamplona     | Carmen             | Cárdenas Moreno
 El Horizonte     | El Escorial          | Pamplona     | Carmen             | Cárdenas Moreno
 El Edén          | Santa Matilde        | Pamplona     | Aura               | Cardona Barrera
 Las Acacias      | Cunuba               | Pamplona     | Mauricio Carlos    | Carrillo Jaimes
 La Gloria        | San José De Tonchala | Pamplona     | Efraín Gustavo     | Carrillo Moreno
 La Milagrosa     | Jurado               | Pamplona     | Emilio             | Carrillo Perdomo
 El Mirador       | Fontibón             | Pamplona     | Aura               | Castillo Henao
 El Guayabo       | Caima                | Pamplona     | Francisco          | Castillo Henao
 La Cabaña        | Llano Castro         | Pamplona     | Aura               | Castillo Henao
 La Palma         | San José De Tonchala | Pamplona     | Carlos             | Castillo Torres
 Los Arrayanes    | Jurado               | Pamplona     | Carlos             | Castillo Torres
 El Guayabo       | El Rosal             | Pamplona     | Carlos             | Castillo Torres
 Santa Elena      | García               | Pamplona     | Carlos             | Castillo Torres
 El Porvenir      | La ┌Pa               | Pamplona     | Gilberto           | Castillo Villamizar
 El Guayabo       | Navarro              | Pamplona     | Ricardo            | Castro Contreras
 Los Arrayanes    | El Palchal           | Pamplona     | Ricardo            | Castro Contreras
 La Palma         | Tampanqueba          | Pamplona     | Ricardo            | Castro Contreras
 La Argentina     | Sabaneta Baja        | Pamplona     | Mateo              | Castro García
 Cafetal Viejo    | Cunuba               | Pamplona     | Mercedes           | Chamorro Rangel
 El Guamo         | Fontibón             | Pamplona     | Liliana Luisa      | Chamorro Vélez
 Santa Bárbara    | Peñas                | Pamplona     | Nelson             | Chamorro Vera
 La Primavera     | San José De Tonchala | Pamplona     | Arturo             | Contreras Peña
 El Guayabo       | El Totumo            | Pamplona     | Miguel             | Correa Caicedo
 Cafetal Viejo    | Caima                | Pamplona     | Álvaro             | Correa Ríos
 La Cabaña        | La ┌Pa               | Pamplona     | Jaime Santiago     | Cuéllar Cáceres
 El Mirador       | El Palchal           | Pamplona     | Jaime Santiago     | Cuéllar Cáceres
 Las Orquídeas    | Fontibón             | Pamplona     | Heriberto Andrés   | Cuéllar Romero
 Los Arrayanes    | Alto Grande          | Pamplona     | Heriberto Andrés   | Cuéllar Romero
 El Mango         | La ┌Pa               | Pamplona     | Heriberto Andrés   | Cuéllar Romero
 Mi Ranchito      | Iscaligua            | Pamplona     | Julián Germán      | Delgado Villamizar
 Monte Alto       | La Legua             | Pamplona     | Fabio              | Díaz Cuéllar
 El Oasis         | Fontibón             | Pamplona     | Inés Lucía         | Díaz Cuéllar
 Cafetal Viejo    | Lengua               | Pamplona     | Diana              | Díaz Medina
 Bellavista       | Peñas                | Pamplona     | Alejandra          | Díaz Perdomo
 La Palma         | Santa Matilde        | Pamplona     | Wilson Yeison      | Díaz Ramírez
 Santa Clara      | Lengua               | Pamplona     | Ricardo Felipe     | Díaz Rodríguez
 Las Orquídeas    | Sabaneta Baja        | Pamplona     | Antonio            | Díaz Vélez
 Las Mercedes     | Llano Castro         | Pamplona     | Antonio            | Díaz Vélez
 La Ceiba         | San Francisco        | Pamplona     | Amparo             | Duarte Duque
 San Antonio      | Iscaligua            | Pamplona     | Viviana            | Duque Burbano
 La Loma          | Navarro              | Pamplona     | Inés               | Duque Cárdenas
 El Guamo         | Fontibón             | Pamplona     | Inés               | Duque Cárdenas
 El Vergel        | Sabagua              | Pamplona     | Miguel             | Duque Giraldo
 El Rosal         | Cabecera Municipal   | Pamplona     | Daniel Héctor      | Duque Ruiz
 Monteverde       | Tampanqueba          | Pamplona     | Daniel Héctor      | Duque Ruiz
 Monte Alto       | Alcaparral           | Pamplona     | Inés               | Erazo Hernández
 Las Palmas       | El Alizal            | Pamplona     | Myriam             | Flórez González
 El Edén          | Cabecera Municipal   | Pamplona     | Myriam             | Flórez González
 La Ceiba         | Llano Castro         | Pamplona     | Myriam             | Flórez González
 Los Alpes        | La Legua             | Pamplona     | Myriam             | Flórez González
 La Floresta      | San José De Tonchala | Pamplona     | Mónica Claudia     | Flórez González
 La Milagrosa     | El Alizal            | Pamplona     | Mauricio Luis      | Flórez Romero
 Santa Clara      | Cunuba               | Pamplona     | Fernando           | Galvis Duarte
 El Horizonte     | Peñas                | Pamplona     | Fernando           | Galvis Duarte
 San Antonio      | Monteadentro         | Pamplona     | Fernando           | Galvis Duarte
 La Esperanza     | El Rosal             | Pamplona     | Fernando           | Galvis Duarte
 El Guayabo       | Tampanqueba          | Pamplona     | Jaime              | García Ríos
 El Paraíso       | Navarro              | Pamplona     | Liliana Gladys     | García Vargas
 Altamira         | Sabaneta Alta        | Pamplona     | Martha             | Giraldo Arango
 San Luis         | Sabaneta Alta        | Pamplona     | Martha             | Giraldo Arango
 La Palma         | Sabagua              | Pamplona     | Iván               | Giraldo Cabrera
 El Mesón         | Llano Castro         | Pamplona     | Abelardo           | Giraldo Tovar
 El Manantial     | Santa Matilde        | Pamplona     | Jaime              | Gómez Villamizar
 El Cedro         | Llano Castro         | Pamplona     | Viviana            | González Molina
 Las Brisas       | Tampanqueba          | Pamplona     | Viviana            | González Molina
 La Granja        | Alcaparral           | Pamplona     | Viviana            | González Molina
 El Jardín        | Cabecera Municipal   | Pamplona     | Viviana            | González Molina
 El Guayabo       | San Francisco        | Pamplona     | Nicolás            | González Rodríguez
 La Palma         | Cunuba               | Pamplona     | Javier             | González Zuluaga
 La Estrella      | Llano Castro         | Pamplona     | Daniela            | Guerrero González
 La Unión         | Llano Castro         | Pamplona     | Gloria             | Gutiérrez Cardona
 Villa Hermosa    | El Rosal             | Pamplona     | Mateo              | Henao Carrillo
 Villa Hermosa    | La Legua             | Pamplona     | Sandra             | Henao Jaimes
 San Luis         | Tampanqueba          | Pamplona     | Pedro Reinaldo     | Henao Molina
 La Cristalina    | El Escorial          | Pamplona     | Nubia Natalia      | Henao Ramírez
 La Carolina      | Llano Castro         | Pamplona     | Nubia Natalia      | Henao Ramírez
 Cafetal Viejo    | San José De Tonchala | Pamplona     | Dora               | Hernández Correa
 La Quebrada      | El Alizal            | Pamplona     | Fabio              | Hernández Lasso
 El Higuerón      | Caima                | Pamplona     | Arturo             | Hernández Uribe
 Bella Vista Alta | El Rosal             | Pamplona     | Arturo             | Hernández Uribe
 La Unión         | La Legua             | Pamplona     | Rocío Juliana      | Herrera Tovar
 Los Alpes        | Santa Matilde        | Pamplona     | Cristian           | Herrera Zuluaga
 El Porvenir      | La ┌Pa               | Pamplona     | Gustavo            | Ibarra Agudelo
 Las Margaritas   | García               | Pamplona     | Héctor             | Ibarra Álvarez
 El Nogal         | Alto Grande          | Pamplona     | Teresa             | Ibarra Caicedo
 El Diamante      | El Escorial          | Pamplona     | Luz Martha         | Jaimes Bermúdez
 El Silencio      | Sabaneta Alta        | Pamplona     | Rocío Manuela      | Jaimes Cardona
 El Arrayán       | Iscaligua            | Pamplona     | Rocío Manuela      | Jaimes Cardona
 Las Mercedes     | San Francisco        | Pamplona     | Aura               | Jaimes Carrillo
 La Divisa        | San Francisco        | Pamplona     | David              | Jaimes Ruiz
 El Nogal         | Tampanqueba          | Pamplona     | David              | Jaimes Ruiz
 La Milagrosa     | Cabecera Municipal   | Pamplona     | David              | Jaimes Ruiz
 La Victoria      | La ┌Pa               | Pamplona     | Luis               | Jaimes Salazar
 Bella Vista Alta | Sabaneta Baja        | Pamplona     | Heriberto          | Jiménez Cáceres
 El Recuerdo      | Monteadentro         | Pamplona     | Inés               | Jiménez Jaimes
 El Silencio      | Sabagua              | Pamplona     | Hugo               | Jiménez Parra
 La Selva         | García               | Pamplona     | Alba               | Jiménez Pérez
 La Montaña       | Peñas                | Pamplona     | Hernando Miguel    | Jiménez Restrepo
 Las Acacias      | Fontibón             | Pamplona     | Libardo            | Lasso Serrano
 El Triunfo       | El Escorial          | Pamplona     | Libardo            | Lasso Serrano
 La Argentina     | Fontibón             | Pamplona     | Libardo            | Lasso Serrano
 Santa Clara      | El Totumo            | Pamplona     | Mario              | Londoño Tovar
 El Cedro         | La ┌Pa               | Pamplona     | Sara               | Losada Gutiérrez
 La Selva         | Sabagua              | Pamplona     | Sara               | Losada Gutiérrez
 La Granja        | El Palchal           | Pamplona     | Sara               | Losada Gutiérrez
 El Jardín        | Cunuba               | Pamplona     | Sara               | Losada Gutiérrez
 Los Pinos        | Alcaparral           | Pamplona     | Marcela            | Losada Rivera
 El Silencio      | Jurado               | Pamplona     | Daniela            | Lozano Castro
 La Victoria      | El Escorial          | Pamplona     | Daniela            | Lozano Castro
 Tierra Linda     | El Palchal           | Pamplona     | Juliana            | Lozano Perdomo
 El Bosque        | Sabaneta Baja        | Pamplona     | Diana              | Lozano Rincón
 La Isabela       | Monteadentro         | Pamplona     | Diana              | Lozano Rincón
 Bellavista       | San José De Tonchala | Pamplona     | Elsa               | Marín Henao
 La Aurora        | Jurado               | Pamplona     | Jaime              | Marín Hernández
 La Gaitana       | Sabagua              | Pamplona     | Stella             | Marín Osorio
 La Esperanza     | El Palchal           | Pamplona     | Gloria             | Marín Rivera
 Buenavista       | El Alizal            | Pamplona     | Sofía              | Marín Rojas
 Las Margaritas   | El Palchal           | Pamplona     | Gustavo            | Marín Sandoval
 La Reserva       | Sabagua              | Pamplona     | Gustavo            | Marín Sandoval
 El Nogal         | Tampanqueba          | Pamplona     | Gustavo            | Marín Sandoval
 Cafetal Viejo    | Navarro              | Pamplona     | Efraín             | Martínez Ramos
 La Cascada       | Caima                | Pamplona     | Yeison             | Medina Londoño
 Los Pinos        | Alto Grande          | Pamplona     | Juliana Ana        | Mejía Mejía
 El Encanto       | Cunuba               | Pamplona     | Mateo              | Mejía Mora
 Agua Bonita      | Iscaligua            | Pamplona     | Yuliana Jazmín     | Mejía Rangel
 Las Brisas       | Alto Grande          | Pamplona     | Paola Olga         | Mejía Rincón
 La Cumbre        | Jurado               | Pamplona     | Julián             | Mejía Torres
 El Encanto       | San José De Tonchala | Pamplona     | Elsa               | Mejía Vera
 El Diamante      | San José De Tonchala | Pamplona     | Mónica Martha      | Molina Molina
 El Bosque        | Sabaneta Alta        | Pamplona     | Diana Isabella     | Molina Moreno
 La Isabela       | García               | Pamplona     | Diana Isabella     | Molina Moreno
 El Recuerdo      | Alto Grande          | Pamplona     | Jairo              | Molina Pabón
 Villa Rosa       | San José De Tonchala | Pamplona     | Alejandra          | Molina Torres
 El Encanto       | San José De Tonchala | Pamplona     | Hernando           | Montoya Agudelo
 El Tesoro        | San Francisco        | Pamplona     | Luisa              | Montoya Mejía
 La Aurora        | La ┌Pa               | Pamplona     | Luisa              | Montoya Mejía
 Las Mercedes     | San Francisco        | Pamplona     | Wilmer             | Montoya Rodríguez
 El Mango         | Cabecera Municipal   | Pamplona     | Wilmer             | Montoya Rodríguez
 El Guayabo       | Sabaneta Baja        | Pamplona     | Fanny              | Montoya Valencia
 Los Laureles     | El Alizal            | Pamplona     | Valentina          | Mora Rangel
 Tierra Linda     | La Legua             | Pamplona     | Valentina          | Mora Rangel
 Bellavista       | Cunuba               | Pamplona     | Valentina          | Mora Rangel
 San José         | Alcaparral           | Pamplona     | Valentina          | Mora Rangel
 La Siberia       | Sabaneta Baja        | Pamplona     | Gustavo            | Mosquera López
 El Higuerón      | La ┌Pa               | Pamplona     | Gustavo            | Mosquera López
 El Placer        | Monteadentro         | Pamplona     | Alejandra Andrea   | Mosquera Moreno
 Las Palmas       | La Legua             | Pamplona     | Adriana            | Mosquera Ospina
 El Vergel        | Cabecera Municipal   | Pamplona     | Adriana            | Mosquera Ospina
 El Refugio       | Alto Grande          | Pamplona     | Luis               | Mosquera Perdomo
 Bella Vista Alta | Alto Grande          | Pamplona     | Luis               | Mosquera Perdomo
 San Rafael       | San José De Tonchala | Pamplona     | Isabella           | Mosquera Sandoval
 El Brillante     | La Legua             | Pamplona     | Isabella           | Mosquera Sandoval
 Los Guaduales    | Sabaneta Alta        | Pamplona     | Isabella           | Mosquera Sandoval
 Los Alpes        | Tampanqueba          | Pamplona     | Alejandro          | Muñoz Polanía
 Las Margaritas   | Fontibón             | Pamplona     | Manuel             | Narváez Calderón
 El Danubio       | García               | Pamplona     | Alejandro          | Narváez Polanía
 Santa Clara      | La Legua             | Pamplona     | Luz                | Niño Guerrero
 La Floresta      | Peñas                | Pamplona     | Diego              | Niño Hernández
 Buenavista       | Alcaparral           | Pamplona     | Diego              | Niño Hernández
 El Guamo         | El Escorial          | Pamplona     | Gabriela Carolina  | Niño Ortiz
 La Loma          | Alto Grande          | Pamplona     | Gabriela Carolina  | Niño Ortiz
 La Milagrosa     | El Palchal           | Pamplona     | Efraín             | Ortega Correa
 El Porvenir      | El Escorial          | Pamplona     | Sandra             | Ortega García
 La Primavera     | Caima                | Pamplona     | Sandra             | Ortega García
 San Antonio      | La Legua             | Pamplona     | Sofía Claudia      | Ortega Ortiz
 El Refugio       | Peñas                | Pamplona     | Juliana            | Ortega Osorio
 Bellavista       | Sabagua              | Pamplona     | Rocío Alba         | Ortega Serrano
 El Encanto       | Cunuba               | Pamplona     | Rocío Alba         | Ortega Serrano
 San José         | Tampanqueba          | Pamplona     | Rocío Alba         | Ortega Serrano
 La Loma          | Sabagua              | Pamplona     | Juan               | Ortega Zapata
 El Refugio       | Sabaneta Baja        | Pamplona     | Alejandra          | Ortiz Bermúdez
 Monteverde       | El Totumo            | Pamplona     | Wilmer             | Ortiz Betancur
 El Recreo        | Caima                | Pamplona     | Alberto            | Ortiz Lasso
 La Palma         | El Escorial          | Pamplona     | Mariana            | Ortiz Ruiz
 La Unión         | La Legua             | Pamplona     | Jaime Wilmer       | Ortiz Vargas
 San José         | Santa Matilde        | Pamplona     | Luz                | Osorio Cuéllar
 Las Mercedes     | Navarro              | Pamplona     | Natalia            | Ospina Burbano
 La Esperanza     | Monteadentro         | Pamplona     | Óscar              | Ospina González
 Villa Hermosa    | El Totumo            | Pamplona     | Wilson             | Parra Prada
 La Pradera       | Sabagua              | Pamplona     | Ramiro             | Parra Trujillo
 Las Delicias     | El Alizal            | Pamplona     | Ramiro             | Parra Trujillo
 El Recuerdo      | Sabaneta Baja        | Pamplona     | Mauricio           | Peña Bastidas
 Los Arrayanes    | Cabecera Municipal   | Pamplona     | Julián             | Peña Betancur
 Agua Bonita      | García               | Pamplona     | Mauricio           | Perdomo Cabrera
 Mi Ranchito      | El Alizal            | Pamplona     | David              | Perdomo Mosquera
 Tierra Linda     | Tampanqueba          | Pamplona     | Abelardo           | Pérez Castro
 Los Laureles     | San José De Tonchala | Pamplona     | Abelardo           | Pérez Castro
 San José         | Iscaligua            | Pamplona     | Abelardo           | Pérez Castro
 El Refugio       | Fontibón             | Pamplona     | Wilmer             | Pérez Chamorro
 El Cedro         | Iscaligua            | Pamplona     | Martha Carolina    | Pérez Jaimes
 Villa Hermosa    | El Escorial          | Pamplona     | Liliana            | Pérez Parra
 El Retiro        | El Totumo            | Pamplona     | Guillermo          | Pérez Pérez
 El Tesoro        | Peñas                | Pamplona     | Rocío Mariana      | Pérez Rodríguez
 La Divisa        | El Totumo            | Pamplona     | Abelardo           | Pinzón Bonilla
 Monteverde       | El Alizal            | Pamplona     | Efraín             | Pinzón Cabrera
 La Loma          | Jurado               | Pamplona     | Javier             | Pinzón Jiménez
 Los Arrayanes    | Navarro              | Pamplona     | Ancízar Cristian   | Polanía Delgado
 El Silencio      | Iscaligua            | Pamplona     | Rafael             | Prada Moreno
 Miraflores       | Alcaparral           | Pamplona     | Mauricio           | Prada Villamizar
 Villa Rosa       | El Alizal            | Pamplona     | Manuel             | Quintero Arias
 El Tesoro        | El Alizal            | Pamplona     | Pedro              | Ramírez Barrera
 La Aurora        | Llano Castro         | Pamplona     | Pedro              | Ramírez Barrera
 La Carolina      | Tampanqueba          | Pamplona     | Luis               | Ramírez Cardona
 La Soledad       | El Alizal            | Pamplona     | Mónica Elsa        | Ramírez Castro
 La Quebrada      | El Totumo            | Pamplona     | Mónica Elsa        | Ramírez Castro
 La Reserva       | García               | Pamplona     | Francisco          | Ramírez Sandoval
 El Nogal         | El Totumo            | Pamplona     | Francisco          | Ramírez Sandoval
 El Bosque        | Tampanqueba          | Pamplona     | Rubén              | Ramos Chamorro
 El Mesón         | Navarro              | Pamplona     | Francisco          | Restrepo Perdomo
 Las Margaritas   | Llano Castro         | Pamplona     | Mateo              | Restrepo Suárez
 La Argentina     | San José De Tonchala | Pamplona     | Gloria             | Rincón Acevedo
 La Granja        | La Legua             | Pamplona     | Miguel             | Rincón Agudelo
 El Oasis         | El Alizal            | Pamplona     | Yesenia            | Rincón Caicedo
 El Brillante     | Navarro              | Pamplona     | Alba               | Rincón Rojas
 El Recreo        | Cunuba               | Pamplona     | Rafael Francisco   | Rincón Romero
 El Jardín        | Peñas                | Pamplona     | Mario              | Rincón Suárez
 El Horizonte     | Tampanqueba          | Pamplona     | Rosa               | Ríos Cárdenas
 Villa Rosa       | Peñas                | Pamplona     | Mario              | Ríos Ibarra
 Las Palmas       | Alto Grande          | Pamplona     | Felipe Camilo      | Ríos Ospina
 El Vergel        | Santa Matilde        | Pamplona     | Felipe Camilo      | Ríos Ospina
 La Cabaña        | Santa Matilde        | Pamplona     | Alba               | Ríos Rodríguez
 El Mirador       | San Francisco        | Pamplona     | Alba               | Ríos Rodríguez
 La Holanda       | Caima                | Pamplona     | Erika              | Ríos Suárez
 La Cascada       | Lengua               | Pamplona     | Gloria Aura        | Ríos Vera
 San Antonio      | Jurado               | Pamplona     | Edilma             | Rivera Rivera
 La Montaña       | Monteadentro         | Pamplona     | Óscar              | Rivera Tovar
 Tierra Linda     | Lengua               | Pamplona     | Gabriela           | Rodríguez Ortega
 El Horizonte     | La ┌Pa               | Pamplona     | Ruth               | Rodríguez Pérez
 El Higuerón      | Tampanqueba          | Pamplona     | Yuliana            | Rodríguez Vargas
 La Siberia       | García               | Pamplona     | Yuliana            | Rodríguez Vargas
 La Fortuna       | El Palchal           | Pamplona     | Fernando           | Rojas Cárdenas
 Los Guaduales    | Santa Matilde        | Pamplona     | Patricia Amparo    | Rojas Ríos
 San Rafael       | Tampanqueba          | Pamplona     | Patricia Amparo    | Rojas Ríos
 El Brillante     | Jurado               | Pamplona     | Patricia Amparo    | Rojas Ríos
 Cafetal Viejo    | La Legua             | Pamplona     | Luz                | Rojas Torres
 Villa Hermosa    | Peñas                | Pamplona     | María              | Rojas Villamizar
 Los Arrayanes    | Iscaligua            | Pamplona     | Reinaldo           | Romero Agudelo
 Las Orquídeas    | Caima                | Pamplona     | Reinaldo           | Romero Agudelo
 El Guayabo       | Alto Grande          | Pamplona     | Reinaldo           | Romero Agudelo
 La Florida       | Peñas                | Pamplona     | Esperanza          | Romero Betancur
 La Palma         | García               | Pamplona     | David Germán       | Romero Bonilla
 La Quebrada      | Monteadentro         | Pamplona     | Jairo              | Romero Gutiérrez
 El Recreo        | La Legua             | Pamplona     | Gustavo Pedro      | Romero Pinzón
 La Cabaña        | Sabagua              | Pamplona     | Rafael             | Romero Prada
 El Diamante      | Tampanqueba          | Pamplona     | Orlando            | Salazar Bermúdez
 El Edén          | Alto Grande          | Pamplona     | Alberto            | Salazar Pabón
 Las Acacias      | El Alizal            | Pamplona     | Esteban            | Salazar Parra
 El Placer        | Tampanqueba          | Pamplona     | Fernando           | Sánchez Agudelo
 El Cedro         | La Legua             | Pamplona     | Reinaldo Jorge     | Sánchez Agudelo
 La Cumbre        | Sabagua              | Pamplona     | Sara               | Sánchez Arango
 El Diamante      | Monteadentro         | Pamplona     | Camila             | Sánchez Pinzón
 El Paraíso       | El Palchal           | Pamplona     | Camila             | Sánchez Pinzón
 La Aurora        | El Palchal           | Pamplona     | Wilmer             | Sánchez Torres
 La Granja        | Iscaligua            | Pamplona     | Yuliana            | Sandoval Bedoya
 La Floresta      | Peñas                | Pamplona     | Dora               | Sandoval García
 Las Delicias     | El Totumo            | Pamplona     | Sandra             | Sandoval Ortega
 El Nogal         | García               | Pamplona     | Myriam             | Sandoval Osorio
 La Granja        | García               | Pamplona     | Andrea             | Serrano Mosquera
 El Retiro        | Sabaneta Alta        | Pamplona     | Yesenia            | Silva Henao
 El Encanto       | García               | Pamplona     | Aníbal             | Silva Villamizar
 Bellavista       | Alto Grande          | Pamplona     | Aníbal             | Silva Villamizar
 La Cabaña        | Cunuba               | Pamplona     | Julián Juan        | Suárez Rivera
 La Isabela       | Cunuba               | Pamplona     | Fanny Nubia        | Suárez Rojas
 La Gaitana       | Cunuba               | Pamplona     | Gustavo Heriberto  | Torres Guerrero
 El Recuerdo      | El Escorial          | Pamplona     | Gustavo Heriberto  | Torres Guerrero
 El Tesoro        | Llano Castro         | Pamplona     | Aura               | Torres Ortega
 Las Palmas       | El Rosal             | Pamplona     | Gloria             | Tovar Benavides
 La Cumbre        | Cabecera Municipal   | Pamplona     | Arturo             | Tovar Calderón
 Santa Bárbara    | Caima                | Pamplona     | Arturo             | Tovar Calderón
 El Diamante      | Tampanqueba          | Pamplona     | Libardo            | Trujillo Torres
 El Cedro         | La Legua             | Pamplona     | Pedro              | Trujillo Vélez
 El Recuerdo      | Caima                | Pamplona     | Dora Lucía         | Uribe Arango
 El Porvenir      | Fontibón             | Pamplona     | Mario              | Uribe Cuéllar
 La Argentina     | El Escorial          | Pamplona     | Nelson             | Uribe González
 La Milagrosa     | Lengua               | Pamplona     | Elsa Leidy         | Uribe Uribe
 El Arrayán       | Tampanqueba          | Pamplona     | Nelson Samuel      | Valencia Herrera
 El Guayabo       | Sabaneta Baja        | Pamplona     | Myriam             | Valencia Moreno
 Los Arrayanes    | La ┌Pa               | Pamplona     | Myriam             | Valencia Moreno
 La Palma         | Cunuba               | Pamplona     | Myriam             | Valencia Moreno
 La Floresta      | Alcaparral           | Pamplona     | Teresa Adriana     | Valencia Moreno
 El Silencio      | San Francisco        | Pamplona     | Julián Guillermo   | Valencia Narváez
 La Siberia       | Monteadentro         | Pamplona     | Esperanza          | Valencia Ortiz
 El Refugio       | Monteadentro         | Pamplona     | Esperanza          | Valencia Ortiz
 Tierra Linda     | Iscaligua            | Pamplona     | Álvaro             | Valencia Rivera
 Los Laureles     | Peñas                | Pamplona     | Álvaro             | Valencia Rivera
 La Estrella      | García               | Pamplona     | Alba               | Vargas Losada
 Bella Vista Alta | Sabaneta Baja        | Pamplona     | Yeison             | Vargas Perdomo
 San Rafael       | El Totumo            | Pamplona     | Rosa               | Vélez Contreras
 El Caney         | Alto Grande          | Pamplona     | Germán Rafael      | Vélez Herrera
 Los Laureles     | Lengua               | Pamplona     | Erika              | Vélez Marín
 Los Guaduales    | El Palchal           | Pamplona     | Alba               | Vera Calderón
 El Danubio       | Tampanqueba          | Pamplona     | Carlos Mario       | Villamizar Carrillo
 Los Pinos        | Sabaneta Alta        | Pamplona     | Miguel             | Villamizar Correa
 Altamira         | El Alizal            | Pamplona     | Rubén              | Villamizar Mejía
 Las Acacias      | Jurado               | Pamplona     | David              | Zapata Arias
 El Triunfo       | Cabecera Municipal   | Pamplona     | David              | Zapata Arias
 La Argentina     | Peñas                | Pamplona     | David              | Zapata Arias
 La Gaitana       | La ┌Pa               | Pamplona     | David              | Zapata Arias
 El Mesón         | Iscaligua            | Pamplona     | Iván               | Zapata Ortiz
 Villa Hermosa    | Cunuba               | Pamplona     | Valentina          | Zapata Valencia
 El Bosque        | Llano Castro         | Pamplona     | Laura              | Zuluaga Benavides
 El Tesoro        | Fontibón             | Pamplona     | Ramiro             | Zuluaga Duque
(368 filas)

**/