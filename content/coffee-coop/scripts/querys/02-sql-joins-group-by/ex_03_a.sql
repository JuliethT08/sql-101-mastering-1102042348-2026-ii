--- Exercise 3-a
-- Tablas: buy.deliveries, buy.collection points, farm.plot varieties, farm.coffee varieties.
-- a) Escribiendo buy.deliveries como T1 y buy.collection points como T2, use
--RIGHT JOIN para listar el nombre de cada punto de compra con el c´odigo y el
--peso bruto de las entregas que recibi´o ese d´ıa, con los alias collection point,
--delivery y gross weight kg. Los puntos sin entregas ese dıa deben aparecer.
--Pista: piense si la condicion de la fecha debe ir en el ON o en el WHERE, y
--compruebelo ejecutando las dos versiones.

SELECT 
    T2.point_name AS collection_point,
    T1.delivery_id AS delivery,
    T1.gross_weight_kg AS gross_weight_kg
FROM buy.deliveries AS T1
RIGHT JOIN buy.collection_points AS T2
    ON T1.collection_point_id = T2.collection_point_id
   AND T1.delivery_id LIKE 'DLV-20260930-%';
/**
               collection_point               |      delivery       | gross_weight_kg
----------------------------------------------+---------------------+-----------------
 Punto de Compra Jambaló 1                    | DLV-20260930-000001 |           51.53
 Punto de Compra El Playón 1                  | DLV-20260930-000083 |           89.95
 Punto de Compra San Sebastián De Mariquita 1 | DLV-20260930-000084 |          131.42
 Punto de Compra La Merced 1                  | DLV-20260930-000085 |          239.20
 Punto de Compra Nátaga 1                     | DLV-20260930-000086 |           84.05
 Punto de Compra Algeciras 1                  | DLV-20260930-000087 |          116.95
 Punto de Compra Confines 1                   | DLV-20260930-000088 |          220.61
 Punto de Compra Villarrica 1                 | DLV-20260930-000089 |          229.80
 Punto de Compra Sevilla 1                    | DLV-20260930-000090 |          154.09
 Punto de Compra Morales 1                    | DLV-20260930-000091 |          139.14
 Punto de Compra Pijao 1                      | DLV-20260930-000092 |           59.23
 Punto de Compra Salamina 2                   | DLV-20260930-000093 |           39.42
 Punto de Compra Acevedo 1                    | DLV-20260930-000094 |          246.96
 Punto de Compra Sopetrán 1                   | DLV-20260930-000095 |          116.81
 Punto de Compra El Rosario 1                 | DLV-20260930-000096 |           53.57
 Punto de Compra Turbo 1                      | DLV-20260930-000097 |          146.99
 Punto de Compra Tibaná 1                     | DLV-20260930-000098 |           92.63
 Punto de Compra Teruel 1                     | DLV-20260930-000099 |          103.07
 Punto de Compra Popayán 1                    | DLV-20260930-000100 |          106.62
 Punto de Compra Paicol 1                     | DLV-20260930-000101 |          198.24
 Punto de Compra San Andrés De Tumaco 2       | DLV-20260930-000102 |           94.30
 Punto de Compra Salgar 1                     | DLV-20260930-000002 |          124.98
 Punto de Compra Cajibío 3                    | DLV-20260930-000003 |          112.33
 Punto de Compra Venecia 1                    | DLV-20260930-000004 |          138.29
 Punto de Compra El Banco 1                   | DLV-20260930-000005 |          256.42
 Punto de Compra Convención 1                 | DLV-20260930-000006 |          139.81
 Punto de Compra Apía 2                       | DLV-20260930-000007 |          404.97
 Punto de Compra El Tambo 1                   | DLV-20260930-000008 |          175.92
 Punto de Compra Anserma 1                    | DLV-20260930-000009 |           56.80
 Punto de Compra San Francisco 1              | DLV-20260930-000010 |          269.43
 Punto de Compra Miranda 1                    | DLV-20260930-000011 |          166.55
 Punto de Compra Paratebueno 1                | DLV-20260930-000012 |           47.86
 Punto de Compra Caldas 1                     | DLV-20260930-000013 |           47.40
 Punto de Compra Tibaná 1                     | DLV-20260930-000014 |          164.91
 Punto de Compra Coromoro 1                   | DLV-20260930-000015 |          136.77
 Punto de Compra San Andrés De Tumaco 2       | DLV-20260930-000016 |          171.44
 Punto de Compra El Bagre 1                   | DLV-20260930-000017 |          545.69
 Punto de Compra Guachené 1                   | DLV-20260930-000018 |          247.11
 Punto de Compra Hobo 2                       | DLV-20260930-000019 |          106.26
 Punto de Compra Tello 1                      | DLV-20260930-000020 |          115.75
 Punto de Compra Aranzazu 1                   | DLV-20260930-000021 |          143.29
 Punto de Compra Ipiales 1                    | DLV-20260930-000022 |          247.73
 Punto de Compra Sáchica 1                    | DLV-20260930-000023 |          221.51
 Punto de Compra Tesalia 1                    | DLV-20260930-000024 |          222.49
 Punto de Compra Lenguazaque 1                | DLV-20260930-000025 |          176.53
 Punto de Compra Pacho 1                      | DLV-20260930-000026 |          162.24
 Punto de Compra Paicol 1                     | DLV-20260930-000027 |          184.59
 Punto de Compra Acevedo 1                    | DLV-20260930-000028 |          258.00
 Punto de Compra El Banco 1                   | DLV-20260930-000029 |          231.40
 Punto de Compra Garzón 3                     | DLV-20260930-000030 |          124.95
 Punto de Compra San Sebastián De Mariquita 1 | DLV-20260930-000031 |          107.99
 Punto de Compra Palestina 1                  | DLV-20260930-000032 |          213.33
 Punto de Compra Isnos 1                      | DLV-20260930-000033 |           49.13
 Punto de Compra Santander De Quilichao 2     | DLV-20260930-000034 |          174.83
 Punto de Compra Rionegro 1                   | DLV-20260930-000035 |          235.65
 Punto de Compra Coromoro 1                   | DLV-20260930-000036 |          200.54
 Punto de Compra El Playón 1                  | DLV-20260930-000037 |           64.16
 Punto de Compra Rionegro 1                   | DLV-20260930-000038 |          136.73
 Punto de Compra Ipiales 1                    | DLV-20260930-000039 |           86.92
 Punto de Compra Flandes 1                    | DLV-20260930-000040 |          321.49
 Punto de Compra Copacabana 1                 | DLV-20260930-000041 |           45.97
 Punto de Compra Ipiales 1                    | DLV-20260930-000042 |          166.41
 Punto de Compra Guadalajara De Buga 1        | DLV-20260930-000043 |          239.46
 Punto de Compra La Cumbre 1                  | DLV-20260930-000044 |          119.26
 Punto de Compra Turbo 2                      | DLV-20260930-000045 |           60.79
 Punto de Compra Nátaga 1                     | DLV-20260930-000046 |          186.73
 Punto de Compra El Doncello 1                | DLV-20260930-000047 |           80.07
 Punto de Compra Isnos 2                      | DLV-20260930-000048 |          419.65
 Punto de Compra Villarrica 1                 | DLV-20260930-000049 |           95.73
 Punto de Compra Paratebueno 1                | DLV-20260930-000050 |          373.90
 Punto de Compra Bosconia 1                   | DLV-20260930-000051 |          310.22
 Punto de Compra Yaguará 2                    | DLV-20260930-000052 |          154.42
 Punto de Compra Rionegro 1                   | DLV-20260930-000053 |           59.86
 Punto de Compra Cisneros 1                   | DLV-20260930-000054 |          167.57
 Punto de Compra Armero Guayabal 2            | DLV-20260930-000055 |          124.05
 Punto de Compra El Playón 1                  | DLV-20260930-000056 |           38.62
 Punto de Compra Corinto 1                    | DLV-20260930-000057 |          201.14
 Punto de Compra Cajibío 2                    | DLV-20260930-000058 |          166.64
 Punto de Compra Salgar 1                     | DLV-20260930-000059 |           60.59
 Punto de Compra Paratebueno 1                | DLV-20260930-000060 |          162.92
 Punto de Compra Pacho 1                      | DLV-20260930-000061 |          178.16
 Punto de Compra Santuario 1                  | DLV-20260930-000062 |          259.10
 Punto de Compra Bochalema 1                  | DLV-20260930-000063 |          184.83
 Punto de Compra Teruel 1                     | DLV-20260930-000064 |           50.43
 Punto de Compra Guamo 1                      | DLV-20260930-000065 |          278.44
 Punto de Compra Gómez Plata 1                | DLV-20260930-000066 |          123.97
 Punto de Compra Timbiquí 1                   | DLV-20260930-000067 |          147.87
 Punto de Compra Convención 1                 | DLV-20260930-000068 |          113.93
 Punto de Compra Ipiales 1                    | DLV-20260930-000069 |           45.38
 Punto de Compra San Andrés De Tumaco 1       | DLV-20260930-000070 |          147.13
 Punto de Compra San Andrés De Tumaco 2       | DLV-20260930-000071 |          123.86
 Punto de Compra Balboa 1                     | DLV-20260930-000072 |          176.20
 Punto de Compra Suárez 1                     | DLV-20260930-000073 |          228.36
 Punto de Compra Jambaló 1                    | DLV-20260930-000074 |          291.69
 Punto de Compra Alcalá 1                     | DLV-20260930-000075 |           61.99
 Punto de Compra Granada 1                    | DLV-20260930-000076 |           59.16
 Punto de Compra Bochalema 1                  | DLV-20260930-000077 |          114.72
 Punto de Compra Tibaná 1                     | DLV-20260930-000078 |          311.98
 Punto de Compra Anserma 1                    | DLV-20260930-000079 |          176.91
 Punto de Compra Agrado 1                     | DLV-20260930-000080 |          120.11
 Punto de Compra Coromoro 1                   | DLV-20260930-000081 |          475.13
 Punto de Compra San Andrés De Tumaco 1       | DLV-20260930-000082 |          137.90
 Punto de Compra Abriaquí 1                   | DLV-20260930-000164 |           48.18
 Punto de Compra Baraya 1                     | DLV-20260930-000165 |          348.59
 Punto de Compra Ansermanuevo 1               | DLV-20260930-000166 |          245.94
 Punto de Compra Jambaló 1                    | DLV-20260930-000167 |          209.25
 Punto de Compra La Plata 2                   | DLV-20260930-000168 |          173.46
 Punto de Compra San Lorenzo 1                | DLV-20260930-000169 |           49.26
 Punto de Compra Yondó 1                      | DLV-20260930-000170 |          262.86
 Punto de Compra Garzón 2                     | DLV-20260930-000171 |          169.97
 Punto de Compra Pradera 1                    | DLV-20260930-000172 |          114.47
 Punto de Compra Valdivia 1                   | DLV-20260930-000173 |          201.74
 Punto de Compra Popayán 1                    | DLV-20260930-000174 |          302.24
 Punto de Compra Paicol 2                     | DLV-20260930-000175 |          109.78
 Punto de Compra Ocaña 1                      | DLV-20260930-000176 |          162.41
 Punto de Compra Santa María 1                | DLV-20260930-000177 |          176.78
 Punto de Compra San Andrés De Tumaco 2       | DLV-20260930-000178 |          196.09
 Punto de Compra Cajibío 3                    | DLV-20260930-000179 |          190.22
 Punto de Compra El Tambo 1                   | DLV-20260930-000180 |          120.64
 Punto de Compra Valle De San Juan 1          | DLV-20260930-000181 |          114.63
 Punto de Compra Popayán 1                    | DLV-20260930-000182 |           42.15
 Punto de Compra Remedios 1                   | DLV-20260930-000183 |          119.34
 Punto de Compra Circasia 2                   | DLV-20260930-000184 |          109.64
 Punto de Compra Copacabana 1                 | DLV-20260930-000185 |           79.08
 Punto de Compra Manzanares 1                 | DLV-20260930-000186 |          209.37
 Punto de Compra La Tebaida 1                 | DLV-20260930-000187 |          339.30
 Punto de Compra Anserma 2                    | DLV-20260930-000188 |           40.13
 Punto de Compra Turbo 1                      | DLV-20260930-000189 |          184.52
 Punto de Compra Flandes 1                    | DLV-20260930-000190 |           61.12
 Punto de Compra Palocabildo 1                | DLV-20260930-000191 |          155.90
 Punto de Compra Sevilla 1                    | DLV-20260930-000192 |          123.73
 Punto de Compra Fresno 1                     | DLV-20260930-000193 |          267.39
 Punto de Compra Guática 1                    | DLV-20260930-000194 |          223.71
 Punto de Compra La Tebaida 1                 | DLV-20260930-000195 |          118.94
 Punto de Compra Lenguazaque 1                | DLV-20260930-000196 |          223.01
 Punto de Compra Pradera 1                    | DLV-20260930-000197 |          137.57
 Punto de Compra Prado 1                      | DLV-20260930-000198 |          204.01
 Punto de Compra La Tebaida 1                 | DLV-20260930-000199 |          113.87
 Punto de Compra Palestina 2                  | DLV-20260930-000200 |          118.17
 Punto de Compra Marsella 1                   | DLV-20260930-000201 |          245.78
 Punto de Compra Agrado 1                     | DLV-20260930-000202 |          246.62
 Punto de Compra Andalucía 2                  | DLV-20260930-000203 |          166.57
 Punto de Compra El Bagre 1                   | DLV-20260930-000204 |          234.22
 Punto de Compra Mistrató 1                   | DLV-20260930-000205 |           40.23
 Punto de Compra Tarazá 1                     | DLV-20260930-000206 |          224.53
 Punto de Compra Pacho 1                      | DLV-20260930-000207 |           79.00
 Punto de Compra Jambaló 1                    | DLV-20260930-000208 |          116.97
 Punto de Compra Restrepo 1                   | DLV-20260930-000209 |          120.19
 Punto de Compra La Pintada 1                 | DLV-20260930-000210 |           78.07
 Punto de Compra Toribío 1                    | DLV-20260930-000211 |           93.48
 Punto de Compra El Carmen 2                  | DLV-20260930-000212 |          168.86
 Punto de Compra Cajibío 1                    | DLV-20260930-000213 |          264.45
 Punto de Compra La Pintada 1                 | DLV-20260930-000214 |          177.63
 Punto de Compra Miranda 1                    | DLV-20260930-000215 |          210.61
 Punto de Compra Tello 1                      | DLV-20260930-000216 |          220.60
 Punto de Compra Belalcázar 1                 | DLV-20260930-000217 |          132.86
 Punto de Compra Tesalia 2                    | DLV-20260930-000218 |          164.43
 Punto de Compra Mercaderes 1                 | DLV-20260930-000219 |          242.20
 Punto de Compra Convención 1                 | DLV-20260930-000220 |          120.85
 Punto de Compra El Tambo 1                   | DLV-20260930-000221 |          322.31
 Punto de Compra Rionegro 1                   | DLV-20260930-000222 |          237.37
 Punto de Compra Yondó 1                      | DLV-20260930-000223 |          338.32
 Punto de Compra Nátaga 1                     | DLV-20260930-000224 |          272.86
 Punto de Compra Saladoblanco 1               | DLV-20260930-000225 |           89.49
 Punto de Compra Prado 1                      | DLV-20260930-000226 |          119.31
 Punto de Compra Venecia 1                    | DLV-20260930-000227 |          154.74
 Punto de Compra El Banco 1                   | DLV-20260930-000228 |          127.88
 Punto de Compra Suaza 1                      | DLV-20260930-000229 |          296.94
 Punto de Compra Pital 1                      | DLV-20260930-000230 |          132.59
 Punto de Compra Altamira 1                   | DLV-20260930-000231 |          128.21
 Punto de Compra La Tebaida 1                 | DLV-20260930-000232 |          135.93
 Punto de Compra Bochalema 1                  | DLV-20260930-000233 |          371.40
 Punto de Compra Fresno 1                     | DLV-20260930-000234 |          364.57
 Punto de Compra Bosconia 1                   | DLV-20260930-000235 |          317.64
 Punto de Compra Cajibío 3                    | DLV-20260930-000236 |          215.39
 Punto de Compra Santander De Quilichao 1     | DLV-20260930-000237 |          128.69
 Punto de Compra Riosucio 1                   | DLV-20260930-000238 |          296.58
 Punto de Compra Rioblanco 2                  | DLV-20260930-000239 |          141.33
 Punto de Compra Andalucía 2                  | DLV-20260930-000240 |          304.69
 Punto de Compra Belalcázar 1                 | DLV-20260930-000241 |          181.74
 Punto de Compra Ansermanuevo 1               | DLV-20260930-000242 |           98.23
 Punto de Compra San Andrés De Tumaco 2       | DLV-20260930-000243 |           82.10
 Punto de Compra Carmen De Apicalá 3          | DLV-20260930-000244 |          164.55
 Punto de Compra Turbo 2                      | DLV-20260930-000103 |          250.86
 Punto de Compra La Pintada 1                 | DLV-20260930-000104 |          246.47
 Punto de Compra Puerto Tejada 1              | DLV-20260930-000105 |          277.63
 Punto de Compra Armero Guayabal 2            | DLV-20260930-000106 |          308.32
 Punto de Compra La Plata 1                   | DLV-20260930-000107 |           46.82
 Punto de Compra Mallama 1                    | DLV-20260930-000108 |          298.73
 Punto de Compra Samaná 1                     | DLV-20260930-000109 |          311.88
 Punto de Compra Timbiquí 1                   | DLV-20260930-000110 |          374.46
 Punto de Compra Puracé 1                     | DLV-20260930-000111 |          294.56
 Punto de Compra Toribío 1                    | DLV-20260930-000112 |           47.40
 Punto de Compra Sevilla 1                    | DLV-20260930-000113 |          225.97
 Punto de Compra Teruel 1                     | DLV-20260930-000114 |          128.15
 Punto de Compra Líbano 1                     | DLV-20260930-000115 |          230.48
 Punto de Compra El Banco 1                   | DLV-20260930-000116 |          243.35
 Punto de Compra San José 1                   | DLV-20260930-000117 |          342.43
 Punto de Compra Pacho 1                      | DLV-20260930-000118 |          111.64
 Punto de Compra Hatonuevo 1                  | DLV-20260930-000119 |           93.84
 Punto de Compra Bosconia 1                   | DLV-20260930-000120 |           59.56
 Punto de Compra Paicol 2                     | DLV-20260930-000121 |          171.53
 Punto de Compra La Tebaida 1                 | DLV-20260930-000122 |          235.59
 Punto de Compra La Cumbre 1                  | DLV-20260930-000123 |           81.10
 Punto de Compra Manzanares 1                 | DLV-20260930-000124 |          352.50
 Punto de Compra Sopetrán 1                   | DLV-20260930-000125 |          427.10
 Punto de Compra Salamina 2                   | DLV-20260930-000126 |          107.79
 Punto de Compra Valdivia 1                   | DLV-20260930-000127 |          122.11
 Punto de Compra San Francisco 1              | DLV-20260930-000128 |           49.28
 Punto de Compra Flandes 1                    | DLV-20260930-000129 |          206.71
 Punto de Compra Algeciras 1                  | DLV-20260930-000130 |          290.55
 Punto de Compra Garzón 1                     | DLV-20260930-000131 |          219.85
 Punto de Compra Garzón 2                     | DLV-20260930-000132 |           49.97
 Punto de Compra Paratebueno 1                | DLV-20260930-000133 |          254.83
 Punto de Compra San Andrés De Tumaco 1       | DLV-20260930-000134 |          231.81
 Punto de Compra Garzón 2                     | DLV-20260930-000135 |          210.75
 Punto de Compra San Andrés De Tumaco 1       | DLV-20260930-000136 |          122.17
 Punto de Compra Aldana 1                     | DLV-20260930-000137 |          209.02
 Punto de Compra San Andrés De Tumaco 1       | DLV-20260930-000138 |          160.82
 Punto de Compra El Carmen 1                  | DLV-20260930-000139 |          294.33
 Punto de Compra Puerto Tejada 1              | DLV-20260930-000140 |          112.33
 Punto de Compra Bochalema 1                  | DLV-20260930-000141 |          179.04
 Punto de Compra Palestina 1                  | DLV-20260930-000142 |          248.91
 Punto de Compra Toribío 1                    | DLV-20260930-000143 |          331.30
 Punto de Compra Guachené 1                   | DLV-20260930-000144 |          242.47
 Punto de Compra Líbano 1                     | DLV-20260930-000145 |          182.53
 Punto de Compra Balboa 1                     | DLV-20260930-000146 |          290.98
 Punto de Compra Ipiales 1                    | DLV-20260930-000147 |           66.42
 Punto de Compra Balboa 2                     | DLV-20260930-000148 |          121.69
 Punto de Compra Gigante 1                    | DLV-20260930-000149 |          226.18
 Punto de Compra Palestina 1                  | DLV-20260930-000150 |           51.31
 Punto de Compra Pelaya 1                     | DLV-20260930-000151 |          181.29
 Punto de Compra San Andrés De Tumaco 1       | DLV-20260930-000152 |          214.44
 Punto de Compra Sardinata 1                  | DLV-20260930-000153 |          123.01
 Punto de Compra Villarrica 1                 | DLV-20260930-000154 |           53.22
 Punto de Compra Carmen De Apicalá 1          | DLV-20260930-000155 |          115.43
 Punto de Compra El Playón 1                  | DLV-20260930-000156 |          155.70
 Punto de Compra Anserma 2                    | DLV-20260930-000157 |          169.11
 Punto de Compra Valle De San Juan 1          | DLV-20260930-000158 |          177.58
 Punto de Compra Teruel 1                     | DLV-20260930-000159 |          111.28
 Punto de Compra La Celia 1                   | DLV-20260930-000160 |          221.38
 Punto de Compra Miranda 1                    | DLV-20260930-000161 |          197.04
 Punto de Compra Turbo 2                      | DLV-20260930-000162 |          178.36
 Punto de Compra Valle De San Juan 1          | DLV-20260930-000163 |          200.63
 Punto de Compra Pueblo Bello 1               | DLV-20260930-000245 |           48.86
 Punto de Compra Algeciras 1                  | DLV-20260930-000246 |          247.42
 Punto de Compra Herrán 2                     | DLV-20260930-000247 |          104.84
 Punto de Compra Gigante 1                    | DLV-20260930-000248 |          159.89
 Punto de Compra Algeciras 1                  | DLV-20260930-000249 |          244.21
 Punto de Compra Tuluá 1                      | DLV-20260930-000250 |          256.26
 Punto de Compra La Celia 1                   | DLV-20260930-000251 |          173.91
 Punto de Compra Santander De Quilichao 1     | DLV-20260930-000252 |          310.14
 Punto de Compra Toribío 1                    | DLV-20260930-000253 |          253.15
 Punto de Compra Santander De Quilichao 2     | DLV-20260930-000254 |          119.19
 Punto de Compra Ulloa 1                      | DLV-20260930-000255 |          120.83
 Punto de Compra Manzanares 1                 | DLV-20260930-000256 |          285.51
 Punto de Compra Coromoro 1                   | DLV-20260930-000257 |          144.44
 Punto de Compra San Francisco 1              | DLV-20260930-000258 |          244.96
 Punto de Compra Coello 1                     | DLV-20260930-000259 |          148.90
 Punto de Compra Ocaña 1                      | DLV-20260930-000260 |          149.08
 Punto de Compra Pijao 1                      | DLV-20260930-000261 |           92.89
 Punto de Compra Santa Rosa De Cabal 1        | DLV-20260930-000262 |          155.02
 Punto de Compra San Andrés De Cuerquía 1     | DLV-20260930-000263 |          125.40
 Punto de Compra Granada 1                    | DLV-20260930-000264 |           98.85
 Punto de Compra El Bagre 1                   | DLV-20260930-000265 |           48.15
 Punto de Compra Tibaná 1                     | DLV-20260930-000266 |          115.13
 Punto de Compra Suárez 1                     | DLV-20260930-000267 |           86.13
 Punto de Compra Mallama 1                    | DLV-20260930-000268 |          208.05
 Punto de Compra Carmen De Apicalá 1          | DLV-20260930-000269 |          132.62
 Punto de Compra Guamo 1                      | DLV-20260930-000270 |           88.69
 Punto de Compra San José 1                   | DLV-20260930-000271 |          273.16
 Punto de Compra Lenguazaque 1                | DLV-20260930-000272 |           59.63
 Punto de Compra Herrán 2                     | DLV-20260930-000273 |          210.28
 Punto de Compra Ulloa 1                      | DLV-20260930-000274 |          174.06
 Punto de Compra Timbiquí 1                   | DLV-20260930-000275 |          461.11
 Punto de Compra Prado 1                      | DLV-20260930-000276 |          173.32
 Punto de Compra Líbano 1                     | DLV-20260930-000277 |          223.11
 Punto de Compra El Banco 1                   | DLV-20260930-000278 |           56.01
 Punto de Compra Coromoro 1                   | DLV-20260930-000279 |          122.36
 Punto de Compra Pacho 1                      | DLV-20260930-000280 |           99.14
 Punto de Compra Tesalia 1                    | DLV-20260930-000281 |          255.06
 Punto de Compra Altamira 1                   | DLV-20260930-000282 |          156.67
 Punto de Compra Cisneros 1                   | DLV-20260930-000283 |          113.47
 Punto de Compra Ataco 1                      | DLV-20260930-000284 |          193.97
 Punto de Compra Rionegro 1                   | DLV-20260930-000285 |           80.88
 Punto de Compra Algeciras 1                  | DLV-20260930-000286 |          194.68
 Punto de Compra Santuario 1                  | DLV-20260930-000287 |          180.72
 Punto de Compra Valle De San Juan 1          | DLV-20260930-000288 |          255.07
 Punto de Compra Armero Guayabal 2            | DLV-20260930-000289 |           56.97
 Punto de Compra El Rosario 1                 | DLV-20260930-000290 |          156.21
 Punto de Compra El Zulia 1                   | DLV-20260930-000291 |          192.22
 Punto de Compra Acevedo 1                    | DLV-20260930-000292 |          122.13
 Punto de Compra Yaguará 2                    | DLV-20260930-000293 |          312.35
 Punto de Compra Líbano 1                     | DLV-20260930-000294 |           92.61
 Punto de Compra Sopetrán 1                   | DLV-20260930-000295 |           61.82
 Punto de Compra Pradera 1                    | DLV-20260930-000296 |          271.91
 Punto de Compra San Francisco 1              | DLV-20260930-000297 |           98.35
 Punto de Compra Cajibío 2                    | DLV-20260930-000298 |          124.92
 Punto de Compra Valdivia 1                   | DLV-20260930-000299 |           97.03
 Punto de Compra Riosucio 1                   | DLV-20260930-000300 |          130.74
 Punto de Compra Tesalia 3                    |                     |
 Punto de Compra Marulanda 1                  |                     |
 Punto de Compra Guática 2                    |                     |
 Punto de Compra Chinácota 1                  |                     |
 Punto de Compra El Tambo 2                   |                     |
 Punto de Compra La Argentina 1               |                     |
 Punto de Compra Hobo 1                       |                     |
 Punto de Compra Caldono 1                    |                     |
 Punto de Compra Yaguará 1                    |                     |
 Punto de Compra Icononzo 1                   |                     |
 Punto de Compra La Gloria 1                  |                     |
 Punto de Compra Murillo 1                    |                     |
 Punto de Compra Apía 1                       |                     |
 Punto de Compra Toca 1                       |                     |
 Punto de Compra Marulanda 2                  |                     |
 Punto de Compra Pelaya 2                     |                     |
 Punto de Compra Urumita 1                    |                     |
 Punto de Compra Belmira 1                    |                     |
 Punto de Compra Rioblanco 1                  |                     |
 Punto de Compra Carmen De Apicalá 2          |                     |
 Punto de Compra Guatapé 1                    |                     |
 Punto de Compra Valparaíso 1                 |                     |
 Punto de Compra Roncesvalles 1               |                     |
 Punto de Compra Quinchía 1                   |                     |
 Punto de Compra Pailitas 1                   |                     |
 Punto de Compra Caloto 1                     |                     |
 Punto de Compra Armero Guayabal 1            |                     |
 Punto de Compra Aipe 1                       |                     |
 Punto de Compra Andalucía 1                  |                     |
 Punto de Compra Tarqui 1                     |                     |
 Punto de Compra Herrán 1                     |                     |
 Punto de Compra Circasia 1                   |                     |
 Punto de Compra Aipe 2                       |                     |
 Punto de Compra Villahermosa 1               |                     |
 Punto de Compra San Vicente Ferrer 1         |                     |
 Punto de Compra Villa Rica 1                 |                     |
 Punto de Compra Salamina 1                   |                     |
 Punto de Compra Policarpa 1                  |                     |
(338 filas)
**/
-- a  - Fecha filtro en el WHERE
SELECT 
    T2.point_name AS collection_point,
    T1.delivery_id AS delivery,
    T1.gross_weight_kg AS gross_weight_kg
FROM buy.deliveries AS T1
RIGHT JOIN buy.collection_points AS T2
    ON T1.collection_point_id = T2.collection_point_id
WHERE T1.delivery_id LIKE 'DLV-20260930-%';
/**
               collection_point               |      delivery       | gross_weight_kg
----------------------------------------------+---------------------+-----------------
 Punto de Compra Jambaló 1                    | DLV-20260930-000001 |           51.53
 Punto de Compra Salgar 1                     | DLV-20260930-000002 |          124.98
 Punto de Compra Cajibío 3                    | DLV-20260930-000003 |          112.33
 Punto de Compra Venecia 1                    | DLV-20260930-000004 |          138.29
 Punto de Compra El Banco 1                   | DLV-20260930-000005 |          256.42
 Punto de Compra Convención 1                 | DLV-20260930-000006 |          139.81
 Punto de Compra Apía 2                       | DLV-20260930-000007 |          404.97
 Punto de Compra El Tambo 1                   | DLV-20260930-000008 |          175.92
 Punto de Compra Anserma 1                    | DLV-20260930-000009 |           56.80
 Punto de Compra San Francisco 1              | DLV-20260930-000010 |          269.43
 Punto de Compra Miranda 1                    | DLV-20260930-000011 |          166.55
 Punto de Compra Paratebueno 1                | DLV-20260930-000012 |           47.86
 Punto de Compra Caldas 1                     | DLV-20260930-000013 |           47.40
 Punto de Compra Tibaná 1                     | DLV-20260930-000014 |          164.91
 Punto de Compra Coromoro 1                   | DLV-20260930-000015 |          136.77
 Punto de Compra San Andrés De Tumaco 2       | DLV-20260930-000016 |          171.44
 Punto de Compra El Bagre 1                   | DLV-20260930-000017 |          545.69
 Punto de Compra Guachené 1                   | DLV-20260930-000018 |          247.11
 Punto de Compra Hobo 2                       | DLV-20260930-000019 |          106.26
 Punto de Compra Tello 1                      | DLV-20260930-000020 |          115.75
 Punto de Compra Aranzazu 1                   | DLV-20260930-000021 |          143.29
 Punto de Compra Ipiales 1                    | DLV-20260930-000022 |          247.73
 Punto de Compra Sáchica 1                    | DLV-20260930-000023 |          221.51
 Punto de Compra Tesalia 1                    | DLV-20260930-000024 |          222.49
 Punto de Compra Lenguazaque 1                | DLV-20260930-000025 |          176.53
 Punto de Compra Pacho 1                      | DLV-20260930-000026 |          162.24
 Punto de Compra Paicol 1                     | DLV-20260930-000027 |          184.59
 Punto de Compra Acevedo 1                    | DLV-20260930-000028 |          258.00
 Punto de Compra El Banco 1                   | DLV-20260930-000029 |          231.40
 Punto de Compra Garzón 3                     | DLV-20260930-000030 |          124.95
 Punto de Compra San Sebastián De Mariquita 1 | DLV-20260930-000031 |          107.99
 Punto de Compra Palestina 1                  | DLV-20260930-000032 |          213.33
 Punto de Compra Isnos 1                      | DLV-20260930-000033 |           49.13
 Punto de Compra Santander De Quilichao 2     | DLV-20260930-000034 |          174.83
 Punto de Compra Rionegro 1                   | DLV-20260930-000035 |          235.65
 Punto de Compra Coromoro 1                   | DLV-20260930-000036 |          200.54
 Punto de Compra El Playón 1                  | DLV-20260930-000037 |           64.16
 Punto de Compra Rionegro 1                   | DLV-20260930-000038 |          136.73
 Punto de Compra Ipiales 1                    | DLV-20260930-000039 |           86.92
 Punto de Compra Flandes 1                    | DLV-20260930-000040 |          321.49
 Punto de Compra Copacabana 1                 | DLV-20260930-000041 |           45.97
 Punto de Compra Ipiales 1                    | DLV-20260930-000042 |          166.41
 Punto de Compra Guadalajara De Buga 1        | DLV-20260930-000043 |          239.46
 Punto de Compra La Cumbre 1                  | DLV-20260930-000044 |          119.26
 Punto de Compra Turbo 2                      | DLV-20260930-000045 |           60.79
 Punto de Compra Nátaga 1                     | DLV-20260930-000046 |          186.73
 Punto de Compra El Doncello 1                | DLV-20260930-000047 |           80.07
 Punto de Compra Isnos 2                      | DLV-20260930-000048 |          419.65
 Punto de Compra Villarrica 1                 | DLV-20260930-000049 |           95.73
 Punto de Compra Paratebueno 1                | DLV-20260930-000050 |          373.90
 Punto de Compra Bosconia 1                   | DLV-20260930-000051 |          310.22
 Punto de Compra Yaguará 2                    | DLV-20260930-000052 |          154.42
 Punto de Compra Rionegro 1                   | DLV-20260930-000053 |           59.86
 Punto de Compra Cisneros 1                   | DLV-20260930-000054 |          167.57
 Punto de Compra Armero Guayabal 2            | DLV-20260930-000055 |          124.05
 Punto de Compra El Playón 1                  | DLV-20260930-000056 |           38.62
 Punto de Compra Corinto 1                    | DLV-20260930-000057 |          201.14
 Punto de Compra Cajibío 2                    | DLV-20260930-000058 |          166.64
 Punto de Compra Salgar 1                     | DLV-20260930-000059 |           60.59
 Punto de Compra Paratebueno 1                | DLV-20260930-000060 |          162.92
 Punto de Compra Pacho 1                      | DLV-20260930-000061 |          178.16
 Punto de Compra Santuario 1                  | DLV-20260930-000062 |          259.10
 Punto de Compra Bochalema 1                  | DLV-20260930-000063 |          184.83
 Punto de Compra Teruel 1                     | DLV-20260930-000064 |           50.43
 Punto de Compra Guamo 1                      | DLV-20260930-000065 |          278.44
 Punto de Compra Gómez Plata 1                | DLV-20260930-000066 |          123.97
 Punto de Compra Timbiquí 1                   | DLV-20260930-000067 |          147.87
 Punto de Compra Convención 1                 | DLV-20260930-000068 |          113.93
 Punto de Compra Ipiales 1                    | DLV-20260930-000069 |           45.38
 Punto de Compra San Andrés De Tumaco 1       | DLV-20260930-000070 |          147.13
 Punto de Compra San Andrés De Tumaco 2       | DLV-20260930-000071 |          123.86
 Punto de Compra Balboa 1                     | DLV-20260930-000072 |          176.20
 Punto de Compra Suárez 1                     | DLV-20260930-000073 |          228.36
 Punto de Compra Jambaló 1                    | DLV-20260930-000074 |          291.69
 Punto de Compra Alcalá 1                     | DLV-20260930-000075 |           61.99
 Punto de Compra Granada 1                    | DLV-20260930-000076 |           59.16
 Punto de Compra Bochalema 1                  | DLV-20260930-000077 |          114.72
 Punto de Compra Tibaná 1                     | DLV-20260930-000078 |          311.98
 Punto de Compra Anserma 1                    | DLV-20260930-000079 |          176.91
 Punto de Compra Agrado 1                     | DLV-20260930-000080 |          120.11
 Punto de Compra Coromoro 1                   | DLV-20260930-000081 |          475.13
 Punto de Compra San Andrés De Tumaco 1       | DLV-20260930-000082 |          137.90
 Punto de Compra Abriaquí 1                   | DLV-20260930-000164 |           48.18
 Punto de Compra Baraya 1                     | DLV-20260930-000165 |          348.59
 Punto de Compra Ansermanuevo 1               | DLV-20260930-000166 |          245.94
 Punto de Compra Jambaló 1                    | DLV-20260930-000167 |          209.25
 Punto de Compra La Plata 2                   | DLV-20260930-000168 |          173.46
 Punto de Compra San Lorenzo 1                | DLV-20260930-000169 |           49.26
 Punto de Compra Yondó 1                      | DLV-20260930-000170 |          262.86
 Punto de Compra Garzón 2                     | DLV-20260930-000171 |          169.97
 Punto de Compra Pradera 1                    | DLV-20260930-000172 |          114.47
 Punto de Compra Valdivia 1                   | DLV-20260930-000173 |          201.74
 Punto de Compra Popayán 1                    | DLV-20260930-000174 |          302.24
 Punto de Compra Paicol 2                     | DLV-20260930-000175 |          109.78
 Punto de Compra Ocaña 1                      | DLV-20260930-000176 |          162.41
 Punto de Compra Santa María 1                | DLV-20260930-000177 |          176.78
 Punto de Compra San Andrés De Tumaco 2       | DLV-20260930-000178 |          196.09
 Punto de Compra Cajibío 3                    | DLV-20260930-000179 |          190.22
 Punto de Compra El Tambo 1                   | DLV-20260930-000180 |          120.64
 Punto de Compra Valle De San Juan 1          | DLV-20260930-000181 |          114.63
 Punto de Compra Popayán 1                    | DLV-20260930-000182 |           42.15
 Punto de Compra Remedios 1                   | DLV-20260930-000183 |          119.34
 Punto de Compra Circasia 2                   | DLV-20260930-000184 |          109.64
 Punto de Compra Copacabana 1                 | DLV-20260930-000185 |           79.08
 Punto de Compra Manzanares 1                 | DLV-20260930-000186 |          209.37
 Punto de Compra La Tebaida 1                 | DLV-20260930-000187 |          339.30
 Punto de Compra Anserma 2                    | DLV-20260930-000188 |           40.13
 Punto de Compra Turbo 1                      | DLV-20260930-000189 |          184.52
 Punto de Compra Flandes 1                    | DLV-20260930-000190 |           61.12
 Punto de Compra Palocabildo 1                | DLV-20260930-000191 |          155.90
 Punto de Compra Sevilla 1                    | DLV-20260930-000192 |          123.73
 Punto de Compra Fresno 1                     | DLV-20260930-000193 |          267.39
 Punto de Compra Guática 1                    | DLV-20260930-000194 |          223.71
 Punto de Compra La Tebaida 1                 | DLV-20260930-000195 |          118.94
 Punto de Compra Lenguazaque 1                | DLV-20260930-000196 |          223.01
 Punto de Compra Pradera 1                    | DLV-20260930-000197 |          137.57
 Punto de Compra Prado 1                      | DLV-20260930-000198 |          204.01
 Punto de Compra La Tebaida 1                 | DLV-20260930-000199 |          113.87
 Punto de Compra Palestina 2                  | DLV-20260930-000200 |          118.17
 Punto de Compra Marsella 1                   | DLV-20260930-000201 |          245.78
 Punto de Compra Agrado 1                     | DLV-20260930-000202 |          246.62
 Punto de Compra Andalucía 2                  | DLV-20260930-000203 |          166.57
 Punto de Compra El Bagre 1                   | DLV-20260930-000204 |          234.22
 Punto de Compra Mistrató 1                   | DLV-20260930-000205 |           40.23
 Punto de Compra Tarazá 1                     | DLV-20260930-000206 |          224.53
 Punto de Compra Pacho 1                      | DLV-20260930-000207 |           79.00
 Punto de Compra Jambaló 1                    | DLV-20260930-000208 |          116.97
 Punto de Compra Restrepo 1                   | DLV-20260930-000209 |          120.19
 Punto de Compra La Pintada 1                 | DLV-20260930-000210 |           78.07
 Punto de Compra Toribío 1                    | DLV-20260930-000211 |           93.48
 Punto de Compra El Carmen 2                  | DLV-20260930-000212 |          168.86
 Punto de Compra Cajibío 1                    | DLV-20260930-000213 |          264.45
 Punto de Compra La Pintada 1                 | DLV-20260930-000214 |          177.63
 Punto de Compra Miranda 1                    | DLV-20260930-000215 |          210.61
 Punto de Compra Tello 1                      | DLV-20260930-000216 |          220.60
 Punto de Compra Belalcázar 1                 | DLV-20260930-000217 |          132.86
 Punto de Compra Tesalia 2                    | DLV-20260930-000218 |          164.43
 Punto de Compra Mercaderes 1                 | DLV-20260930-000219 |          242.20
 Punto de Compra Convención 1                 | DLV-20260930-000220 |          120.85
 Punto de Compra El Tambo 1                   | DLV-20260930-000221 |          322.31
 Punto de Compra Rionegro 1                   | DLV-20260930-000222 |          237.37
 Punto de Compra Yondó 1                      | DLV-20260930-000223 |          338.32
 Punto de Compra Nátaga 1                     | DLV-20260930-000224 |          272.86
 Punto de Compra Saladoblanco 1               | DLV-20260930-000225 |           89.49
 Punto de Compra Prado 1                      | DLV-20260930-000226 |          119.31
 Punto de Compra Venecia 1                    | DLV-20260930-000227 |          154.74
 Punto de Compra El Banco 1                   | DLV-20260930-000228 |          127.88
 Punto de Compra Suaza 1                      | DLV-20260930-000229 |          296.94
 Punto de Compra Pital 1                      | DLV-20260930-000230 |          132.59
 Punto de Compra Altamira 1                   | DLV-20260930-000231 |          128.21
 Punto de Compra La Tebaida 1                 | DLV-20260930-000232 |          135.93
 Punto de Compra Bochalema 1                  | DLV-20260930-000233 |          371.40
 Punto de Compra Fresno 1                     | DLV-20260930-000234 |          364.57
 Punto de Compra Bosconia 1                   | DLV-20260930-000235 |          317.64
 Punto de Compra Cajibío 3                    | DLV-20260930-000236 |          215.39
 Punto de Compra Santander De Quilichao 1     | DLV-20260930-000237 |          128.69
 Punto de Compra Riosucio 1                   | DLV-20260930-000238 |          296.58
 Punto de Compra Rioblanco 2                  | DLV-20260930-000239 |          141.33
 Punto de Compra Andalucía 2                  | DLV-20260930-000240 |          304.69
 Punto de Compra Belalcázar 1                 | DLV-20260930-000241 |          181.74
 Punto de Compra Ansermanuevo 1               | DLV-20260930-000242 |           98.23
 Punto de Compra San Andrés De Tumaco 2       | DLV-20260930-000243 |           82.10
 Punto de Compra Carmen De Apicalá 3          | DLV-20260930-000244 |          164.55
 Punto de Compra Pueblo Bello 1               | DLV-20260930-000245 |           48.86
 Punto de Compra Algeciras 1                  | DLV-20260930-000246 |          247.42
 Punto de Compra Herrán 2                     | DLV-20260930-000247 |          104.84
 Punto de Compra Gigante 1                    | DLV-20260930-000248 |          159.89
 Punto de Compra Algeciras 1                  | DLV-20260930-000249 |          244.21
 Punto de Compra Tuluá 1                      | DLV-20260930-000250 |          256.26
 Punto de Compra La Celia 1                   | DLV-20260930-000251 |          173.91
 Punto de Compra Santander De Quilichao 1     | DLV-20260930-000252 |          310.14
 Punto de Compra Toribío 1                    | DLV-20260930-000253 |          253.15
 Punto de Compra Santander De Quilichao 2     | DLV-20260930-000254 |          119.19
 Punto de Compra Ulloa 1                      | DLV-20260930-000255 |          120.83
 Punto de Compra Manzanares 1                 | DLV-20260930-000256 |          285.51
 Punto de Compra Coromoro 1                   | DLV-20260930-000257 |          144.44
 Punto de Compra San Francisco 1              | DLV-20260930-000258 |          244.96
 Punto de Compra Coello 1                     | DLV-20260930-000259 |          148.90
 Punto de Compra Ocaña 1                      | DLV-20260930-000260 |          149.08
 Punto de Compra Pijao 1                      | DLV-20260930-000261 |           92.89
 Punto de Compra Santa Rosa De Cabal 1        | DLV-20260930-000262 |          155.02
 Punto de Compra San Andrés De Cuerquía 1     | DLV-20260930-000263 |          125.40
 Punto de Compra Granada 1                    | DLV-20260930-000264 |           98.85
 Punto de Compra El Bagre 1                   | DLV-20260930-000265 |           48.15
 Punto de Compra Tibaná 1                     | DLV-20260930-000266 |          115.13
 Punto de Compra Suárez 1                     | DLV-20260930-000267 |           86.13
 Punto de Compra Mallama 1                    | DLV-20260930-000268 |          208.05
 Punto de Compra Carmen De Apicalá 1          | DLV-20260930-000269 |          132.62
 Punto de Compra Guamo 1                      | DLV-20260930-000270 |           88.69
 Punto de Compra San José 1                   | DLV-20260930-000271 |          273.16
 Punto de Compra Lenguazaque 1                | DLV-20260930-000272 |           59.63
 Punto de Compra Herrán 2                     | DLV-20260930-000273 |          210.28
 Punto de Compra Ulloa 1                      | DLV-20260930-000274 |          174.06
 Punto de Compra Timbiquí 1                   | DLV-20260930-000275 |          461.11
 Punto de Compra Prado 1                      | DLV-20260930-000276 |          173.32
 Punto de Compra Líbano 1                     | DLV-20260930-000277 |          223.11
 Punto de Compra El Banco 1                   | DLV-20260930-000278 |           56.01
 Punto de Compra Coromoro 1                   | DLV-20260930-000279 |          122.36
 Punto de Compra Pacho 1                      | DLV-20260930-000280 |           99.14
 Punto de Compra Tesalia 1                    | DLV-20260930-000281 |          255.06
 Punto de Compra Altamira 1                   | DLV-20260930-000282 |          156.67
 Punto de Compra Cisneros 1                   | DLV-20260930-000283 |          113.47
 Punto de Compra Ataco 1                      | DLV-20260930-000284 |          193.97
 Punto de Compra Rionegro 1                   | DLV-20260930-000285 |           80.88
 Punto de Compra Algeciras 1                  | DLV-20260930-000286 |          194.68
 Punto de Compra Santuario 1                  | DLV-20260930-000287 |          180.72
 Punto de Compra Valle De San Juan 1          | DLV-20260930-000288 |          255.07
 Punto de Compra Armero Guayabal 2            | DLV-20260930-000289 |           56.97
 Punto de Compra El Rosario 1                 | DLV-20260930-000290 |          156.21
 Punto de Compra El Zulia 1                   | DLV-20260930-000291 |          192.22
 Punto de Compra Acevedo 1                    | DLV-20260930-000292 |          122.13
 Punto de Compra Yaguará 2                    | DLV-20260930-000293 |          312.35
 Punto de Compra Líbano 1                     | DLV-20260930-000294 |           92.61
 Punto de Compra Sopetrán 1                   | DLV-20260930-000295 |           61.82
 Punto de Compra Pradera 1                    | DLV-20260930-000296 |          271.91
 Punto de Compra San Francisco 1              | DLV-20260930-000297 |           98.35
 Punto de Compra Cajibío 2                    | DLV-20260930-000298 |          124.92
 Punto de Compra Valdivia 1                   | DLV-20260930-000299 |           97.03
 Punto de Compra Riosucio 1                   | DLV-20260930-000300 |          130.74
 Punto de Compra El Playón 1                  | DLV-20260930-000083 |           89.95
 Punto de Compra San Sebastián De Mariquita 1 | DLV-20260930-000084 |          131.42
 Punto de Compra La Merced 1                  | DLV-20260930-000085 |          239.20
 Punto de Compra Nátaga 1                     | DLV-20260930-000086 |           84.05
 Punto de Compra Algeciras 1                  | DLV-20260930-000087 |          116.95
 Punto de Compra Confines 1                   | DLV-20260930-000088 |          220.61
 Punto de Compra Villarrica 1                 | DLV-20260930-000089 |          229.80
 Punto de Compra Sevilla 1                    | DLV-20260930-000090 |          154.09
 Punto de Compra Morales 1                    | DLV-20260930-000091 |          139.14
 Punto de Compra Pijao 1                      | DLV-20260930-000092 |           59.23
 Punto de Compra Salamina 2                   | DLV-20260930-000093 |           39.42
 Punto de Compra Acevedo 1                    | DLV-20260930-000094 |          246.96
 Punto de Compra Sopetrán 1                   | DLV-20260930-000095 |          116.81
 Punto de Compra El Rosario 1                 | DLV-20260930-000096 |           53.57
 Punto de Compra Turbo 1                      | DLV-20260930-000097 |          146.99
 Punto de Compra Tibaná 1                     | DLV-20260930-000098 |           92.63
 Punto de Compra Teruel 1                     | DLV-20260930-000099 |          103.07
 Punto de Compra Popayán 1                    | DLV-20260930-000100 |          106.62
 Punto de Compra Paicol 1                     | DLV-20260930-000101 |          198.24
 Punto de Compra San Andrés De Tumaco 2       | DLV-20260930-000102 |           94.30
 Punto de Compra Turbo 2                      | DLV-20260930-000103 |          250.86
 Punto de Compra La Pintada 1                 | DLV-20260930-000104 |          246.47
 Punto de Compra Puerto Tejada 1              | DLV-20260930-000105 |          277.63
 Punto de Compra Armero Guayabal 2            | DLV-20260930-000106 |          308.32
 Punto de Compra La Plata 1                   | DLV-20260930-000107 |           46.82
 Punto de Compra Mallama 1                    | DLV-20260930-000108 |          298.73
 Punto de Compra Samaná 1                     | DLV-20260930-000109 |          311.88
 Punto de Compra Timbiquí 1                   | DLV-20260930-000110 |          374.46
 Punto de Compra Puracé 1                     | DLV-20260930-000111 |          294.56
 Punto de Compra Toribío 1                    | DLV-20260930-000112 |           47.40
 Punto de Compra Sevilla 1                    | DLV-20260930-000113 |          225.97
 Punto de Compra Teruel 1                     | DLV-20260930-000114 |          128.15
 Punto de Compra Líbano 1                     | DLV-20260930-000115 |          230.48
 Punto de Compra El Banco 1                   | DLV-20260930-000116 |          243.35
 Punto de Compra San José 1                   | DLV-20260930-000117 |          342.43
 Punto de Compra Pacho 1                      | DLV-20260930-000118 |          111.64
 Punto de Compra Hatonuevo 1                  | DLV-20260930-000119 |           93.84
 Punto de Compra Bosconia 1                   | DLV-20260930-000120 |           59.56
 Punto de Compra Paicol 2                     | DLV-20260930-000121 |          171.53
 Punto de Compra La Tebaida 1                 | DLV-20260930-000122 |          235.59
 Punto de Compra La Cumbre 1                  | DLV-20260930-000123 |           81.10
 Punto de Compra Manzanares 1                 | DLV-20260930-000124 |          352.50
 Punto de Compra Sopetrán 1                   | DLV-20260930-000125 |          427.10
 Punto de Compra Salamina 2                   | DLV-20260930-000126 |          107.79
 Punto de Compra Valdivia 1                   | DLV-20260930-000127 |          122.11
 Punto de Compra San Francisco 1              | DLV-20260930-000128 |           49.28
 Punto de Compra Flandes 1                    | DLV-20260930-000129 |          206.71
 Punto de Compra Algeciras 1                  | DLV-20260930-000130 |          290.55
 Punto de Compra Garzón 1                     | DLV-20260930-000131 |          219.85
 Punto de Compra Garzón 2                     | DLV-20260930-000132 |           49.97
 Punto de Compra Paratebueno 1                | DLV-20260930-000133 |          254.83
 Punto de Compra San Andrés De Tumaco 1       | DLV-20260930-000134 |          231.81
 Punto de Compra Garzón 2                     | DLV-20260930-000135 |          210.75
 Punto de Compra San Andrés De Tumaco 1       | DLV-20260930-000136 |          122.17
 Punto de Compra Aldana 1                     | DLV-20260930-000137 |          209.02
 Punto de Compra San Andrés De Tumaco 1       | DLV-20260930-000138 |          160.82
 Punto de Compra El Carmen 1                  | DLV-20260930-000139 |          294.33
 Punto de Compra Puerto Tejada 1              | DLV-20260930-000140 |          112.33
 Punto de Compra Bochalema 1                  | DLV-20260930-000141 |          179.04
 Punto de Compra Palestina 1                  | DLV-20260930-000142 |          248.91
 Punto de Compra Toribío 1                    | DLV-20260930-000143 |          331.30
 Punto de Compra Guachené 1                   | DLV-20260930-000144 |          242.47
 Punto de Compra Líbano 1                     | DLV-20260930-000145 |          182.53
 Punto de Compra Balboa 1                     | DLV-20260930-000146 |          290.98
 Punto de Compra Ipiales 1                    | DLV-20260930-000147 |           66.42
 Punto de Compra Balboa 2                     | DLV-20260930-000148 |          121.69
 Punto de Compra Gigante 1                    | DLV-20260930-000149 |          226.18
 Punto de Compra Palestina 1                  | DLV-20260930-000150 |           51.31
 Punto de Compra Pelaya 1                     | DLV-20260930-000151 |          181.29
 Punto de Compra San Andrés De Tumaco 1       | DLV-20260930-000152 |          214.44
 Punto de Compra Sardinata 1                  | DLV-20260930-000153 |          123.01
 Punto de Compra Villarrica 1                 | DLV-20260930-000154 |           53.22
 Punto de Compra Carmen De Apicalá 1          | DLV-20260930-000155 |          115.43
 Punto de Compra El Playón 1                  | DLV-20260930-000156 |          155.70
 Punto de Compra Anserma 2                    | DLV-20260930-000157 |          169.11
 Punto de Compra Valle De San Juan 1          | DLV-20260930-000158 |          177.58
 Punto de Compra Teruel 1                     | DLV-20260930-000159 |          111.28
 Punto de Compra La Celia 1                   | DLV-20260930-000160 |          221.38
 Punto de Compra Miranda 1                    | DLV-20260930-000161 |          197.04
 Punto de Compra Turbo 2                      | DLV-20260930-000162 |          178.36
 Punto de Compra Valle De San Juan 1          | DLV-20260930-000163 |          200.63
(300 filas)
**/