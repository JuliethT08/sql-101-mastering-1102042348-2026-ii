-- Exercise 7-a
-- Tablas: farm.farmers, buy.collection_points, farm.farms. 
-- a) La seccional de Pamplona quiere un solo directorio telefónico. Consulte, en una sola lista, los asociados del municipio 54518 y los puntos de compra de Norte de Santander que tienen teléfono registrado, con tres columnas: un texto jo 'farmer' o 'collection_point', el nombre (para los asociados, nombres y apellidos unidos con CONCAT) y el teléfono, con los alias contact_type, contact_name y phone, ordenados por tipo y luego por nombre.

SELECT 
    'farmer' AS contact_type,
    CONCAT(T1.first_name, ' ', T1.last_name) AS contact_name,
    T1.phone_number AS phone
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'
  AND T1.phone_number IS NOT NULL

UNION

SELECT 
    'collection_point' AS contact_type,
    T2.point_name AS contact_name,
    T2.phone_number AS phone
FROM buy.collection_points AS T2
INNER JOIN geo.municipalities AS T3
    ON T2.municipality_code = T3.municipality_code
WHERE T3.department_code = '54'
  AND T2.phone_number IS NOT NULL
ORDER BY contact_type, contact_name;

/**
   contact_type   |           contact_name            |   phone
------------------+-----------------------------------+------------
 collection_point | Punto de Compra Chinácota 1       | 6018933221
 collection_point | Punto de Compra Convención 1      | 6013582031
 collection_point | Punto de Compra El Carmen 1       | 6026129845
 collection_point | Punto de Compra El Zulia 1        | 6014148127
 collection_point | Punto de Compra Herrán 1          | 6017529911
 collection_point | Punto de Compra Herrán 2          | 6079941701
 collection_point | Punto de Compra Ocaña 1           | 6032506284
 collection_point | Punto de Compra Sardinata 1       | 6039449180
 farmer           | Abelardo Pérez Castro             | 3245612074
 farmer           | Adriana Mosquera Ospina           | 3118036799
 farmer           | Alba Ríos Rodríguez               | 3179156514
 farmer           | Alba Vargas Losada                | 3242791385
 farmer           | Alba Vera Calderón                | 3055735681
 farmer           | Alberto Álvarez Villamizar        | 3025342853
 farmer           | Alberto Bastidas Rodríguez        | 3145736315
 farmer           | Alberto Ortiz Lasso               | 3228095091
 farmer           | Alejandra Andrea Mosquera Moreno  | 3115813829
 farmer           | Alejandra Molina Torres           | 3102358832
 farmer           | Alejandro Narváez Polanía         | 3189266165
 farmer           | Álvaro Bermúdez Marín             | 3109599129
 farmer           | Álvaro Correa Ríos                | 3125462491
 farmer           | Álvaro Valencia Rivera            | 3218112033
 farmer           | Amparo Bastidas Chamorro          | 3023807439
 farmer           | Amparo Duarte Duque               | 3059102841
 farmer           | Ancízar Arango Silva              | 3053453318
 farmer           | Ancízar Cristian Polanía Delgado  | 3028825809
 farmer           | Andrea Cardona Ruiz               | 3007467744
 farmer           | Andrés Emilio Valencia Parra      | 3177768578
 farmer           | Ángela Beatriz Sandoval Bermúdez  | 3505232225
 farmer           | Ángela Tovar Lasso                | 3177458442
 farmer           | Aníbal Silva Villamizar           | 3196176936
 farmer           | Antonio Bastidas Rodríguez        | 3508682050
 farmer           | Antonio Díaz Vélez                | 3013067467
 farmer           | Arturo Contreras Peña             | 3116255536
 farmer           | Arturo Hernández Uribe            | 3058169707
 farmer           | Arturo Tovar Calderón             | 3023121990
 farmer           | Aura Castillo Henao               | 3136723568
 farmer           | Aura Torres Ortega                | 3136363548
 farmer           | Beatriz Hernández Muñoz           | 3169006643
 farmer           | Camila Sánchez Pinzón             | 3053337474
 farmer           | Camilo Arias Mora                 | 3045535545
 farmer           | Camilo Iván Calderón Trujillo     | 3167509635
 farmer           | Carlos Castillo Torres            | 3197585250
 farmer           | Carlos Gutiérrez Pabón            | 3223406765
 farmer           | Carmen Cárdenas Moreno            | 3149324862
 farmer           | Cecilia Lorena Díaz García        | 3207660684
 farmer           | Cristian Herrera Zuluaga          | 3242295228
 farmer           | Daniel Bonilla Duarte             | 3234592947
 farmer           | Daniel Héctor Duque Ruiz          | 3242698476
 farmer           | Daniela Lozano Castro             | 3185641970
 farmer           | David Germán Romero Bonilla       | 3018117176
 farmer           | David Jaimes Ruiz                 | 3132431627
 farmer           | David Perdomo Mosquera            | 3007586507
 farmer           | David Zapata Arias                | 3013691068
 farmer           | Diana Díaz Medina                 | 3023178503
 farmer           | Diana Isabella Molina Moreno      | 3207898298
 farmer           | Diana Londoño Ramos               | 3124456518
 farmer           | Diana Lozano Rincón               | 3506302080
 farmer           | Diego Niño Hernández              | 3103428954
 farmer           | Diego Rivera Jiménez              | 3508307641
 farmer           | Dora Hernández Correa             | 3166719225
 farmer           | Dora Lucía Uribe Arango           | 3173140479
 farmer           | Édgar Burbano Arango              | 3203780826
 farmer           | Edilma Álvarez Bonilla            | 3236902029
 farmer           | Edilma Gabriela Arias Álvarez     | 3213658326
 farmer           | Edilma Rivera Rivera              | 3126087263
 farmer           | Efraín Ortega Correa              | 3504175536
 farmer           | Efraín Pinzón Cabrera             | 3216450755
 farmer           | Efraín Ricardo Contreras Ospina   | 3147500823
 farmer           | Elsa Ibarra Molina                | 3189660702
 farmer           | Elsa Marín Henao                  | 3207549458
 farmer           | Elsa Mejía Vera                   | 3019766136
 farmer           | Elsa Ramos Cárdenas               | 3223652167
 farmer           | Emilio Bermúdez Rojas             | 3142064892
 farmer           | Emilio Carrillo Perdomo           | 3135267851
 farmer           | Emilio Delgado Molina             | 3118015821
 farmer           | Erika Ríos Suárez                 | 3235535099
 farmer           | Esperanza Jaimes Vera             | 3007738061
 farmer           | Esperanza Romero Betancur         | 3029623613
 farmer           | Esperanza Valencia Ortiz          | 3111830019
 farmer           | Esteban Salazar Parra             | 3162718294
 farmer           | Fabio Díaz Cuéllar                | 3004527998
 farmer           | Fabio Hernández Lasso             | 3246919070
 farmer           | Fabio Luis Valencia Ramírez       | 3007371586
 farmer           | Fanny Montoya Valencia            | 3226927113
 farmer           | Felipe Camilo Ríos Ospina         | 3243938067
 farmer           | Fernando Burbano Flórez           | 3028675754
 farmer           | Fernando Galvis Duarte            | 3126767373
 farmer           | Fernando Rojas Cárdenas           | 3235672830
 farmer           | Francisco Ramírez Sandoval        | 3051595847
 farmer           | Francisco Restrepo Perdomo        | 3158258103
 farmer           | Gabriela Carolina Niño Ortiz      | 3225832230
 farmer           | Gabriela Rodríguez Ortega         | 3163610048
 farmer           | Gladys Patricia Sandoval Duarte   | 3042274831
 farmer           | Gloria Aura Ríos Vera             | 3022197781
 farmer           | Gloria Marín Rivera               | 3225571567
 farmer           | Gloria Tovar Benavides            | 3041469978
 farmer           | Guillermo Pedro Arias Rodríguez   | 3131845672
 farmer           | Guillermo Pérez Pérez             | 3015741336
 farmer           | Gustavo Heriberto Torres Guerrero | 3225736942
 farmer           | Gustavo Ibarra Agudelo            | 3506003684
 farmer           | Gustavo Marín Sandoval            | 3205233566
 farmer           | Gustavo Moreno López              | 3026442670
 farmer           | Gustavo Mosquera López            | 3119000149
 farmer           | Gustavo Parra Ortiz               | 3218747954
 farmer           | Gustavo Pedro Romero Pinzón       | 3108757369
 farmer           | Heriberto Andrés Cuéllar Romero   | 3506087296
 farmer           | Heriberto Jiménez Cáceres         | 3164266457
 farmer           | Hernando Miguel Jiménez Restrepo  | 3048547264
 farmer           | Hernando Montoya Agudelo          | 3218003724
 farmer           | Hugo Jiménez Parra                | 3244209117
 farmer           | Inés Duque Cárdenas               | 3218255507
 farmer           | Inés Erazo Hernández              | 3218610130
 farmer           | Inés Jiménez Jaimes               | 3104090231
 farmer           | Inés Lucía Díaz Cuéllar           | 3507141858
 farmer           | Inés Polanía Bedoya               | 3228967635
 farmer           | Isabella Barrera Cabrera          | 3041744702
 farmer           | Isabella Mosquera Sandoval        | 3168625937
 farmer           | Iván Bermúdez Flórez              | 3139698870
 farmer           | Iván Jaime Cáceres Galvis         | 3047673614
 farmer           | Iván Zapata Ortiz                 | 3143905175
 farmer           | Jaime Marín Hernández             | 3114778905
 farmer           | Jaime Santiago Cuéllar Cáceres    | 3019841594
 farmer           | Jaime Wilmer Ortiz Vargas         | 3233745261
 farmer           | Jairo Molina Pabón                | 3018237329
 farmer           | Jairo Romero Gutiérrez            | 3209752935
 farmer           | Javier Burbano Molina             | 3158636721
 farmer           | Javier González Zuluaga           | 3504451578
 farmer           | Javier Pinzón Jiménez             | 3132924855
 farmer           | Jazmín Burbano Jaimes             | 3202058604
 farmer           | Jazmín Silva Gómez                | 3177516031
 farmer           | Juan Ortega Zapata                | 3217129169
 farmer           | Julián Germán Delgado Villamizar  | 3225663039
 farmer           | Julián Guillermo Valencia Narváez | 3202082759
 farmer           | Julián Peña Betancur              | 3239120208
 farmer           | Juliana Ana Mejía Mejía           | 3163353607
 farmer           | Juliana Ortega Osorio             | 3206119667
 farmer           | Laura Zuluaga Benavides           | 3243686927
 farmer           | Libardo Lasso Serrano             | 3113250445
 farmer           | Libardo Trujillo Torres           | 3162889357
 farmer           | Liliana Luisa Chamorro Vélez      | 3002682380
 farmer           | Liliana Mosquera Uribe            | 3119365364
 farmer           | Liliana Pérez Parra               | 3059370269
 farmer           | Luis Jaimes Salazar               | 3116927952
 farmer           | Luis Mosquera Perdomo             | 3135244980
 farmer           | Luisa Caicedo Restrepo            | 3232775188
 farmer           | Luisa Lozano Losada               | 3163744297
 farmer           | Luisa Montoya Mejía               | 3204290515
 farmer           | Luz Martha Jaimes Bermúdez        | 3028082182
 farmer           | Luz Niño Guerrero                 | 3192252062
 farmer           | Luz Osorio Cuéllar                | 3142214272
 farmer           | Luz Rojas Torres                  | 3139216657
 farmer           | Manuel Agudelo Jiménez            | 3219718862
 farmer           | Manuel Quintero Arias             | 3201475349
 farmer           | Manuela Bastidas Medina           | 3508652479
 farmer           | Manuela Yolanda Benavides Delgado | 3229418470
 farmer           | María Burbano Duarte              | 3183590387
 farmer           | Mariana Barrera Correa            | 3126485460
 farmer           | Mariana Ortiz Ruiz                | 3004621446
 farmer           | Mario Rincón Suárez               | 3135034800
 farmer           | Mario Ríos Ibarra                 | 3188497714
 farmer           | Mario Uribe Cuéllar               | 3104008873
 farmer           | Marleny Agudelo Sandoval          | 3242280898
 farmer           | Marleny Álvarez Correa            | 3232410671
 farmer           | Marleny Pinzón Delgado            | 3227789082
 farmer           | Martha Carolina Pérez Jaimes      | 3106136802
 farmer           | Martha Giraldo Arango             | 3243151645
 farmer           | Mauricio Peña Bastidas            | 3156616125
 farmer           | Miguel Villamizar Correa          | 3104065619
 farmer           | Mónica Álvarez Carrillo           | 3059237130
 farmer           | Mónica Claudia Flórez González    | 3139496613
 farmer           | Mónica Elsa Ramírez Castro        | 3169846360
 farmer           | Myriam Flórez González            | 3129681922
 farmer           | Myriam Sandoval Osorio            | 3016344667
 farmer           | Myriam Valencia Moreno            | 3241389451
 farmer           | Myriam Yuliana Arango Narváez     | 3178267449
 farmer           | Natalia Ospina Burbano            | 3024148071
 farmer           | Natalia Ramos Vargas              | 3001623960
 farmer           | Nelson Bedoya Vélez               | 3194564518
 farmer           | Nelson Chamorro Vera              | 3001185317
 farmer           | Nelson Samuel Mejía Vera          | 3022063857
 farmer           | Nicolás González Rodríguez        | 3023800384
 farmer           | Nicolás Rivera Duque              | 3029310183
 farmer           | Nicolás Sánchez Rodríguez         | 3114761362
 farmer           | Nubia Juliana Caicedo Medina      | 3183905612
 farmer           | Nubia Natalia Henao Ramírez       | 3505807029
 farmer           | Olga Luisa Zapata Rivera          | 3025693162
 farmer           | Orlando Salazar Bermúdez          | 3141904023
 farmer           | Óscar Ospina González             | 3153244524
 farmer           | Óscar Rivera Tovar                | 3112576000
 farmer           | Patricia Amparo Rojas Ríos        | 3186792700
 farmer           | Pedro Ramírez Barrera             | 3236105041
 farmer           | Rafael Francisco Rincón Romero    | 3235869676
 farmer           | Ramiro Barrera Villamizar         | 3056539829
 farmer           | Ramiro Parra Trujillo             | 3207383618
 farmer           | Ramiro Zuluaga Duque              | 3143338682
 farmer           | Reinaldo Jorge Sánchez Agudelo    | 3007420608
 farmer           | Reinaldo Romero Agudelo           | 3028845789
 farmer           | Reinaldo Suárez Polanía           | 3128378640
 farmer           | Ricardo Castro Contreras          | 3197205687
 farmer           | Rocío Alba Ortega Serrano         | 3249488512
 farmer           | Rocío Álvarez Cárdenas            | 3047898372
 farmer           | Rocío Bastidas Suárez             | 3015208796
 farmer           | Rocío Manuela Jaimes Cardona      | 3113703408
 farmer           | Rodrigo Guillermo Bermúdez Muñoz  | 3051351571
 farmer           | Rodrigo Nelson Cabrera Villamizar | 3502554241
 farmer           | Rosa Ríos Cárdenas                | 3175410872
 farmer           | Rubén Ramos Chamorro              | 3244273375
 farmer           | Rubén Villamizar Mejía            | 3167701408
 farmer           | Ruth Jiménez Guerrero             | 3502547964
 farmer           | Ruth Rodríguez Pérez              | 3021808053
 farmer           | Sandra Henao Jaimes               | 3215284608
 farmer           | Sandra Ortega García              | 3128326631
 farmer           | Sandra Sandoval Ortega            | 3026392429
 farmer           | Santiago Bermúdez Ruiz            | 3003993000
 farmer           | Sara Losada Gutiérrez             | 3176835753
 farmer           | Sofía Marín Rojas                 | 3111640267
 farmer           | Stella Marín Osorio               | 3022845525
 farmer           | Teresa Adriana Valencia Moreno    | 3186216099
 farmer           | Teresa Ibarra Caicedo             | 3029275295
 farmer           | Teresa Torres Giraldo             | 3173921806
 farmer           | Valentina Mora Rangel             | 3045031417
 farmer           | Valentina Zapata Valencia         | 3166445539
 farmer           | Viviana Arias Ramírez             | 3204850778
 farmer           | Viviana González Molina           | 3213218779
 farmer           | Wilmer Montoya Rodríguez          | 3217677705
 farmer           | Wilmer Pérez Chamorro             | 3124455023
 farmer           | Wilson López Villamizar           | 3055094275
 farmer           | Wilson Parra Prada                | 3217256211
 farmer           | Wilson Yeison Díaz Ramírez        | 3227044397
 farmer           | Yeison Medina Londoño             | 3501426840
 farmer           | Yesenia Bermúdez Henao            | 3141005257
 farmer           | Yesenia Rincón Caicedo            | 3041422228
 farmer           | Yesenia Silva Henao               | 3146481441
 farmer           | Yuliana Jazmín Mejía Rangel       | 3135795746
 farmer           | Yuliana Rodríguez Vargas          | 3173571208
 farmer           | Yuliana Sandoval Bedoya           | 3157502482
 farmer           | Yuliana Zapata Parra              | 3172431642
(238 filas)
**/