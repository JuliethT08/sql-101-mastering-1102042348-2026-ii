-- Exercise 10-a 
-- Tablas: pay.settlements, buy.deliveries, farm.farms, farm.farmers, geo.municipalities.
-- a) Consulte, por cada caficultor (documento, nombres y apellidos), el n´umero de liquidaciones y el valor neto total --liquidado por las entregas de septiembre de 2026, con los alias document, first name, last name, settlements count
--y total net cop, ordenados por valor neto total de mayor a menor. (Cuatro tablas.)

SELECT 
    T4.document_number AS document,
    T4.first_name AS first_name,
    T4.last_name AS last_name,
    COUNT(T1.settlement_id) AS settlements_count,
    SUM(T1.net_amount) AS total_net_cop
FROM pay.settlements AS T1
INNER JOIN buy.deliveries AS T2
    ON T1.delivery_id = T2.delivery_id
INNER JOIN farm.farms AS T3
    ON T2.farm_id = T3.farm_id
INNER JOIN farm.farmers AS T4
    ON T3.farmer_id = T4.farmer_id
WHERE T2.delivery_id LIKE 'DLV-202609%'
GROUP BY T4.document_number, T4.first_name, T4.last_name
ORDER BY total_net_cop DESC;

/**
  document  |     first_name      |       last_name       | settlements_count | total_net_cop
------------+---------------------+-----------------------+-------------------+---------------
 30933664   | Cristian            | García Contreras      |                 3 |   15493357.77
 1071161211 | Alba                | Muñoz Ramírez         |                 2 |   14576631.94
 526195285  | Jairo               | Valencia Zapata       |                 2 |   14528146.87
 337551898  | Alejandro Mateo     | Flórez Uribe          |                 2 |   14460246.30
 854161034  | Luisa Martha        | Caicedo Romero        |                 1 |   13335230.83
 782091682  | Luisa               | Duque Torres          |                 2 |   12843595.73
 549378351  | Dora                | Galvis Ospina         |                 3 |   12821153.68
 182907696  | Jorge               | Duarte Zapata         |                 2 |   12777306.01
 446732017  | Reinaldo            | Ruiz Cuéllar          |                 2 |   12310076.05
 628772920  | Aura                | Osorio Medina         |                 2 |   12133626.08
 860889225  | Wilmer              | Barrera Vera          |                 2 |   12078718.23
 610231611  | Orlando             | Peña Vera             |                 1 |   12005420.07
 329350370  | Rubén               | Quintero Chamorro     |                 3 |   11967062.39
 894974935  | Alejandro           | Niño Flórez           |                 2 |   11914996.69
 1105751836 | Antonio             | Moreno Rojas          |                 3 |   11712814.76
 967037103  | Natalia             | Correa Jaimes         |                 2 |   11531226.36
 695945885  | Carolina            | Correa Pinzón         |                 2 |   11381891.73
 420092042  | Samuel              | Caicedo Mora          |                 2 |   11204499.77
 1119357624 | Yesenia Nubia       | Montoya Giraldo       |                 1 |   11114680.80
 372230229  | Sandra              | Rojas Calderón        |                 2 |   11080803.26
 917466527  | Guillermo Gustavo   | Delgado Acevedo       |                 1 |   11032091.12
 331235063  | Samuel Óscar        | Arias Jiménez         |                 2 |   10994005.87
 732259866  | Gustavo             | Marín Burbano         |                 1 |   10976260.61
 639041437  | Alberto             | Rincón Herrera        |                 1 |   10959451.38
 986072029  | Manuel              | Carrillo Betancur     |                 2 |   10910912.91
 872941046  | Inés                | Cabrera Díaz          |                 1 |   10800176.84
 841195935  | Santiago            | Galvis Guerrero       |                 1 |   10763485.08
 447176020  | Rosa                | González Bastidas     |                 1 |   10577379.54
 941274390  | Hernando Fabio      | Lozano Erazo          |                 2 |   10457056.62
 640932519  | Manuel Jorge        | Rodríguez Benavides   |                 1 |   10445584.60
 1131046356 | Germán Wilmer       | Correa Tovar          |                 2 |   10415535.36
 855012511  | Martha              | Pabón Rodríguez       |                 1 |   10398924.90
 433221065  | Jaime               | Lasso Pérez           |                 1 |   10315335.60
 753809573  | Aníbal Libardo      | Cárdenas Mosquera     |                 1 |   10291254.30
 435701329  | Myriam Mercedes     | Ortega Restrepo       |                 1 |   10288035.32
 29394305   | Fanny               | Vélez Galvis          |                 1 |   10273917.15
 390661083  | Reinaldo            | Ospina Restrepo       |                 2 |   10270314.78
 1094381845 | Laura               | Álvarez Torres        |                 1 |   10264548.60
 838170316  | María               | Bastidas Cardona      |                 1 |   10190032.14
 627926203  | Diego Óscar         | Burbano Pabón         |                 2 |   10163972.22
 1099222171 | Héctor              | Burbano Perdomo       |                 2 |   10139600.96
 10184647   | Mariana             | Hernández Delgado     |                 2 |   10130725.77
 418825643  | Alba                | Cárdenas Cáceres      |                 1 |    9976552.30
 481542823  | Hernando            | Duque Burbano         |                 1 |    9954728.48
 542024763  | Jazmín              | Zapata Prada          |                 1 |    9937740.78
 694987077  | Mariana             | Salazar Gutiérrez     |                 1 |    9910717.68
 203027394  | Sebastián           | Rincón Muñoz          |                 1 |    9889467.70
 66156104   | Samuel              | Agudelo Erazo         |                 2 |    9863701.42
 222456001  | Guillermo           | Gómez Castillo        |                 1 |    9835521.53
 141177553  | Carolina            | Cabrera Villamizar    |                 2 |    9820627.52
 603943461  | Rodrigo             | Gutiérrez Quintero    |                 1 |    9791328.20
 75565393   | Jairo               | Quintero Valencia     |                 2 |    9771940.96
 607171317  | Jorge               | Arango Prada          |                 2 |    9712350.34
 383800849  | Aníbal              | Restrepo Mora         |                 1 |    9695283.12
 391702233  | Liliana Andrea      | Cuéllar Ríos          |                 2 |    9677646.40
 679902982  | Javier              | Hernández Burbano     |                 1 |    9621302.10
 1141540771 | Nelson Rafael       | Lasso Losada          |                 2 |    9608802.71
 699067712  | Manuel              | Martínez Ortega       |                 1 |    9569074.84
 1091399264 | Mariana             | Losada Castillo       |                 2 |    9551133.74
 985613948  | Javier              | Trujillo Burbano      |                 2 |    9505217.98
 547820857  | María               | Ríos Galvis           |                 2 |    9502296.60
 147174543  | Francisco           | Romero Gutiérrez      |                 1 |    9461765.52
 561277054  | Gabriela Andrea     | Hernández Medina      |                 2 |    9423761.66
 761934686  | Ancízar             | Ruiz Zuluaga          |                 2 |    9416253.01
 882396053  | Carmen Ángela       | Rojas Burbano         |                 1 |    9400962.01
 1143359196 | Miguel Yeison       | Jaimes Burbano        |                 1 |    9381770.75
 675579799  | Carlos              | Duarte Rincón         |                 1 |    9379129.50
 1081318187 | Édgar               | Castillo Jiménez      |                 1 |    9358315.96
 1113181730 | Gloria              | Bedoya Carrillo       |                 2 |    9329472.73
 706737333  | Beatriz             | Peña Bastidas         |                 1 |    9327870.51
 151471107  | Antonio             | Díaz Zuluaga          |                 2 |    9302534.38
 193500606  | Cristian            | Serrano Narváez       |                 1 |    9287105.72
 754693942  | Manuela             | Bermúdez Cáceres      |                 1 |    9274948.23
 1009634912 | Reinaldo            | Romero Pabón          |                 2 |    9249475.42
 1143154791 | Manuel              | Cabrera Ospina        |                 2 |    9179381.03
 273112986  | Rocío               | Zapata Sánchez        |                 1 |    9147383.04
 1034587321 | Gloria              | Martínez Pérez        |                 2 |    9133737.24
 683666827  | Rocío               | Rincón Lasso          |                 1 |    9130143.80
 923773095  | Miguel              | Montoya Vargas        |                 1 |    9128679.68
 207786604  | Teresa              | Trujillo Montoya      |                 1 |    9097410.32
 595945812  | Mario               | Duarte Torres         |                 1 |    9076532.52
 313050317  | Guillermo           | López Betancur        |                 1 |    9073991.12
 640762785  | Lorena              | Rincón Parra          |                 2 |    9060284.08
 837000958  | Myriam              | Londo��o Duarte        |                 3 |    9036928.84
 971402924  | Alberto Iván        | Cáceres Barrera       |                 1 |    9002255.00
 211817807  | Paola               | Arias Álvarez         |                 1 |    8966638.32
 1007212699 | Amparo Edilma       | Ibarra Prada          |                 1 |    8929768.32
 716491021  | Cecilia             | Agudelo Losada        |                 1 |    8922750.26
 1022834339 | Cecilia Lucía       | Mosquera Pabón        |                 2 |    8920019.18
 1108052157 | Alejandra           | Torres Barrera        |                 1 |    8889139.74
 1139141308 | Gilberto Mauricio   | Betancur Duarte       |                 1 |    8877015.64
 216803411  | Diana               | Calderón Silva        |                 1 |    8871595.66
 642262980  | Marcela María       | Barrera Villamizar    |                 2 |    8846623.83
 676626888  | Jorge José          | Trujillo Villamizar   |                 1 |    8816362.20
 273878227  | Lorena              | Chamorro Trujillo     |                 2 |    8809770.55
 40085628   | Blanca              | Gómez Bonilla         |                 1 |    8801893.78
 806090001  | Diana               | Suárez Ortiz          |                 1 |    8797042.83
 449225161  | Rocío               | Molina Uribe          |                 2 |    8776995.91
 743733847  | Paola               | Martínez Duarte       |                 1 |    8774766.69
 254153324  | Alberto             | Díaz Castillo         |                 2 |    8766274.26
 642090734  | Aníbal              | Marín Contreras       |                 1 |    8724602.88
 293132029  | Claudia             | Ramos Cabrera         |                 2 |    8722081.90
 421341188  | Jorge               | Mejía Galvis          |                 1 |    8688177.75
 526377934  | Gloria              | Ruiz Duarte           |                 1 |    8673087.62
 40509966   | Beatriz Diana       | Pinzón Cáceres        |                 1 |    8652657.52
 310399566  | Rafael Emilio       | Martínez Peña         |                 1 |    8650328.39
 383889806  | Rubén               | Ortega Flórez         |                 2 |    8614738.30
 228635627  | Héctor              | Caicedo Vargas        |                 1 |    8609130.23
 674375353  | Mateo Mario         | Gómez Gómez           |                 1 |    8601069.41
 385518983  | Natalia             | Torres Duarte         |                 2 |    8586053.32
 1049016660 | Rodrigo             | Serrano Cardona       |                 2 |    8580582.55
 690561037  | Yuliana Camila      | Ospina Díaz           |                 1 |    8565796.98
 12248479   | Inés                | Vélez Mejía           |                 2 |    8558090.36
 516563951  | Luz                 | Agudelo Contreras     |                 1 |    8551972.08
 585163044  | Jairo               | Duarte García         |                 1 |    8538595.95
 655509073  | José                | Cuéllar Duque         |                 1 |    8522115.27
 942315218  | Hernando            | Benavides Guerrero    |                 1 |    8503682.88
 955325021  | Sofía Lucía         | Torres Barrera        |                 1 |    8499157.32
 1126888552 | Antonio             | Parra Peña            |                 1 |    8498324.21
 212371381  | Isabella            | Pinzón Moreno         |                 1 |    8495568.20
 711086464  | Felipe              | González Gutiérrez    |                 2 |    8486046.66
 664287031  | Sara Fanny          | Ortega Burbano        |                 1 |    8471064.87
 281461166  | Nicolás             | Ibarra Montoya        |                 2 |    8456093.62
 154603533  | Pedro               | Osorio Peña           |                 1 |    8452623.17
 174349386  | Jairo               | Cuéllar Agudelo       |                 1 |    8443978.82
 719588969  | Sandra Nubia        | Villamizar Bermúdez   |                 1 |    8433111.36
 903209375  | José                | Flórez Cáceres        |                 2 |    8427956.61
 1007079416 | Fernando            | Vélez Sánchez         |                 1 |    8426087.31
 160355989  | Gladys              | Pabón González        |                 1 |    8422277.46
 1148264773 | Amparo              | Ramírez Mora          |                 1 |    8419190.40
 194522318  | Gustavo             | Pinzón Ramírez        |                 1 |    8415299.97
 721183769  | Laura Sofía         | Parra Gómez           |                 2 |    8402532.82
 746543564  | Laura               | Betancur Lozano       |                 1 |    8386156.22
 127189012  | Luis                | Cabrera Ramos         |                 2 |    8384964.10
 251602076  | Daniel              | Osorio Betancur       |                 1 |    8375596.00
 1010554488 | Ancízar Óscar       | Carrillo Serrano      |                 1 |    8371705.89
 431077241  | Mauricio Ricardo    | Herrera Vargas        |                 2 |    8371560.00
 109880941  | Carmen Yolanda      | Narváez Cabrera       |                 1 |    8369863.86
 390007192  | Elsa                | Quintero Romero       |                 1 |    8367411.78
 648140547  | Heriberto           | Restrepo Villamizar   |                 1 |    8341481.68
 620272633  | Brayan              | Medina García         |                 2 |    8337750.01
 58725824   | Jaime               | Restrepo Marín        |                 1 |    8323494.78
 468652387  | Blanca              | Henao Uribe           |                 1 |    8298103.92
 616331321  | Teresa Leidy        | Delgado Pabón         |                 1 |    8273936.55
 260762038  | Efraín              | Bastidas Londoño      |                 1 |    8272455.20
 829854787  | Diego               | Romero Betancur       |                 1 |    8261864.40
 1185786909 | Wilmer              | Galvis Salazar        |                 2 |    8223247.86
 135247344  | Antonio             | Osorio Rodríguez      |                 1 |    8216126.81
 1074180927 | Rocío Aura          | Carrillo Rivera       |                 2 |    8209130.80
 33924503   | Manuel              | Villamizar Parra      |                 1 |    8203831.43
 1046002749 | Édgar Gustavo       | Cabrera Erazo         |                 1 |    8192190.73
 958567135  | Mateo               | Burbano Londoño       |                 1 |    8191071.72
 752157858  | Inés                | Polanía López         |                 2 |    8157299.38
 684541397  | Yeison              | Álvarez Zuluaga       |                 2 |    8133331.37
 266906655  | Claudia Carmen      | Prada Vélez           |                 2 |    8130103.67
 331290075  | Gladys Adriana      | Cuéllar Zapata        |                 2 |    8115513.84
 521957325  | Heriberto Javier    | Ibarra Ruiz           |                 1 |    8113008.60
 107962623  | Fanny Gladys        | Duarte Calderón       |                 1 |    8112195.06
 132078070  | Andrea              | Sandoval Cuéllar      |                 2 |    8105785.72
 734469010  | Marleny             | Sánchez Ortega        |                 1 |    8105569.22
 1048275555 | Carlos              | Chamorro Duarte       |                 1 |    8096856.90
 799617303  | Sebastián           | Peña Correa           |                 1 |    8095099.11
 939544414  | Libardo             | Pérez Muñoz           |                 1 |    8073320.40
 908450219  | Germán              | Ruiz Gutiérrez        |                 1 |    8050141.61
 560447167  | Emilio              | Agudelo Suárez        |                 1 |    8039040.21
 675959023  | Alejandra           | Ibarra Rivera         |                 1 |    8033838.51
 86401617   | Rodrigo             | Rangel Lasso          |                 1 |    8028045.61
 1048424033 | Adriana             | Perdomo Restrepo      |                 1 |    8019057.56
 24507238   | Ruth Manuela        | Jaimes Lasso          |                 1 |    8004949.03
 336902050  | Miguel              | Cuéllar Erazo         |                 1 |    8001376.46
 847384002  | Andrea              | Cárdenas Molina       |                 1 |    8000946.32
 477671798  | Javier              | Losada Ibarra         |                 1 |    7999635.84
 1040126320 | Javier              | Duarte Valencia       |                 1 |    7998354.24
 395368844  | Leidy               | Rojas Prada           |                 1 |    7980559.13
 367584659  | Rodrigo             | Ríos Jaimes           |                 1 |    7977282.30
 1109318356 | Stella              | Jaimes Ruiz           |                 1 |    7951761.90
 17500894   | Ancízar             | Rojas Flórez          |                 1 |    7931250.00
 503402827  | Heriberto Andrés    | Cuéllar Romero        |                 1 |    7928785.50
 984485857  | Esperanza           | Bonilla Losada        |                 1 |    7927231.68
 1083965471 | Santiago            | Molina Ortega         |                 1 |    7924599.00
 938024015  | Nubia Laura         | Giraldo Pérez         |                 2 |    7914922.86
 426214664  | Luisa               | Sandoval Flórez       |                 1 |    7907619.76
 713573131  | Iván                | Ruiz Narváez          |                 2 |    7904154.79
 1145865189 | Gladys              | Barrera Jiménez       |                 1 |    7893004.67
 28741515   | Elsa                | Flórez Rangel         |                 1 |    7892107.70
 259825233  | Marcela             | Pabón Cabrera         |                 1 |    7878223.62
 802720802  | Patricia            | Tovar Bonilla         |                 1 |    7834941.62
 1187552765 | Efraín              | Jiménez Caicedo       |                 1 |    7824522.93
 571061734  | Natalia             | Galvis Pinzón         |                 1 |    7807939.50
 411064302  | Efraín              | Pinzón Martínez       |                 1 |    7805482.72
 1191576656 | Liliana             | Acevedo Quintero      |                 1 |    7803004.59
 328450517  | Reinaldo            | Zapata Caicedo        |                 2 |    7788557.13
 662647959  | Yuliana             | Torres Gutiérrez      |                 1 |    7770817.40
 128807168  | Gloria Manuela      | Rivera Cuéllar        |                 2 |    7770046.62
 483956879  | Daniel              | Castillo Parra        |                 1 |    7766249.76
 91275771   | Rosa                | Muñoz Calderón        |                 1 |    7764997.80
 498719399  | Gustavo             | García Calderón       |                 1 |    7760151.88
 1135775105 | Carolina            | Giraldo Cabrera       |                 1 |    7758012.08
 830101248  | Alejandra           | Arango Betancur       |                 2 |    7752769.24
 1092338828 | Julián              | Gutiérrez López       |                 1 |    7750770.51
 537965910  | Ramiro              | Valencia Osorio       |                 1 |    7747975.40
 25660075   | Santiago            | Romero Londoño        |                 1 |    7728388.36
 382306835  | Martha              | Pérez Medina          |                 1 |    7727824.00
 334712708  | Cecilia             | Medina Benavides      |                 1 |    7704379.20
 912214556  | Mercedes Liliana    | Mosquera Ortiz        |                 1 |    7700245.44
 162383809  | Óscar               | Villamizar Perdomo    |                 1 |    7700065.58
 986214529  | Wilson              | Mejía Barrera         |                 1 |    7692737.23
 380034339  | Jazmín Nubia        | Martínez Narváez      |                 2 |    7689500.84
 886168682  | Martha Sofía        | Vargas Erazo          |                 1 |    7688701.79
 623391660  | Juliana Camila      | Cárdenas Peña         |                 1 |    7684931.65
 915420841  | Amparo Cecilia      | Jaimes Cardona        |                 1 |    7677537.08
 865294972  | Luisa               | Benavides Mora        |                 1 |    7675876.05
 243741257  | Elsa                | Vélez Cáceres         |                 1 |    7674062.27
 566793519  | Ramiro              | Rodríguez Jaimes      |                 2 |    7667137.96
 1065568268 | Mariana             | López Gutiérrez       |                 1 |    7654011.60
 163924041  | Alberto Wilmer      | Valencia Sandoval     |                 1 |    7641044.60
 250940259  | Iván Cristian       | Pinzón Marín          |                 1 |    7612037.70
 1023132210 | Julián Ancízar      | Serrano Quintero      |                 2 |    7609430.61
 188882022  | Patricia            | Benavides Jaimes      |                 1 |    7609339.06
 258584522  | Wilson              | Marín Osorio          |                 1 |    7605907.96
 1135469632 | Jorge Wilson        | Peña Flórez           |                 1 |    7605631.98
 508692946  | Julián              | Polanía Duque         |                 1 |    7604231.11
 660417965  | Guillermo           | Delgado Contreras     |                 1 |    7601063.13
 597418829  | Julián              | Rojas Moreno          |                 1 |    7593345.18
 492698620  | Abelardo Pedro      | Narváez Arango        |                 1 |    7593252.48
 480372164  | Guillermo Francisco | Álvarez Bastidas      |                 1 |    7585169.35
 822677269  | Isabella Leidy      | Sánchez Díaz          |                 1 |    7563876.84
 461292548  | Mateo               | Jaimes Calderón       |                 1 |    7542663.12
 279684128  | Jazmín              | Vargas Valencia       |                 1 |    7542524.73
 237962173  | Arturo              | Sánchez Delgado       |                 1 |    7539454.51
 605978978  | Teresa              | Lasso Pinzón          |                 1 |    7524008.97
 123549240  | Beatriz             | Castillo Narváez      |                 1 |    7505830.80
 1058751180 | Inés                | Quintero Gutiérrez    |                 1 |    7497751.47
 638396255  | Rodrigo             | Rodríguez Rojas       |                 1 |    7486691.04
 278940489  | Leidy               | Álvarez Flórez        |                 1 |    7478378.90
 92763808   | Efraín              | Peña Lozano           |                 1 |    7474873.18
 1070823616 | Lorena              | Quintero Osorio       |                 1 |    7473531.79
 735170197  | Heriberto Felipe    | Chamorro González     |                 1 |    7467439.44
 1177336149 | Gloria              | Osorio Giraldo        |                 1 |    7464147.67
 210273585  | Yolanda             | Rodríguez Villamizar  |                 1 |    7440965.01
 804921081  | Manuel              | Arias Salazar         |                 1 |    7437259.62
 311930820  | Juan                | Ortega Delgado        |                 1 |    7433648.88
 888504903  | Efraín              | Vera Osorio           |                 2 |    7430522.82
 503904349  | Mateo               | Peña Perdomo          |                 2 |    7412784.66
 808900069  | Sandra              | Herrera Zuluaga       |                 1 |    7408520.10
 456369603  | Patricia            | Betancur Medina       |                 1 |    7391712.89
 459514194  | Esperanza           | Quintero Ríos         |                 1 |    7390790.40
 565056795  | Isabella            | Cabrera Vera          |                 1 |    7370257.93
 135911602  | Édgar Pedro         | Álvarez Acevedo       |                 1 |    7369632.12
 18933855   | Nicolás Wilmer      | Castro García         |                 1 |    7363241.76
 707896720  | Daniela             | Serrano Bastidas      |                 2 |    7346623.78
 519114089  | Camila Amparo       | Lozano Peña           |                 1 |    7345036.02
 595037118  | Gladys              | Niño Arango           |                 1 |    7331713.22
 121960966  | Orlando Gustavo     | Benavides Rangel      |                 2 |    7330026.12
 399262724  | Mateo               | Henao Gutiérrez       |                 1 |    7301617.47
 231605008  | Claudia             | Álvarez Henao         |                 1 |    7281355.90
 1049850340 | Blanca              | Díaz Caicedo          |                 1 |    7273020.29
 866036416  | Elsa                | Gómez Barrera         |                 1 |    7271058.12
 1113466244 | Jaime               | Agudelo Suárez        |                 1 |    7269015.82
 834167302  | Edilma              | Arango Tovar          |                 1 |    7265243.19
 675567859  | Myriam              | Perdomo Sandoval      |                 1 |    7261395.84
 953462324  | Juan                | Henao Vargas          |                 2 |    7259918.14
 698793914  | Mario               | Benavides Narváez     |                 1 |    7248747.13
 772263164  | Alberto Sebastián   | Mora Carrillo         |                 2 |    7248632.93
 934060857  | Andrés              | Sandoval Cardona      |                 1 |    7240840.00
 457677252  | Hugo                | Narváez Torres        |                 1 |    7223972.47
 720915335  | Myriam Marcela      | Ríos Chamorro         |                 1 |    7222495.05
 1152981285 | Rafael              | Prada Bedoya          |                 1 |    7222220.60
 1175028066 | Mario Aníbal        | Ospina Cardona        |                 1 |    7219164.24
 47850435   | Arturo              | Vera Cáceres          |                 1 |    7219093.27
 78901854   | Brayan              | Uribe Romero          |                 1 |    7217634.60
 407653194  | Nubia Mercedes      | Montoya Medina        |                 1 |    7214647.20
 526520754  | Julián              | Duarte Silva          |                 1 |    7211811.83
 267670898  | Nubia               | García Pérez          |                 1 |    7200072.36
 553212519  | Mario               | Jiménez Burbano       |                 1 |    7199771.79
 817916262  | Rosa                | Zapata Contreras      |                 1 |    7198697.44
 1176136015 | Liliana Alba        | Rincón Mosquera       |                 1 |    7198321.96
 679596937  | Wilson              | Trujillo Álvarez      |                 1 |    7196586.84
 1137145051 | Francisco Germán    | Rangel Pérez          |                 1 |    7184399.16
 224761739  | Samuel              | Villamizar Erazo      |                 1 |    7175905.83
 112247980  | Ramiro              | Pabón Martínez        |                 1 |    7170053.45
 560844136  | Abelardo            | Pérez Muñoz           |                 2 |    7169266.62
 1189063786 | Wilmer              | Quintero Castillo     |                 1 |    7165660.95
 885011025  | Ana                 | Zuluaga Mora          |                 1 |    7164832.60
 35499235   | Yuliana             | Galvis Rojas          |                 1 |    7159762.50
 540550924  | Efraín              | Betancur Martínez     |                 1 |    7158810.54
 988114449  | María               | Salazar Giraldo       |                 1 |    7154193.13
 1164199800 | Juliana Yolanda     | Bastidas Muñoz        |                 1 |    7144190.82
 403962032  | Alberto             | Salazar Trujillo      |                 2 |    7133246.37
 379682140  | Viviana Liliana     | Parra Moreno          |                 1 |    7132517.23
 779041541  | Reinaldo            | Rojas Trujillo        |                 2 |    7120475.60
 170913987  | Fabio Arturo        | Galvis Jaimes         |                 1 |    7115104.58
 97649094   | Felipe              | Arango Rodríguez      |                 2 |    7110440.51
 385037903  | Alejandro           | Zuluaga Benavides     |                 1 |    7109823.60
 507763294  | Sara                | Lasso Montoya         |                 1 |    7082645.20
 650444485  | Luz                 | Barrera Muñoz         |                 1 |    7072650.29
 255328118  | Nicolás             | Gutiérrez Prada       |                 1 |    7065251.84
 343312784  | María Elsa          | Duarte Cuéllar        |                 1 |    7061816.74
 983294712  | María               | Rincón Chamorro       |                 1 |    7061252.18
 1051350884 | Libardo Hugo        | Rivera Ríos           |                 2 |    7060454.48
 942240595  | Olga                | Pabón Salazar         |                 1 |    7060323.40
 401274392  | Erika               | Ramos Galvis          |                 2 |    7050985.64
 681829489  | Francisco Abelardo  | Lozano Vargas         |                 1 |    7045834.14
 670224039  | Efraín              | Moreno Romero         |                 1 |    7042312.11
 784311903  | Camilo              | Giraldo Zapata        |                 1 |    7040721.90
 190203558  | José Mario          | Duarte Torres         |                 1 |    7034254.74
 1126490482 | Ricardo             | Uribe Cardona         |                 1 |    7032909.20
 94287344   | Mauricio            | Duarte Mora           |                 1 |    7031887.50
 265461995  | Aníbal Gustavo      | Herrera Cárdenas      |                 1 |    7026226.60
 1138291909 | Yeison              | Gutiérrez Vargas      |                 1 |    7017283.16
 679195714  | Jaime Jairo         | Mejía Lasso           |                 1 |    7009049.31
 131971093  | Nelson Jorge        | Suárez Pérez          |                 1 |    7006259.15
 215569484  | Reinaldo            | Vélez Barrera         |                 1 |    7005907.41
 731287407  | Sebastián           | Lasso Flórez          |                 1 |    7004036.68
 1091529038 | Diana               | Hernández Ortiz       |                 1 |    7003870.19
 22611301   | Rafael              | Benavides Restrepo    |                 1 |    7000457.88
 27510790   | Isabella Natalia    | Erazo Ospina          |                 1 |    6997711.60
 726430171  | Esperanza           | Osorio Cáceres        |                 1 |    6997137.28
 20000312   | Laura               | Bermúdez Ruiz         |                 1 |    6996002.06
 823161381  | Gustavo Rubén       | Polanía Lasso         |                 1 |    6992087.23
 860833003  | Brayan              | Erazo Uribe           |                 1 |    6980257.20
 640094772  | Wilson              | Cáceres Flórez        |                 1 |    6979155.51
 325672553  | Óscar               | Carrillo Ospina       |                 1 |    6976064.68
 1064840327 | Leidy               | Duque Benavides       |                 1 |    6973012.62
 39472320   | Marcela             | Uribe Lozano          |                 1 |    6970513.80
 632999449  | Libardo             | Pinzón Vera           |                 1 |    6966006.36
 772759008  | Arturo              | Cárdenas Lozano       |                 1 |    6960137.90
 1041329013 | Brayan Heriberto    | Agudelo Ríos          |                 1 |    6957197.77
 143063109  | Ramiro              | Bastidas Agudelo      |                 1 |    6956122.42
 200581891  | Edilma              | Hernández Pinzón      |                 1 |    6952638.24
 616475508  | Carmen              | Ortega Delgado        |                 1 |    6949934.04
 1016169421 | Marleny             | Herrera Villamizar    |                 1 |    6948485.27
 646647747  | Libardo             | Torres Ríos           |                 1 |    6942683.15
 364958142  | Camilo              | Mejía Betancur        |                 1 |    6941195.82
 49628395   | Isabella            | Serrano Sánchez       |                 1 |    6922819.28
 190443734  | Rosa                | Serrano Cáceres       |                 1 |    6920955.26
 39915500   | Arturo              | Cáceres Contreras     |                 1 |    6917933.57
 261257757  | Esperanza           | González Rincón       |                 1 |    6917468.04
 961773110  | Sebastián           | Suárez Trujillo       |                 1 |    6915865.17
 704405573  | Germán              | Ramírez Barrera       |                 2 |    6913103.90
 303736713  | Rafael Pedro        | Ibarra Díaz           |                 1 |    6910022.28
 956554680  | Andrea              | Valencia Vera         |                 1 |    6906194.61
 129962730  | Mario               | Bedoya Lasso          |                 1 |    6905139.00
 787224173  | Ruth                | Caicedo Quintero      |                 1 |    6899072.37
 1101235179 | Leidy               | Bonilla Ortega        |                 1 |    6896951.74
 530089892  | Pedro               | Losada Parra          |                 1 |    6894996.49
 714167152  | Iván                | Cardona Lozano        |                 1 |    6894871.39
 981831800  | Lucía               | Ibarra Medina         |                 1 |    6894018.54
 155827257  | Esperanza Mercedes  | Herrera Pabón         |                 1 |    6893950.05
 285417732  | Sofía Valentina     | Romero Polanía        |                 2 |    6873777.01
 997682997  | Esperanza Sandra    | Herrera Martínez      |                 1 |    6870719.78
 399105696  | Heriberto           | Gómez Prada           |                 1 |    6870252.41
 67851317   | Mario               | Valencia Burbano      |                 1 |    6861268.98
 629657232  | Javier              | Carrillo Peña         |                 1 |    6859402.77
 820001510  | Nubia               | Ospina Romero         |                 1 |    6846362.72
 159024676  | Alejandra           | Jaimes Zapata         |                 1 |    6838992.00
 1074851946 | Óscar Orlando       | Delgado Lasso         |                 1 |    6835035.61
 996206041  | Brayan Wilson       | Torres García         |                 1 |    6825580.50
 520842015  | Jairo Wilson        | Pabón Zuluaga         |                 1 |    6823653.76
 566020681  | Yolanda Olga        | Correa Londoño        |                 1 |    6816150.73
 1077500512 | Wilson              | Pérez García          |                 1 |    6808273.24
 949658932  | Mariana             | Pérez Zapata          |                 1 |    6803973.00
 61037695   | Lorena              | Prada Acevedo         |                 1 |    6792749.68
 366290698  | Juan                | Ibarra Rodríguez      |                 1 |    6790026.47
 553749591  | Efraín              | Chamorro Erazo        |                 1 |    6789956.71
 566379366  | Yuliana             | Bedoya Jiménez        |                 2 |    6783761.52
 498256984  | Mariana             | Carrillo Martínez     |                 1 |    6783337.80
 166401504  | Fernando Rubén      | Ruiz Perdomo          |                 1 |    6782189.46
 282936879  | Diana               | Pinzón Sandoval       |                 1 |    6779278.01
 826445602  | Pedro               | Bermúdez Acevedo      |                 1 |    6777083.50
 1049503604 | Esperanza           | Pérez Villamizar      |                 1 |    6773287.50
 943097634  | Guillermo           | Ospina Niño           |                 1 |    6766272.22
 816710528  | Claudia             | Cuéllar Parra         |                 2 |    6765374.26
 1019581205 | Mateo               | Delgado Mosquera      |                 1 |    6762059.64
 732261452  | Diego               | Sandoval Restrepo     |                 1 |    6758238.15
 1153880309 | Juliana             | Prada Rincón          |                 1 |    6752131.92
 381558346  | Gilberto            | Restrepo Jaimes       |                 1 |    6750398.29
 790006498  | Wilson              | Valencia Valencia     |                 2 |    6748298.55
 1159210130 | Nubia               | Agudelo Cárdenas      |                 2 |    6746219.61
 965418299  | Inés Leidy          | Losada Osorio         |                 2 |    6741773.29
 78427741   | José                | Correa Erazo          |                 1 |    6738901.25
 693805181  | Jaime Manuel        | Contreras Bonilla     |                 1 |    6735279.30
 603640387  | Esteban             | Trujillo Suárez       |                 1 |    6728190.55
 748506196  | Javier              | Arango Lozano         |                 1 |    6727518.00
 418595240  | Ancízar             | Duque Pabón           |                 1 |    6724777.56
 769042945  | Elsa Beatriz        | Niño Ortiz            |                 1 |    6721179.03
 434103389  | Manuela             | Castro Pérez          |                 1 |    6720073.20
 1131749064 | Esperanza           | Perdomo Torres        |                 1 |    6719655.40
 130262588  | Heriberto           | Quintero Ruiz         |                 1 |    6715696.36
 558432473  | Gustavo             | Barrera Benavides     |                 1 |    6714604.90
 542114359  | Daniela Cecilia     | Medina Henao          |                 1 |    6713056.71
 1093674785 | Héctor              | Contreras Duarte      |                 1 |    6712739.70
 1036527906 | Jaime               | Álvarez Parra         |                 1 |    6711806.88
 1120706828 | Mariana             | Ríos Ospina           |                 1 |    6708134.30
 1037158946 | Paola Marleny       | Delgado Bonilla       |                 1 |    6707898.12
 835400019  | Inés Marcela        | Losada Bermúdez       |                 2 |    6699815.29
 529001738  | Nubia               | Polanía Mosquera      |                 2 |    6695790.86
 403667038  | Aura                | Lasso Rojas           |                 1 |    6694492.30
 942073830  | Teresa              | Sánchez Torres        |                 2 |    6693500.00
 346858062  | Nelson Mateo        | Agudelo Bastidas      |                 1 |    6689182.08
 1158471766 | Nelson              | García Osorio         |                 1 |    6681922.08
 1074778841 | Aura                | Lasso Martínez        |                 1 |    6678605.20
 243545923  | Álvaro              | Medina Ruiz           |                 1 |    6674145.28
 238946842  | Francisco           | Gómez Mora            |                 1 |    6673310.39
 55768045   | Yuliana             | Losada Cardona        |                 1 |    6671713.66
 93179780   | Álvaro Emilio       | Moreno Correa         |                 2 |    6670657.96
 758300748  | Esteban             | Restrepo Henao        |                 1 |    6668929.57
 80297244   | Juan                | Londoño Tovar         |                 1 |    6660865.71
 21783522   | Beatriz             | Rodríguez Arango      |                 1 |    6658889.23
 1058506675 | Fanny               | Rivera Carrillo       |                 1 |    6656807.30
 483716717  | Rubén Carlos        | Calderón Vargas       |                 1 |    6656077.93
 1085254301 | Inés                | Uribe Parra           |                 1 |    6654133.08
 358036902  | Yolanda             | Prada Flórez          |                 2 |    6653646.16
 334859749  | Ricardo             | Cuéllar Bonilla       |                 1 |    6653210.04
 188895213  | Fanny Alba          | Betancur Benavides    |                 2 |    6651971.02
 782763054  | Wilson Guillermo    | Duque Carrillo        |                 1 |    6643359.63
 1107893030 | Andrea              | Romero Silva          |                 1 |    6640640.73
 267032235  | Javier Fabio        | Lasso Bermúdez        |                 1 |    6637691.10
 109450078  | Felipe              | Bermúdez Guerrero     |                 1 |    6635850.84
 1173046388 | Mariana             | Arango Parra          |                 1 |    6632323.76
 916928099  | Sandra              | Silva Cuéllar         |                 1 |    6631489.68
 962143966  | José                | Vargas Villamizar     |                 1 |    6630154.50
 625415495  | Elsa                | Pinzón Jiménez        |                 1 |    6629287.49
 289914167  | Amparo              | Vera Betancur         |                 1 |    6628377.60
 889925937  | Daniela             | Quintero Guerrero     |                 1 |    6620152.00
 384615285  | Orlando             | López Sánchez         |                 1 |    6619799.20
 137588895  | Fanny               | Narváez Jaimes        |                 2 |    6618319.67
 954587760  | Emilio              | Montoya Giraldo       |                 1 |    6618166.83
 511628934  | Orlando             | Ruiz Guerrero         |                 2 |    6617489.81
 1109672392 | Martha              | Pabón Herrera         |                 1 |    6613219.16
 368661444  | Antonio Alberto     | Ortega Correa         |                 1 |    6613076.48
 810460747  | Mario               | Sánchez Cuéllar       |                 1 |    6602138.16
 1181700934 | Iván                | Ospina Vélez          |                 2 |    6600306.94
 995907452  | Teresa              | Ruiz Cárdenas         |                 1 |    6598581.00
 833276709  | Myriam              | Losada Duque          |                 1 |    6593941.88
 599607064  | Manuel              | Carrillo Romero       |                 1 |    6587756.80
 382535307  | Lorena              | Rivera Quintero       |                 1 |    6586769.20
 513526519  | Luz                 | Burbano Cardona       |                 1 |    6586297.48
 185196307  | Heriberto           | Cardona Caicedo       |                 1 |    6585220.38
 56029499   | Camilo José         | Serrano Rivera        |                 1 |    6584962.70
 1091044145 | Andrés              | Cárdenas García       |                 1 |    6568151.10
 1135262992 | Hernando            | Duque Caicedo         |                 1 |    6565268.82
 343679392  | Fernando            | Narváez Tovar         |                 1 |    6562461.70
 547264708  | Francisco           | Ibarra Lasso          |                 1 |    6551868.40
 115063545  | Samuel Gustavo      | Zapata Ortega         |                 1 |    6550634.70
 1184305413 | Germán              | Martínez Contreras    |                 1 |    6546725.12
 594483280  | Myriam Natalia      | Arias Silva           |                 1 |    6543523.55
 642138991  | Mateo               | Correa Cárdenas       |                 1 |    6540516.66
 437439594  | Rafael              | Bonilla Lasso         |                 1 |    6535112.48
 32948377   | Iván                | Narváez Ramírez       |                 1 |    6533776.47
 980711669  | Liliana             | Parra Perdomo         |                 1 |    6530423.80
 1019841684 | Mercedes Claudia    | Ruiz Ibarra           |                 1 |    6522336.32
 829000437  | Claudia Natalia     | Calderón Lasso        |                 2 |    6514529.74
 507876154  | Antonio             | Rincón Tovar          |                 2 |    6513808.83
 206505741  | Isabella            | Cabrera Hernández     |                 1 |    6509500.00
 845094695  | Hugo                | Díaz Álvarez          |                 1 |    6508501.75
 886388344  | Nubia Daniela       | Narváez Vargas        |                 2 |    6503126.40
 925845288  | Brayan              | Niño Ramírez          |                 1 |    6502898.16
 366264506  | Óscar               | Martínez Betancur     |                 1 |    6502862.32
 239997103  | Carlos              | Osorio Flórez         |                 1 |    6500572.65
 737990487  | Juliana             | Burbano Romero        |                 1 |    6498220.64
 939873413  | Mateo               | Ortiz Uribe           |                 2 |    6497425.84
 903163706  | Iván                | Bastidas Osorio       |                 1 |    6496569.45
 878825068  | Alejandro           | Gómez Narváez         |                 1 |    6494925.50
 360417835  | Andrea Edilma       | Bedoya Castillo       |                 1 |    6494179.86
 1099745404 | Juliana             | Bedoya Cardona        |                 1 |    6492756.48
 262834733  | Javier Santiago     | Muñoz Rangel          |                 2 |    6484591.00
 1089835912 | Laura               | Acevedo Pérez         |                 1 |    6479392.92
 1191695289 | Javier              | Zapata Trujillo       |                 2 |    6479014.32
 1169126293 | Adriana             | Correa Castillo       |                 2 |    6475798.19
 1024474800 | Liliana             | Medina Galvis         |                 1 |    6473586.18
 1038383333 | Yolanda             | Bonilla Molina        |                 1 |    6470523.00
 511472526  | Hugo                | Osorio Erazo          |                 1 |    6467386.86
 701824853  | Wilmer Gilberto     | Narváez Caicedo       |                 1 |    6464896.28
 757265938  | Jazmín              | Delgado Vélez         |                 1 |    6452452.16
 1010019425 | Fabio               | Arias Arias           |                 2 |    6450785.55
 956305629  | Pedro               | Duque Chamorro        |                 1 |    6448549.44
 1101591805 | Arturo              | Vera Pabón            |                 1 |    6442043.49
 875286766  | Wilson Pedro        | Agudelo Pinzón        |                 1 |    6441773.77
 960561356  | Esperanza           | Bedoya Pabón          |                 1 |    6440799.80
 420730197  | Lucía Blanca        | Acevedo Cardona       |                 1 |    6439190.59
 750630494  | Jairo               | Arango Cabrera        |                 1 |    6435384.55
 1018911150 | Leidy               | Delgado Vargas        |                 1 |    6421465.06
 217599231  | Alejandro           | Calderón Tovar        |                 1 |    6419885.00
 661677385  | Gladys              | García Henao          |                 1 |    6419586.80
 570041783  | Mauricio            | Cardona Hernández     |                 2 |    6410075.36
 656484796  | Pedro               | Gutiérrez Ibarra      |                 2 |    6408292.34
 740404605  | Adriana             | Burbano Rangel        |                 1 |    6407575.98
 128721753  | Patricia            | Jaimes Guerrero       |                 1 |    6405362.54
 1104961255 | Nelson              | Pinzón Polanía        |                 1 |    6401724.86
 235958924  | Lorena Esperanza    | López Barrera         |                 1 |    6399766.11
 37356292   | Héctor              | Rincón Burbano        |                 2 |    6399397.17
 647681670  | Wilson              | Henao Agudelo         |                 1 |    6395020.73
 568203077  | Camilo              | Sánchez Tovar         |                 1 |    6394248.64
 45932773   | Liliana             | Henao Cardona         |                 1 |    6390731.08
 259833967  | Jaime               | Erazo Torres          |                 1 |    6383542.95
 442565858  | Myriam              | Peña Mosquera         |                 1 |    6374736.94
 78949397   | Ricardo Gilberto    | Zuluaga Chamorro      |                 1 |    6367967.55
 963912817  | Antonio             | Villamizar Correa     |                 1 |    6365517.52
 1158743751 | Yesenia             | Cárdenas Londoño      |                 1 |    6361668.78
 355192006  | Esperanza           | Carrillo Caicedo      |                 1 |    6360537.17
 872881562  | Juliana             | Sánchez Osorio        |                 1 |    6357170.71
 1139671735 | Javier              | Castro Bastidas       |                 1 |    6348502.75
 1181812018 | Gustavo             | Ortega Quintero       |                 1 |    6341153.61
 706906529  | Carolina            | Álvarez Rojas         |                 1 |    6338785.26
 1013030984 | Arturo Jairo        | Mora Galvis           |                 1 |    6334511.37
 929785042  | Sofía               | Ramírez Pinzón        |                 1 |    6334447.39
 351080754  | Gilberto            | Muñoz Bermúdez        |                 2 |    6329875.27
 668983835  | Gloria              | Marín Pabón           |                 1 |    6328653.76
 346383528  | Luisa               | Delgado Medina        |                 1 |    6324485.88
 425033326  | Adriana             | Cáceres Gómez         |                 1 |    6323690.58
 1004321975 | Camila              | Caicedo Cardona       |                 1 |    6320383.84
 76537214   | Álvaro              | Guerrero Trujillo     |                 1 |    6313435.75
 262611119  | Javier              | Bastidas Flórez       |                 1 |    6309588.96
 458994253  | Jazmín              | Narváez Tovar         |                 1 |    6308102.98
 87465082   | Rubén               | Jiménez Jaimes        |                 1 |    6306128.88
 138939286  | Alejandro Felipe    | Acevedo Giraldo       |                 1 |    6305728.11
 768564952  | Carolina            | Gutiérrez Cuéllar     |                 1 |    6303611.03
 592526273  | Luisa Lucía         | Lasso Suárez          |                 1 |    6302926.52
 759205228  | Rafael              | Molina Niño           |                 1 |    6301362.69
 659933344  | Rocío               | Ramos Ibarra          |                 1 |    6299088.38
 143878143  | Carlos              | Marín Suárez          |                 1 |    6294534.12
 822019988  | Isabella            | Caicedo Quintero      |                 1 |    6284844.66
 604438766  | Álvaro              | Ríos López            |                 1 |    6280617.80
 492324389  | Nelson              | Pérez Bonilla         |                 1 |    6272358.40
 476256609  | Juan                | Londoño Ospina        |                 2 |    6264920.57
 1178106565 | Sara                | Polanía Mora          |                 1 |    6262127.28
 526447845  | Édgar               | Perdomo Mejía         |                 1 |    6262043.19
 499128362  | Efraín              | Duarte Pabón          |                 1 |    6258607.95
 241520674  | Wilson Hernando     | Restrepo Rivera       |                 1 |    6257678.33
 552265901  | Yuliana Marcela     | Bermúdez Mosquera     |                 1 |    6251767.59
 400901605  | Alejandro           | Arias Mora            |                 1 |    6250579.41
 97056835   | Alba Mariana        | Valencia González     |                 1 |    6250423.65
 618181799  | Dora                | Cáceres Correa        |                 1 |    6248657.61
 705150318  | Francisco Abelardo  | Duarte Cárdenas       |                 1 |    6246118.19
 150307045  | José                | Flórez Marín          |                 1 |    6240980.76
 119007448  | Alberto             | Cardona Galvis        |                 1 |    6239095.45
 1073210874 | Nelson              | Restrepo Arango       |                 1 |    6239054.40
 1012653074 | Daniela Lorena      | Osorio Polanía        |                 1 |    6237770.32
 236373696  | Leidy Mercedes      | Bastidas Villamizar   |                 1 |    6234765.88
 1047571623 | Emilio              | Cuéllar Vargas        |                 1 |    6233565.32
 1003374188 | Hernando            | Restrepo Jaimes       |                 1 |    6229993.68
 985852578  | Erika               | Gutiérrez Sandoval    |                 1 |    6229070.80
 308627584  | Adriana             | Torres Rincón         |                 1 |    6226769.16
 581497640  | Luis                | Niño Narváez          |                 1 |    6224279.40
 466535308  | Mateo Arturo        | Jiménez Ospina        |                 1 |    6224092.34
 123317456  | Cecilia             | Barrera Trujillo      |                 1 |    6219581.20
 257304706  | Jaime Rubén         | Suárez Bastidas       |                 1 |    6219207.75
 673689071  | Aníbal              | Salazar Rangel        |                 1 |    6218203.48
 1037881695 | Jorge               | Duque González        |                 1 |    6217826.80
 876556446  | Ricardo             | Lozano López          |                 1 |    6215764.17
 521695943  | Yeison              | Medina Caicedo        |                 1 |    6214421.20
 371890707  | Álvaro              | Montoya Chamorro      |                 1 |    6210363.43
 588505487  | Rafael Orlando      | Guerrero Vargas       |                 1 |    6200722.30
 462698761  | Óscar Jaime         | Villamizar Bedoya     |                 2 |    6198706.88
 927210257  | Rodrigo Ricardo     | Barrera Mosquera      |                 1 |    6195376.70
 279064162  | Mónica              | Serrano Montoya       |                 1 |    6191380.08
 73341358   | Hugo Javier         | Henao Betancur        |                 1 |    6190340.52
 551259395  | Nicolás             | Ruiz Osorio           |                 1 |    6189703.14
 804591476  | Yuliana Diana       | Contreras Rivera      |                 1 |    6188021.20
 877980382  | Dora                | Lozano Guerrero       |                 1 |    6187991.80
 30043286   | Diego               | Pérez Mejía           |                 1 |    6187962.60
 534425903  | Fernando            | Herrera Galvis        |                 1 |    6187454.50
 130473149  | Jazmín              | Flórez López          |                 1 |    6187355.81
 539859553  | Andrea              | Caicedo Zapata        |                 1 |    6184008.88
 478156567  | Camila              | Marín Erazo           |                 1 |    6181676.80
 729131699  | Mateo               | López Cardona         |                 1 |    6179945.35
 244192473  | Brayan              | Arias Cárdenas        |                 1 |    6179839.27
 441605215  | Liliana             | Londoño Castillo      |                 1 |    6177825.83
 145337477  | Camila              | Mejía Vargas          |                 1 |    6174899.11
 1103861966 | Cecilia Manuela     | Ramírez Zuluaga       |                 1 |    6174419.40
 646568618  | Nelson              | Pérez Sánchez         |                 1 |    6172744.88
 244479278  | Yolanda Cecilia     | Medina Burbano        |                 1 |    6171557.18
 920370597  | Héctor Gilberto     | Romero Sandoval       |                 1 |    6170131.44
 968528897  | Francisco Heriberto | Cárdenas Martínez     |                 2 |    6169053.02
 1141392383 | Mateo               | Vargas Arias          |                 1 |    6164489.52
 214787776  | David               | Hernández Osorio      |                 1 |    6163082.10
 864140089  | Mario               | Vera Cabrera          |                 1 |    6162500.48
 873633978  | Lucía               | Flórez Herrera        |                 1 |    6162029.69
 751142492  | Andrés Wilson       | Mosquera Pinzón       |                 1 |    6161022.08
 1090875581 | Guillermo           | Mejía Arias           |                 1 |    6155282.01
 1072201504 | Camila              | Osorio Bedoya         |                 1 |    6154787.98
 278447263  | Fabio               | Peña Calderón         |                 1 |    6153763.70
 765346104  | Esperanza           | López Henao           |                 1 |    6152342.02
 1119369172 | Hugo                | Muñoz Chamorro        |                 1 |    6151990.65
 60502394   | Andrés Yeison       | Quintero Rivera       |                 1 |    6151040.35
 771441362  | Guillermo Francisco | Ospina Torres         |                 1 |    6148233.96
 196314996  | Mario               | Lozano López          |                 1 |    6142454.01
 51131075   | Valentina           | Rodríguez Álvarez     |                 1 |    6142379.58
 92425443   | Alba Blanca         | Trujillo Serrano      |                 1 |    6139786.98
 743614745  | Beatriz             | Prada Peña            |                 1 |    6136471.78
 945374473  | Rafael              | Molina Vargas         |                 1 |    6136130.44
 963719215  | Wilmer Julián       | Suárez Vélez          |                 1 |    6131312.58
 1172218591 | David               | Rivera Peña           |                 1 |    6123920.40
 190513704  | Leidy               | Delgado Sandoval      |                 1 |    6123908.85
 236063917  | Diego Héctor        | Benavides Niño        |                 1 |    6121570.74
 133709632  | Alberto             | Moreno Álvarez        |                 1 |    6119875.50
 327211717  | Rodrigo             | Uribe Duque           |                 1 |    6118062.85
 511216799  | Juliana             | Carrillo Serrano      |                 1 |    6116230.53
 789790882  | Gladys              | Agudelo Ruiz          |                 1 |    6115536.57
 1147305552 | Santiago            | Marín Álvarez         |                 1 |    6114585.11
 141485440  | Emilio              | Peña Duque            |                 1 |    6106857.60
 178146493  | Nelson              | García Moreno         |                 1 |    6105515.00
 1099956005 | Alberto             | Rincón Torres         |                 1 |    6102393.43
-- Más  --
**/