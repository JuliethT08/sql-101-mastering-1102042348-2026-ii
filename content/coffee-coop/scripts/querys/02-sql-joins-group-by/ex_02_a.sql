-- Exercise 2 - a
-- Tablas: farm.farmers, farm.farms, buy.deliveries, buy.quality analyses.
--a) Consulte el documento, nombres y apellidos de todos los asociados del municipio 54518 junto con el nombre de su --finca, incluyendo a quienes no tienen finca registrada, con los alias document, first name, last name y farm.

SELECT
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T2.farm_name AS farm
FROM farm.farmers AS T1
LEFT JOIN farm.farms AS T2
     ON T1.farmer_id = T2.farmer_id
WHERE T1.municipality_code ='54518'
ORDER BY T1.last_name, T1.first_name;

/**
  document  |    first_name     |     last_name      |       farm
------------+-------------------+--------------------+------------------
 230971064  | Manuel            | Agudelo Jiménez    | La Selva
 230971064  | Manuel            | Agudelo Jiménez    | El Jardín
 230971064  | Manuel            | Agudelo Jiménez    | Las Acacias
 768461420  | Marleny           | Agudelo Sandoval   | El Paraíso
 768461420  | Marleny           | Agudelo Sandoval   | El Diamante
 931079279  | Edilma            | Álvarez Bonilla    | El Triunfo
 931079279  | Edilma            | Álvarez Bonilla    | La Argentina
 463842401  | Rocío             | Álvarez Cárdenas   | La Cumbre
 463842401  | Rocío             | Álvarez Cárdenas   | Bellavista
 463842401  | Rocío             | Álvarez Cárdenas   | El Encanto
 788628125  | Mónica            | Álvarez Carrillo   | Monteverde
 788628125  | Mónica            | Álvarez Carrillo   | La Cabaña
 939635303  | Marleny           | Álvarez Correa     | El Arrayán
 939635303  | Marleny           | Álvarez Correa     | El Silencio
 939635303  | Marleny           | Álvarez Correa     | La Victoria
 14046794   | Alberto           | Álvarez Villamizar | El Mango
 1089620113 | Myriam Yuliana    | Arango Narváez     | Monteverde
 502796073  | Ancízar           | Arango Silva       | El Recuerdo
 172555225  | Edilma Gabriela   | Arias Álvarez      | El Rosal
 172555225  | Edilma Gabriela   | Arias Álvarez      | Monteverde
 302223305  | Camilo            | Arias Mora         | Las Delicias
 550696749  | Viviana           | Arias Ramírez      | La Quebrada
 550696749  | Viviana           | Arias Ramírez      | La Soledad
 1061690671 | Guillermo Pedro   | Arias Rodríguez    | La Selva
 797017145  | Isabella          | Barrera Cabrera    | San Luis
 659942505  | Mariana           | Barrera Correa     | La Siberia
 483692716  | Ramiro            | Barrera Villamizar | El Oasis
 1103932523 | Amparo            | Bastidas Chamorro  | El Cafetal
 1027436085 | Manuela           | Bastidas Medina    | Agua Bonita
 734158943  | Alberto           | Bastidas Rodríguez | San José
 407150767  | Antonio           | Bastidas Rodríguez | Monteverde
 649244180  | Rocío             | Bastidas Suárez    | El Triunfo
 649244180  | Rocío             | Bastidas Suárez    | La Argentina
 718906996  | Nelson            | Bedoya Vélez       | Las Margaritas
 718906996  | Nelson            | Bedoya Vélez       | La Reserva
 21358854   | Manuela Yolanda   | Benavides Delgado  | La Argentina
 1185360305 | Iván              | Bermúdez Flórez    | El Oasis
 737383707  | Yesenia           | Bermúdez Henao     | La Fortuna
 737383707  | Yesenia           | Bermúdez Henao     | Los Naranjos
 737383707  | Yesenia           | Bermúdez Henao     | El Diamante
 866702579  | Álvaro            | Bermúdez Marín     | Los Naranjos
 866702579  | Álvaro            | Bermúdez Marín     | La Victoria
 866702579  | Álvaro            | Bermúdez Marín     | El Retiro
 45024299   | Rodrigo Guillermo | Bermúdez Muñoz     | Las Palmas
 517430119  | Emilio            | Bermúdez Rojas     | Santa Clara
 1015411133 | Santiago          | Bermúdez Ruiz      | La Cabaña
 91091638   | Daniel            | Bonilla Duarte     | La Primavera
 91091638   | Daniel            | Bonilla Duarte     | La Esperanza
 91091638   | Daniel            | Bonilla Duarte     | El Horizonte
 141613744  | Édgar             | Burbano Arango     | La Reserva
 549054771  | María             | Burbano Duarte     | El Nogal
 549054771  | María             | Burbano Duarte     | La Divisa
 1196615388 | Fernando          | Burbano Flórez     | San Luis
 1196615388 | Fernando          | Burbano Flórez     | Altamira
 436957556  | Jazmín            | Burbano Jaimes     | Villa Hermosa
 436957556  | Jazmín            | Burbano Jaimes     | Santa Bárbara
 56877324   | Javier            | Burbano Molina     | El Jardín
 223974138  | Rodrigo Nelson    | Cabrera Villamizar | La Holanda
 1196659084 | Iván Jaime        | Cáceres Galvis     | El Arrayán
 1196659084 | Iván Jaime        | Cáceres Galvis     | El Silencio
 918053770  | Nubia Juliana     | Caicedo Medina     | El Higuerón
 356207226  | Luisa             | Caicedo Restrepo   | La Cascada
 356207226  | Luisa             | Caicedo Restrepo   | El Brillante
 788902052  | Camilo Iván       | Calderón Trujillo  | La Fortuna
 358946393  | Carmen            | Cárdenas Moreno    | La Esperanza
 358946393  | Carmen            | Cárdenas Moreno    | La Primavera
 358946393  | Carmen            | Cárdenas Moreno    | El Horizonte
 358946393  | Carmen            | Cárdenas Moreno    | El Porvenir
 756369749  | Andrea            | Cardona Ruiz       | Monte Alto
 716388403  | Emilio            | Carrillo Perdomo   | La Gloria
 716388403  | Emilio            | Carrillo Perdomo   | La Milagrosa
 65169775   | Aura              | Castillo Henao     | La Cabaña
 65169775   | Aura              | Castillo Henao     | El Mirador
 279649109  | Carlos            | Castillo Torres    | Santa Elena
 279649109  | Carlos            | Castillo Torres    | El Guayabo
 279649109  | Carlos            | Castillo Torres    | La Palma
 279649109  | Carlos            | Castillo Torres    | Los Arrayanes
 166716892  | Ricardo           | Castro Contreras   | El Guayabo
 166716892  | Ricardo           | Castro Contreras   | La Palma
 166716892  | Ricardo           | Castro Contreras   | Los Arrayanes
 1001030458 | Liliana Luisa     | Chamorro Vélez     | El Guamo
 1143372198 | Nelson            | Chamorro Vera      | Villa Hermosa
 1143372198 | Nelson            | Chamorro Vera      | Santa Bárbara
 789425487  | Efraín Ricardo    | Contreras Ospina   | San Luis
 789425487  | Efraín Ricardo    | Contreras Ospina   | Altamira
 637451261  | Arturo            | Contreras Peña     | La Primavera
 614786053  | Álvaro            | Correa Ríos        | Cafetal Viejo
 1001674689 | Jaime Santiago    | Cuéllar Cáceres    | El Mirador
 1001674689 | Jaime Santiago    | Cuéllar Cáceres    | La Cabaña
 503402827  | Heriberto Andrés  | Cuéllar Romero     | Las Orquídeas
 503402827  | Heriberto Andrés  | Cuéllar Romero     | Los Arrayanes
 503402827  | Heriberto Andrés  | Cuéllar Romero     | El Mango
 749444168  | Emilio            | Delgado Molina     | La Quebrada
 1146928395 | Julián Germán     | Delgado Villamizar | Mi Ranchito
 697099528  | Fabio             | Díaz Cuéllar       | Monte Alto
 697099528  | Fabio             | Díaz Cuéllar       | La Unión
 977130251  | Inés Lucía        | Díaz Cuéllar       | El Oasis
 1117597835 | Cecilia Lorena    | Díaz García        | La Montaña
 828628976  | Diana             | Díaz Medina        | Cafetal Viejo
 951995464  | Wilson Yeison     | Díaz Ramírez       | La Palma
 802182926  | Antonio           | Díaz Vélez         | Las Mercedes
 802182926  | Antonio           | Díaz Vélez         | El Mango
 802182926  | Antonio           | Díaz Vélez         | Las Orquídeas
 932437698  | Amparo            | Duarte Duque       | La Ceiba
 95544811   | Inés              | Duque Cárdenas     | La Loma
 95544811   | Inés              | Duque Cárdenas     | El Guamo
 846209158  | Daniel Héctor     | Duque Ruiz         | El Rosal
 846209158  | Daniel Héctor     | Duque Ruiz         | Monteverde
 522380895  | Inés              | Erazo Hernández    | Monte Alto
 409306735  | Mónica Claudia    | Flórez González    | La Floresta
 257495692  | Myriam            | Flórez González    | Los Alpes
 257495692  | Myriam            | Flórez González    | Las Palmas
 257495692  | Myriam            | Flórez González    | La Ceiba
 257495692  | Myriam            | Flórez González    | El Edén
 374080696  | Fernando          | Galvis Duarte      | Santa Clara
 374080696  | Fernando          | Galvis Duarte      | San Antonio
 374080696  | Fernando          | Galvis Duarte      | La Esperanza
 374080696  | Fernando          | Galvis Duarte      | El Horizonte
 155695928  | Martha            | Giraldo Arango     | San Luis
 155695928  | Martha            | Giraldo Arango     | Altamira
 622024549  | Viviana           | González Molina    | El Cedro
 622024549  | Viviana           | González Molina    | El Jardín
 622024549  | Viviana           | González Molina    | Las Brisas
 622024549  | Viviana           | González Molina    | La Granja
 811782754  | Nicolás           | González Rodríguez | El Guayabo
 1084721334 | Javier            | González Zuluaga   | La Palma
 35147265   | Carlos            | Gutiérrez Pabón    | Monteverde
 793512107  | Sandra            | Henao Jaimes       | Villa Hermosa
 316655568  | Nubia Natalia     | Henao Ramírez      | La Cristalina
 316655568  | Nubia Natalia     | Henao Ramírez      | La Carolina
 343256743  | Dora              | Hernández Correa   | Cafetal Viejo
 1148017860 | Fabio             | Hernández Lasso    | La Quebrada
 520313287  | Beatriz           | Hernández Muñoz    | La Siberia
 974842644  | Arturo            | Hernández Uribe    | Bella Vista Alta
 974842644  | Arturo            | Hernández Uribe    | El Higuerón
 10424994   | Cristian          | Herrera Zuluaga    | Los Alpes
 525766302  | Gustavo           | Ibarra Agudelo     | La Montaña
 525766302  | Gustavo           | Ibarra Agudelo     | El Porvenir
 1167705984 | Teresa            | Ibarra Caicedo     | El Nogal
 1185523747 | Elsa              | Ibarra Molina      | La Granja
 425322677  | Luz Martha        | Jaimes Bermúdez    | El Diamante
 42562183   | Rocío Manuela     | Jaimes Cardona     | El Silencio
 42562183   | Rocío Manuela     | Jaimes Cardona     | El Arrayán
 644277425  | David             | Jaimes Ruiz        | El Nogal
 644277425  | David             | Jaimes Ruiz        | La Milagrosa
 644277425  | David             | Jaimes Ruiz        | La Divisa
 1052279913 | Luis              | Jaimes Salazar     | El Silencio
 1052279913 | Luis              | Jaimes Salazar     | La Victoria
 433286601  | Esperanza         | Jaimes Vera        | Miraflores
 433286601  | Esperanza         | Jaimes Vera        | La Loma
 89157555   | Heriberto         | Jiménez Cáceres    | Bella Vista Alta
 550093228  | Ruth              | Jiménez Guerrero   | Las Mercedes
 1148351420 | Inés              | Jiménez Jaimes     | El Recuerdo
 1148351420 | Inés              | Jiménez Jaimes     | La Gaitana
 860920785  | Hugo              | Jiménez Parra      | El Silencio
 434293037  | Hernando Miguel   | Jiménez Restrepo   | La Montaña
 232229735  | Libardo           | Lasso Serrano      | El Triunfo
 232229735  | Libardo           | Lasso Serrano      | La Argentina
 232229735  | Libardo           | Lasso Serrano      | Las Acacias
 382766013  | Diana             | Londoño Ramos      | Monteverde
 712758473  | Wilson            | López Villamizar   | El Silencio
 1157650796 | Sara              | Losada Gutiérrez   | El Jardín
 1157650796 | Sara              | Losada Gutiérrez   | La Granja
 1157650796 | Sara              | Losada Gutiérrez   | La Selva
 1157650796 | Sara              | Losada Gutiérrez   | El Cedro
 530206966  | Daniela           | Lozano Castro      | La Victoria
 530206966  | Daniela           | Lozano Castro      | El Silencio
 456256773  | Luisa             | Lozano Losada      | La Victoria
 754524782  | Diana             | Lozano Rincón      | El Bosque
 754524782  | Diana             | Lozano Rincón      | La Isabela
 754524782  | Diana             | Lozano Rincón      | El Vergel
 1145130870 | Elsa              | Marín Henao        | Bellavista
 131166207  | Jaime             | Marín Hernández    | La Aurora
 878614263  | Stella            | Marín Osorio       | La Gaitana
 727945493  | Gloria            | Marín Rivera       | La Esperanza
 102695503  | Sofía             | Marín Rojas        | Buenavista
 934117740  | Gustavo           | Marín Sandoval     | El Nogal
 934117740  | Gustavo           | Marín Sandoval     | Las Margaritas
 934117740  | Gustavo           | Marín Sandoval     | La Reserva
 142439635  | Yeison            | Medina Londoño     | La Cascada
 142439635  | Yeison            | Medina Londoño     | El Brillante
 536338741  | Juliana Ana       | Mejía Mejía        | Los Pinos
 1167191036 | Yuliana Jazmín    | Mejía Rangel       | Agua Bonita
 1171130241 | Elsa              | Mejía Vera         | El Encanto
 554620706  | Nelson Samuel     | Mejía Vera         | La Isabela
 781810115  | Diana Isabella    | Molina Moreno      | El Bosque
 781810115  | Diana Isabella    | Molina Moreno      | La Isabela
 870240973  | Jairo             | Molina Pabón       | El Recuerdo
 622105662  | Alejandra         | Molina Torres      | Villa Rosa
 622105662  | Alejandra         | Molina Torres      | La Carolina
 622105662  | Alejandra         | Molina Torres      | La Cristalina
 824422301  | Hernando          | Montoya Agudelo    | El Encanto
 765371022  | Luisa             | Montoya Mejía      | El Tesoro
 765371022  | Luisa             | Montoya Mejía      | La Aurora
 299842243  | Wilmer            | Montoya Rodríguez  | Las Orquídeas
 299842243  | Wilmer            | Montoya Rodríguez  | Las Mercedes
 299842243  | Wilmer            | Montoya Rodríguez  | El Mango
 699387247  | Fanny             | Montoya Valencia   | El Guayabo
 455264704  | Valentina         | Mora Rangel        | Bellavista
 455264704  | Valentina         | Mora Rangel        | San José
 455264704  | Valentina         | Mora Rangel        | Tierra Linda
 455264704  | Valentina         | Mora Rangel        | Los Laureles
 283636187  | Gustavo           | Moreno López       | El Arrayán
 283636187  | Gustavo           | Moreno López       | El Silencio
 587550249  | Gustavo           | Mosquera López     | La Siberia
 587550249  | Gustavo           | Mosquera López     | El Higuerón
 970305595  | Alejandra Andrea  | Mosquera Moreno    | El Oasis
 970305595  | Alejandra Andrea  | Mosquera Moreno    | El Placer
 970305595  | Alejandra Andrea  | Mosquera Moreno    | La Estrella
 811557533  | Adriana           | Mosquera Ospina    | El Vergel
 811557533  | Adriana           | Mosquera Ospina    | Las Palmas
 963176673  | Luis              | Mosquera Perdomo   | El Refugio
 963176673  | Luis              | Mosquera Perdomo   | Bella Vista Alta
 1053774538 | Isabella          | Mosquera Sandoval  | San Rafael
 1053774538 | Isabella          | Mosquera Sandoval  | Los Guaduales
 1053774538 | Isabella          | Mosquera Sandoval  | El Brillante
 160538872  | Liliana           | Mosquera Uribe     | El Triunfo
 51802865   | Alejandro         | Narváez Polanía    | El Danubio
 155634182  | Luz               | Niño Guerrero      | Santa Clara
 723123018  | Diego             | Niño Hernández     | Buenavista
 723123018  | Diego             | Niño Hernández     | La Floresta
 360667240  | Gabriela Carolina | Niño Ortiz         | El Guamo
 360667240  | Gabriela Carolina | Niño Ortiz         | La Loma
 641839251  | Efraín            | Ortega Correa      | La Milagrosa
 968133883  | Sandra            | Ortega García      | La Primavera
 968133883  | Sandra            | Ortega García      | El Porvenir
 1177165427 | Juliana           | Ortega Osorio      | El Refugio
 361839624  | Rocío Alba        | Ortega Serrano     | El Encanto
 361839624  | Rocío Alba        | Ortega Serrano     | San José
 361839624  | Rocío Alba        | Ortega Serrano     | Bellavista
 59388780   | Juan              | Ortega Zapata      | La Loma
 254078333  | Alberto           | Ortiz Lasso        | El Recreo
 1189704117 | Mariana           | Ortiz Ruiz         | La Palma
 406352604  | Jaime Wilmer      | Ortiz Vargas       | La Unión
 783174188  | Luz               | Osorio Cuéllar     | San José
 808693611  | Natalia           | Ospina Burbano     | Las Mercedes
 914235490  | Óscar             | Ospina González    | La Esperanza
 966970818  | Gustavo           | Parra Ortiz        | La Cascada
 966970818  | Gustavo           | Parra Ortiz        | El Brillante
 546579335  | Wilson            | Parra Prada        | Villa Hermosa
 699883472  | Ramiro            | Parra Trujillo     | Las Delicias
 699883472  | Ramiro            | Parra Trujillo     | La Pradera
 728596637  | Mauricio          | Peña Bastidas      | El Recuerdo
 437443011  | Julián            | Peña Betancur      | Los Arrayanes
 850962053  | David             | Perdomo Mosquera   | Mi Ranchito
 1135293825 | Abelardo          | Pérez Castro       | Los Laureles
 1135293825 | Abelardo          | Pérez Castro       | San José
 1135293825 | Abelardo          | Pérez Castro       | Tierra Linda
 549847293  | Wilmer            | Pérez Chamorro     | El Refugio
 1012324420 | Martha Carolina   | Pérez Jaimes       | El Cedro
 1143295403 | Liliana           | Pérez Parra        | Villa Hermosa
 677772599  | Guillermo         | Pérez Pérez        | El Retiro
 599185252  | Efraín            | Pinzón Cabrera     | Monteverde
 571748382  | Marleny           | Pinzón Delgado     | El Silencio
 942530661  | Javier            | Pinzón Jiménez     | La Loma
 1060881964 | Inés              | Polanía Bedoya     | La Reserva
 914044314  | Ancízar Cristian  | Polanía Delgado    | Los Arrayanes
 765824560  | Manuel            | Quintero Arias     | Villa Rosa
 805029874  | Pedro             | Ramírez Barrera    | El Tesoro
 805029874  | Pedro             | Ramírez Barrera    | La Aurora
 529703819  | Mónica Elsa       | Ramírez Castro     | La Soledad
 529703819  | Mónica Elsa       | Ramírez Castro     | La Quebrada
 336247561  | Francisco         | Ramírez Sandoval   | El Nogal
 336247561  | Francisco         | Ramírez Sandoval   | La Reserva
 302345504  | Elsa              | Ramos Cárdenas     | La Cabaña
 33787285   | Rubén             | Ramos Chamorro     | El Bosque
 746737893  | Natalia           | Ramos Vargas       | El Oasis
 276159211  | Francisco         | Restrepo Perdomo   | El Mesón
 647948165  | Yesenia           | Rincón Caicedo     | El Oasis
 94235991   | Rafael Francisco  | Rincón Romero      | El Recreo
 91139207   | Mario             | Rincón Suárez      | El Jardín
 91139207   | Mario             | Rincón Suárez      | La Selva
 290597798  | Rosa              | Ríos Cárdenas      | El Horizonte
 92240743   | Mario             | Ríos Ibarra        | Villa Rosa
 92240743   | Mario             | Ríos Ibarra        | El Recreo
 1168119731 | Felipe Camilo     | Ríos Ospina        | Las Palmas
 1168119731 | Felipe Camilo     | Ríos Ospina        | El Vergel
 252140095  | Alba              | Ríos Rodríguez     | El Mirador
 252140095  | Alba              | Ríos Rodríguez     | La Cabaña
 273193028  | Erika             | Ríos Suárez        | La Holanda
 870262750  | Gloria Aura       | Ríos Vera          | La Cascada
 478755763  | Nicolás           | Rivera Duque       | El Oasis
 135734682  | Diego             | Rivera Jiménez     | El Refugio
 135734682  | Diego             | Rivera Jiménez     | El Cafetal
 333176982  | Edilma            | Rivera Rivera      | San Antonio
 478787290  | Óscar             | Rivera Tovar       | La Montaña
 137851877  | Gabriela          | Rodríguez Ortega   | Tierra Linda
 1090968710 | Ruth              | Rodríguez Pérez    | El Horizonte
 548464915  | Yuliana           | Rodríguez Vargas   | La Siberia
 548464915  | Yuliana           | Rodríguez Vargas   | El Higuerón
 446019320  | Fernando          | Rojas Cárdenas     | La Fortuna
 897433183  | Patricia Amparo   | Rojas Ríos         | Los Guaduales
 897433183  | Patricia Amparo   | Rojas Ríos         | El Brillante
 897433183  | Patricia Amparo   | Rojas Ríos         | San Rafael
 863442205  | Luz               | Rojas Torres       | Cafetal Viejo
 863442205  | Luz               | Rojas Torres       | El Danubio
 590872233  | Reinaldo          | Romero Agudelo     | Los Arrayanes
 590872233  | Reinaldo          | Romero Agudelo     | El Guayabo
 590872233  | Reinaldo          | Romero Agudelo     | Las Orquídeas
 24999630   | Esperanza         | Romero Betancur    | La Florida
 24999630   | Esperanza         | Romero Betancur    | El Oasis
 940051048  | David Germán      | Romero Bonilla     | La Palma
 754745808  | Jairo             | Romero Gutiérrez   | La Soledad
 754745808  | Jairo             | Romero Gutiérrez   | La Quebrada
 410167282  | Gustavo Pedro     | Romero Pinzón      | El Recreo
 134410171  | Orlando           | Salazar Bermúdez   | El Diamante
 922724022  | Esteban           | Salazar Parra      | Las Acacias
 302894847  | Reinaldo Jorge    | Sánchez Agudelo    | La Granja
 302894847  | Reinaldo Jorge    | Sánchez Agudelo    | El Cedro
 302894847  | Reinaldo Jorge    | Sánchez Agudelo    | Las Brisas
 1079700992 | Camila            | Sánchez Pinzón     | El Diamante
 1079700992 | Camila            | Sánchez Pinzón     | El Paraíso
 610678466  | Nicolás           | Sánchez Rodríguez  | El Nogal
 302059113  | Yuliana           | Sandoval Bedoya    | La Granja
 1180237528 | Ángela Beatriz    | Sandoval Bermúdez  | La Estrella
 1090578662 | Gladys Patricia   | Sandoval Duarte    | La Reserva
 938685616  | Sandra            | Sandoval Ortega    | El Guamo
 938685616  | Sandra            | Sandoval Ortega    | La Pradera
 938685616  | Sandra            | Sandoval Ortega    | Las Delicias
 449792023  | Myriam            | Sandoval Osorio    | El Nogal
 988262002  | Jazmín            | Silva Gómez        | La Esperanza
 1050862619 | Yesenia           | Silva Henao        | El Retiro
 44817013   | Aníbal            | Silva Villamizar   | Bellavista
 44817013   | Aníbal            | Silva Villamizar   | El Encanto
 403413565  | Reinaldo          | Suárez Polanía     | Mi Ranchito
 403413565  | Reinaldo          | Suárez Polanía     | La Quebrada
 700421194  | Teresa            | Torres Giraldo     | El Tesoro
 1138270357 | Gustavo Heriberto | Torres Guerrero    | La Gaitana
 1138270357 | Gustavo Heriberto | Torres Guerrero    | El Recuerdo
 356807172  | Aura              | Torres Ortega      | El Tesoro
 756405214  | Gloria            | Tovar Benavides    | El Vergel
 756405214  | Gloria            | Tovar Benavides    | Las Palmas
 756405214  | Gloria            | Tovar Benavides    | Los Alpes
 811526011  | Arturo            | Tovar Calderón     | La Cumbre
 811526011  | Arturo            | Tovar Calderón     | Santa Bárbara
 553185238  | Ángela            | Tovar Lasso        | El Guayabo
 793273339  | Libardo           | Trujillo Torres    | El Diamante
 179146863  | Dora Lucía        | Uribe Arango       | El Recuerdo
 578947645  | Mario             | Uribe Cuéllar      | El Porvenir
 578947645  | Mario             | Uribe Cuéllar      | La Primavera
 534023693  | Myriam            | Valencia Moreno    | Los Arrayanes
 534023693  | Myriam            | Valencia Moreno    | Las Orquídeas
 534023693  | Myriam            | Valencia Moreno    | El Guayabo
 534023693  | Myriam            | Valencia Moreno    | La Palma
 748380481  | Teresa Adriana    | Valencia Moreno    | La Floresta
 402745033  | Julián Guillermo  | Valencia Narváez   | El Silencio
 712500733  | Esperanza         | Valencia Ortiz     | Bella Vista Alta
 712500733  | Esperanza         | Valencia Ortiz     | El Higuerón
 712500733  | Esperanza         | Valencia Ortiz     | El Refugio
 712500733  | Esperanza         | Valencia Ortiz     | La Siberia
 813687871  | Andrés Emilio     | Valencia Parra     | El Horizonte
 1109661392 | Fabio Luis        | Valencia Ramírez   | Las Acacias
 211924295  | Álvaro            | Valencia Rivera    | Tierra Linda
 211924295  | Álvaro            | Valencia Rivera    | Los Laureles
 141739132  | Alba              | Vargas Losada      | El Oasis
 141739132  | Alba              | Vargas Losada      | La Estrella
 727121857  | Alba              | Vera Calderón      | Los Guaduales
 388108693  | Miguel            | Villamizar Correa  | Los Pinos
 443361503  | Rubén             | Villamizar Mejía   | Altamira
 1144582366 | David             | Zapata Arias       | La Argentina
 1144582366 | David             | Zapata Arias       | Las Acacias
 1144582366 | David             | Zapata Arias       | El Triunfo
 1144582366 | David             | Zapata Arias       | La Gaitana
 674769591  | Iván              | Zapata Ortiz       | El Mesón
 796884051  | Yuliana           | Zapata Parra       | La Aurora
 314914042  | Olga Luisa        | Zapata Rivera      | Mi Ranchito
 224364120  | Valentina         | Zapata Valencia    | Villa Hermosa
 338193839  | Laura             | Zuluaga Benavides  | El Bosque
 1185160275 | Ramiro            | Zuluaga Duque      | El Tesoro
 1185160275 | Ramiro            | Zuluaga Duque      | La Aurora
(370 filas)
**/
