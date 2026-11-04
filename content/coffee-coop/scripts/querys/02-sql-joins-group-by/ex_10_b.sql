-- Exercise 10-b
-- ablas: pay.settlements, buy.deliveries, farm.farms, farm.farmers, geo.municipalities.
-- b) A partir del literal a), muestre solo los caficultores con un valor neto total mayor a 5.000.000 COP

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
GROUP BY T4.farmer_id, T4.document_number, T4.first_name, T4.last_name
HAVING SUM(T1.net_amount) > 5000000
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
-- Más  --
**/