-- Exercise 9-c
-- Tablas: buy.deliveries, buy.collection_points, farm.farmers.
--c) Cree la función farm.fn_short_name(p_first_name VARCHAR, p_last_name VARCHAR) que devuelva (RETURNS VARCHAR) la 
--inicial del nombre en mayúscula, un punto, un espacio y los apellidos. Úsela para listar los asociados (gender = 'M') 
--del municipio 54518 con su teléfono, con los alias short_name y phone, ordenados por apellido y nombre.

CREATE OR REPLACE FUNCTION farm.fn_short_name(
    p_first_name VARCHAR,
    p_last_name VARCHAR
)
RETURNS VARCHAR
LANGUAGE plpgsql
AS $$
DECLARE
    v_short_name VARCHAR;
BEGIN
    v_short_name := CONCAT(UPPER(SUBSTRING(p_first_name FROM 1 FOR 1)), '. ', p_last_name);
    RETURN v_short_name;
END;
$$;

SELECT 
    farm.fn_short_name(T1.first_name, T1.last_name) AS short_name,
    T1.phone_number AS phone
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'
  AND T1.gender = 'M'
ORDER BY T1.last_name, T1.first_name;
/**
      short_name       |   phone
-----------------------+------------
 M. Agudelo Jiménez    | 3219718862
 A. Álvarez Villamizar | 3025342853
 A. Arango Silva       | 3053453318
 C. Arias Mora         | 3045535545
 G. Arias Rodríguez    | 3131845672
 R. Barrera Villamizar | 3056539829
 A. Bastidas Rodríguez | 3145736315
 A. Bastidas Rodríguez | 3508682050
 N. Bedoya Vélez       | 3194564518
 I. Bermúdez Flórez    | 3139698870
 R. Bermúdez Muñoz     | 3051351571
 E. Bermúdez Rojas     | 3142064892
 S. Bermúdez Ruiz      | 3003993000
 D. Bonilla Duarte     | 3234592947
 É. Burbano Arango     | 3203780826
 F. Burbano Flórez     | 3028675754
 J. Burbano Molina     | 3158636721
 R. Cabrera Villamizar | 3502554241
 I. Cáceres Galvis     | 3047673614
 C. Calderón Trujillo  | 3167509635
 E. Carrillo Perdomo   | 3135267851
 C. Castillo Torres    | 3197585250
 R. Castro Contreras   | 3197205687
 N. Chamorro Vera      | 3001185317
 E. Contreras Ospina   | 3147500823
 A. Contreras Peña     | 3116255536
 Á. Correa Ríos        | 3125462491
 J. Cuéllar Cáceres    | 3019841594
 H. Cuéllar Romero     | 3506087296
 E. Delgado Molina     | 3118015821
 J. Delgado Villamizar | 3225663039
 F. Díaz Cuéllar       | 3004527998
 W. Díaz Ramírez       | 3227044397
 A. Díaz Vélez         | 3013067467
 D. Duque Ruiz         | 3242698476
 F. Galvis Duarte      | 3126767373
 N. González Rodríguez | 3023800384
 J. González Zuluaga   | 3504451578
 C. Gutiérrez Pabón    | 3223406765
 F. Hernández Lasso    | 3246919070
 A. Hernández Uribe    | 3058169707
 C. Herrera Zuluaga    | 3242295228
 G. Ibarra Agudelo     | 3506003684
 D. Jaimes Ruiz        | 3132431627
 L. Jaimes Salazar     | 3116927952
 H. Jiménez Cáceres    | 3164266457
 H. Jiménez Parra      | 3244209117
 H. Jiménez Restrepo   | 3048547264
 L. Lasso Serrano      | 3113250445
 W. López Villamizar   | 3055094275
 J. Marín Hernández    | 3114778905
 G. Marín Sandoval     | 3205233566
 Y. Medina Londoño     | 3501426840
 N. Mejía Vera         | 3022063857
 J. Molina Pabón       | 3018237329
 H. Montoya Agudelo    | 3218003724
 W. Montoya Rodríguez  | 3217677705
 G. Moreno López       | 3026442670
 G. Mosquera López     | 3119000149
 L. Mosquera Perdomo   | 3135244980
 A. Narváez Polanía    | 3189266165
 D. Niño Hernández     | 3103428954
 E. Ortega Correa      | 3504175536
 J. Ortega Zapata      | 3217129169
 A. Ortiz Lasso        | 3228095091
 J. Ortiz Vargas       | 3233745261
 Ó. Ospina González    | 3153244524
 G. Parra Ortiz        | 3218747954
 W. Parra Prada        | 3217256211
 R. Parra Trujillo     | 3207383618
 M. Peña Bastidas      | 3156616125
 J. Peña Betancur      | 3239120208
 D. Perdomo Mosquera   | 3007586507
 A. Pérez Castro       | 3245612074
 W. Pérez Chamorro     | 3124455023
 G. Pérez Pérez        | 3015741336
 E. Pinzón Cabrera     | 3216450755
 J. Pinzón Jiménez     | 3132924855
 A. Polanía Delgado    | 3028825809
 M. Quintero Arias     | 3201475349
 P. Ramírez Barrera    | 3236105041
 F. Ramírez Sandoval   | 3051595847
 R. Ramos Chamorro     | 3244273375
 F. Restrepo Perdomo   | 3158258103
 R. Rincón Romero      | 3235869676
 M. Rincón Suárez      | 3135034800
 M. Ríos Ibarra        | 3188497714
 F. Ríos Ospina        | 3243938067
 N. Rivera Duque       | 3029310183
 D. Rivera Jiménez     | 3508307641
 Ó. Rivera Tovar       | 3112576000
 F. Rojas Cárdenas     | 3235672830
 R. Romero Agudelo     | 3028845789
 D. Romero Bonilla     | 3018117176
 J. Romero Gutiérrez   | 3209752935
 G. Romero Pinzón      | 3108757369
 O. Salazar Bermúdez   | 3141904023
 E. Salazar Parra      | 3162718294
 R. Sánchez Agudelo    | 3007420608
 N. Sánchez Rodríguez  | 3114761362
 A. Silva Villamizar   | 3196176936
 R. Suárez Polanía     | 3128378640
 G. Torres Guerrero    | 3225736942
 A. Tovar Calderón     | 3023121990
 L. Trujillo Torres    | 3162889357
 M. Uribe Cuéllar      | 3104008873
 J. Valencia Narváez   | 3202082759
 A. Valencia Parra     | 3177768578
 F. Valencia Ramírez   | 3007371586
 Á. Valencia Rivera    | 3218112033
 M. Villamizar Correa  | 3104065619
 R. Villamizar Mejía   | 3167701408
 D. Zapata Arias       | 3013691068
 I. Zapata Ortiz       | 3143905175
 R. Zuluaga Duque      | 3143338682
(115 filas)
**/