-- Exercise 6-a
-- Tablas: farm.farmers, buy.collection_points, geo.municipalities, buy.deliveries.
-- a) Para el directorio de la seccional, consulte las asociadas (gender = 'F') del municipio 54518 con su nombre corto: la inicial del primer nombre, un punto, un espacio y los apellidos (por ejemplo M. Agudelo Sandoval), junto con su teléfono, con los alias short_name y phone, ordenadas por apellido y nombre.

SELECT 
    CONCAT(SUBSTRING(T1.first_name FROM 1 FOR 1), '. ', T1.last_name) AS short_name,
    T1.phone_number AS phone
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'
  AND T1.gender = 'F'
ORDER BY T1.last_name, T1.first_name;

/**
      short_name      |   phone
----------------------+------------
 M. Agudelo Sandoval  | 3242280898
 E. Álvarez Bonilla   | 3236902029
 R. Álvarez Cárdenas  | 3047898372
 M. Álvarez Carrillo  | 3059237130
 M. Álvarez Correa    | 3232410671
 M. Arango Narváez    | 3178267449
 E. Arias Álvarez     | 3213658326
 V. Arias Ramírez     | 3204850778
 I. Barrera Cabrera   | 3041744702
 M. Barrera Correa    | 3126485460
 A. Bastidas Chamorro | 3023807439
 M. Bastidas Medina   | 3508652479
 R. Bastidas Suárez   | 3015208796
 M. Benavides Delgado | 3229418470
 Y. Bermúdez Henao    | 3141005257
 M. Burbano Duarte    | 3183590387
 J. Burbano Jaimes    | 3202058604
 N. Caicedo Medina    | 3183905612
 L. Caicedo Restrepo  | 3232775188
 C. Cárdenas Moreno   | 3149324862
 A. Cardona Ruiz      | 3007467744
 A. Castillo Henao    | 3136723568
 L. Chamorro Vélez    | 3002682380
 I. Díaz Cuéllar      | 3507141858
 C. Díaz García       | 3207660684
 D. Díaz Medina       | 3023178503
 A. Duarte Duque      | 3059102841
 I. Duque Cárdenas    | 3218255507
 I. Erazo Hernández   | 3218610130
 M. Flórez González   | 3139496613
 M. Flórez González   | 3129681922
 M. Giraldo Arango    | 3243151645
 V. González Molina   | 3213218779
 S. Henao Jaimes      | 3215284608
 N. Henao Ramírez     | 3505807029
 D. Hernández Correa  | 3166719225
 B. Hernández Muñoz   | 3169006643
 T. Ibarra Caicedo    | 3029275295
 E. Ibarra Molina     | 3189660702
 L. Jaimes Bermúdez   | 3028082182
 R. Jaimes Cardona    | 3113703408
 E. Jaimes Vera       | 3007738061
 R. Jiménez Guerrero  | 3502547964
 I. Jiménez Jaimes    | 3104090231
 S. Losada Gutiérrez  | 3176835753
 D. Lozano Castro     | 3185641970
 L. Lozano Losada     | 3163744297
 D. Lozano Rincón     | 3506302080
 E. Marín Henao       | 3207549458
 S. Marín Osorio      | 3022845525
 S. Marín Rojas       | 3111640267
 J. Mejía Mejía       | 3163353607
 Y. Mejía Rangel      | 3135795746
 E. Mejía Vera        | 3019766136
 D. Molina Moreno     | 3207898298
 A. Molina Torres     | 3102358832
 L. Montoya Mejía     | 3204290515
 F. Montoya Valencia  | 3226927113
 V. Mora Rangel       | 3045031417
 A. Mosquera Moreno   | 3115813829
 A. Mosquera Ospina   | 3118036799
 I. Mosquera Sandoval | 3168625937
 L. Mosquera Uribe    | 3119365364
 L. Niño Guerrero     | 3192252062
 G. Niño Ortiz        | 3225832230
 S. Ortega García     | 3128326631
 J. Ortega Osorio     | 3206119667
 R. Ortega Serrano    | 3249488512
 M. Ortiz Ruiz        | 3004621446
 L. Osorio Cuéllar    | 3142214272
 N. Ospina Burbano    | 3024148071
 M. Pérez Jaimes      | 3106136802
 L. Pérez Parra       | 3059370269
 M. Pinzón Delgado    | 3227789082
 I. Polanía Bedoya    | 3228967635
 M. Ramírez Castro    | 3169846360
 E. Ramos Cárdenas    | 3223652167
 N. Ramos Vargas      | 3001623960
 Y. Rincón Caicedo    | 3041422228
 R. Ríos Cárdenas     | 3175410872
 A. Ríos Rodríguez    | 3179156514
 E. Ríos Suárez       | 3235535099
 G. Ríos Vera         | 3022197781
 E. Rivera Rivera     | 3126087263
 G. Rodríguez Ortega  | 3163610048
 R. Rodríguez Pérez   | 3021808053
 Y. Rodríguez Vargas  | 3173571208
 P. Rojas Ríos        | 3186792700
 L. Rojas Torres      | 3139216657
 E. Romero Betancur   | 3029623613
 C. Sánchez Pinzón    | 3053337474
 Y. Sandoval Bedoya   | 3157502482
 Á. Sandoval Bermúdez | 3505232225
 G. Sandoval Duarte   | 3042274831
 S. Sandoval Ortega   | 3026392429
 M. Sandoval Osorio   | 3016344667
 J. Silva Gómez       | 3177516031
 Y. Silva Henao       | 3146481441
 T. Torres Giraldo    | 3173921806
 A. Torres Ortega     | 3136363548
 G. Tovar Benavides   | 3041469978
 Á. Tovar Lasso       | 3177458442
 D. Uribe Arango      | 3173140479
 M. Valencia Moreno   | 3241389451
 T. Valencia Moreno   | 3186216099
 E. Valencia Ortiz    | 3111830019
 A. Vera Calderón     | 3055735681
 Y. Zapata Parra      | 3172431642
 O. Zapata Rivera     | 3025693162
 V. Zapata Valencia   | 3166445539
 L. Zuluaga Benavides | 3243686927
(111 filas)
**/