-- Exercise 1-c
-- Tablas: geo.municipalities, geo.departments, farm.farms, farm.farmers, buy.deliveries, buy.collection points.
-- c) Consulte el codigo de la entrega, el nombre de la finca, el nombre del punto de
-- compra y el peso bruto de las entregas del 30 de septiembre de 2026 (use
-- LIKE sobre delivery id), con los alias delivery, farm, collection point y
-- gross weight kg, ordenadas por punto de compra y luego por peso de mayor a menor.

SELECT
    T1.delivery_id AS delivery,
    T2.farm_name AS farm,
    T3.point_name AS collection_point,
    T1.gross_weight_kg AS gross_weight_kg
FROM buy.deliveries AS T1
INNER JOIN farm.farms AS T2
    ON T1.farm_id = T2.farm_id
INNER JOIN buy.collection_points AS T3
    ON T1.collection_point_id = T3.collection_point_id
WHERE T1.delivery_id LIKE 'DLV-20260930-%'
ORDER BY T3.point_name, T1.gross_weight_kg DESC;

/**
      delivery       |       farm       |               collection_point               | gross_weight_kg
---------------------+------------------+----------------------------------------------+-----------------
 DLV-20260930-000164 | La Divisa        | Punto de Compra Abriaquí 1                   |           48.18
 DLV-20260930-000028 | El Refugio       | Punto de Compra Acevedo 1                    |          258.00
 DLV-20260930-000094 | El Refugio       | Punto de Compra Acevedo 1                    |          246.96
 DLV-20260930-000292 | La Florida       | Punto de Compra Acevedo 1                    |          122.13
 DLV-20260930-000202 | Los Guaduales    | Punto de Compra Agrado 1                     |          246.62
 DLV-20260930-000080 | El Arrayán       | Punto de Compra Agrado 1                     |          120.11
 DLV-20260930-000075 | La Primavera     | Punto de Compra Alcalá 1                     |           61.99
 DLV-20260930-000137 | San Rafael       | Punto de Compra Aldana 1                     |          209.02
 DLV-20260930-000130 | El Refugio       | Punto de Compra Algeciras 1                  |          290.55
 DLV-20260930-000246 | Los Alpes        | Punto de Compra Algeciras 1                  |          247.42
 DLV-20260930-000249 | La Montaña       | Punto de Compra Algeciras 1                  |          244.21
 DLV-20260930-000286 | Las Acacias      | Punto de Compra Algeciras 1                  |          194.68
 DLV-20260930-000087 | La Floresta      | Punto de Compra Algeciras 1                  |          116.95
 DLV-20260930-000282 | El Paraíso       | Punto de Compra Altamira 1                   |          156.67
 DLV-20260930-000231 | La Palma         | Punto de Compra Altamira 1                   |          128.21
 DLV-20260930-000240 | La Primavera     | Punto de Compra Andalucía 2                  |          304.69
 DLV-20260930-000203 | El Horizonte     | Punto de Compra Andalucía 2                  |          166.57
 DLV-20260930-000079 | Las Brisas       | Punto de Compra Anserma 1                    |          176.91
 DLV-20260930-000009 | Las Delicias     | Punto de Compra Anserma 1                    |           56.80
 DLV-20260930-000157 | Las Margaritas   | Punto de Compra Anserma 2                    |          169.11
 DLV-20260930-000188 | El Placer        | Punto de Compra Anserma 2                    |           40.13
 DLV-20260930-000166 | El Oasis         | Punto de Compra Ansermanuevo 1               |          245.94
 DLV-20260930-000242 | La Cristalina    | Punto de Compra Ansermanuevo 1               |           98.23
 DLV-20260930-000007 | La Argentina     | Punto de Compra Apía 2                       |          404.97
 DLV-20260930-000021 | El Refugio       | Punto de Compra Aranzazu 1                   |          143.29
 DLV-20260930-000106 | El Retiro        | Punto de Compra Armero Guayabal 2            |          308.32
 DLV-20260930-000055 | La Montaña       | Punto de Compra Armero Guayabal 2            |          124.05
 DLV-20260930-000289 | El Diamante      | Punto de Compra Armero Guayabal 2            |           56.97
 DLV-20260930-000284 | La Primavera     | Punto de Compra Ataco 1                      |          193.97
 DLV-20260930-000146 | La Estrella      | Punto de Compra Balboa 1                     |          290.98
 DLV-20260930-000072 | La Cabaña        | Punto de Compra Balboa 1                     |          176.20
 DLV-20260930-000148 | Tierra Linda     | Punto de Compra Balboa 2                     |          121.69
 DLV-20260930-000165 | La Gaitana       | Punto de Compra Baraya 1                     |          348.59
 DLV-20260930-000241 | La Selva         | Punto de Compra Belalcázar 1                 |          181.74
 DLV-20260930-000217 | Altamira         | Punto de Compra Belalcázar 1                 |          132.86
 DLV-20260930-000233 | El Oasis         | Punto de Compra Bochalema 1                  |          371.40
 DLV-20260930-000063 | La Florida       | Punto de Compra Bochalema 1                  |          184.83
 DLV-20260930-000141 | El Guamo         | Punto de Compra Bochalema 1                  |          179.04
 DLV-20260930-000077 | La Palma         | Punto de Compra Bochalema 1                  |          114.72
 DLV-20260930-000235 | La Estrella      | Punto de Compra Bosconia 1                   |          317.64
 DLV-20260930-000051 | El Mirador       | Punto de Compra Bosconia 1                   |          310.22
 DLV-20260930-000120 | El Rosal         | Punto de Compra Bosconia 1                   |           59.56
 DLV-20260930-000213 | Cafetal Viejo    | Punto de Compra Cajibío 1                    |          264.45
 DLV-20260930-000058 | Las Margaritas   | Punto de Compra Cajibío 2                    |          166.64
 DLV-20260930-000298 | La Florida       | Punto de Compra Cajibío 2                    |          124.92
 DLV-20260930-000236 | La Montaña       | Punto de Compra Cajibío 3                    |          215.39
 DLV-20260930-000179 | San José         | Punto de Compra Cajibío 3                    |          190.22
 DLV-20260930-000003 | El Cedro         | Punto de Compra Cajibío 3                    |          112.33
 DLV-20260930-000013 | El Cedro         | Punto de Compra Caldas 1                     |           47.40
 DLV-20260930-000269 | San Rafael       | Punto de Compra Carmen De Apicalá 1          |          132.62
 DLV-20260930-000155 | La Cristalina    | Punto de Compra Carmen De Apicalá 1          |          115.43
 DLV-20260930-000244 | El Edén          | Punto de Compra Carmen De Apicalá 3          |          164.55
 DLV-20260930-000184 | La Holanda       | Punto de Compra Circasia 2                   |          109.64
 DLV-20260930-000054 | El Danubio       | Punto de Compra Cisneros 1                   |          167.57
 DLV-20260930-000283 | El Recreo        | Punto de Compra Cisneros 1                   |          113.47
 DLV-20260930-000259 | Los Alpes        | Punto de Compra Coello 1                     |          148.90
 DLV-20260930-000088 | Monteverde       | Punto de Compra Confines 1                   |          220.61
 DLV-20260930-000006 | Santa Clara      | Punto de Compra Convención 1                 |          139.81
 DLV-20260930-000220 | La Quebrada      | Punto de Compra Convención 1                 |          120.85
 DLV-20260930-000068 | El Oasis         | Punto de Compra Convención 1                 |          113.93
 DLV-20260930-000185 | El Guayabo       | Punto de Compra Copacabana 1                 |           79.08
 DLV-20260930-000041 | Santa Clara      | Punto de Compra Copacabana 1                 |           45.97
 DLV-20260930-000057 | La Carolina      | Punto de Compra Corinto 1                    |          201.14
 DLV-20260930-000081 | La Esperanza     | Punto de Compra Coromoro 1                   |          475.13
 DLV-20260930-000036 | Agua Bonita      | Punto de Compra Coromoro 1                   |          200.54
 DLV-20260930-000257 | La Cristalina    | Punto de Compra Coromoro 1                   |          144.44
 DLV-20260930-000015 | El Retiro        | Punto de Compra Coromoro 1                   |          136.77
 DLV-20260930-000279 | La Milagrosa     | Punto de Compra Coromoro 1                   |          122.36
 DLV-20260930-000017 | La Montaña       | Punto de Compra El Bagre 1                   |          545.69
 DLV-20260930-000204 | El Guayabo       | Punto de Compra El Bagre 1                   |          234.22
 DLV-20260930-000265 | La Gloria        | Punto de Compra El Bagre 1                   |           48.15
 DLV-20260930-000005 | Las Brisas       | Punto de Compra El Banco 1                   |          256.42
 DLV-20260930-000116 | Los Laureles     | Punto de Compra El Banco 1                   |          243.35
 DLV-20260930-000029 | Cafetal Viejo    | Punto de Compra El Banco 1                   |          231.40
 DLV-20260930-000228 | Cafetal Viejo    | Punto de Compra El Banco 1                   |          127.88
 DLV-20260930-000278 | El Rosal         | Punto de Compra El Banco 1                   |           56.01
 DLV-20260930-000139 | El Bosque        | Punto de Compra El Carmen 1                  |          294.33
 DLV-20260930-000212 | La Isabela       | Punto de Compra El Carmen 2                  |          168.86
 DLV-20260930-000047 | Las Mercedes     | Punto de Compra El Doncello 1                |           80.07
 DLV-20260930-000156 | La Isabela       | Punto de Compra El Playón 1                  |          155.70
 DLV-20260930-000083 | La Floresta      | Punto de Compra El Playón 1                  |           89.95
 DLV-20260930-000037 | La Gaitana       | Punto de Compra El Playón 1                  |           64.16
 DLV-20260930-000056 | El Cedro         | Punto de Compra El Playón 1                  |           38.62
 DLV-20260930-000290 | La Ceiba         | Punto de Compra El Rosario 1                 |          156.21
 DLV-20260930-000096 | Las Mercedes     | Punto de Compra El Rosario 1                 |           53.57
 DLV-20260930-000221 | El Paraíso       | Punto de Compra El Tambo 1                   |          322.31
 DLV-20260930-000008 | La Aurora        | Punto de Compra El Tambo 1                   |          175.92
 DLV-20260930-000180 | El Refugio       | Punto de Compra El Tambo 1                   |          120.64
 DLV-20260930-000291 | El Manantial     | Punto de Compra El Zulia 1                   |          192.22
 DLV-20260930-000040 | Bella Vista Alta | Punto de Compra Flandes 1                    |          321.49
 DLV-20260930-000129 | Cafetal Viejo    | Punto de Compra Flandes 1                    |          206.71
 DLV-20260930-000190 | San Luis         | Punto de Compra Flandes 1                    |           61.12
 DLV-20260930-000234 | El Rosal         | Punto de Compra Fresno 1                     |          364.57
 DLV-20260930-000193 | El Recuerdo      | Punto de Compra Fresno 1                     |          267.39
 DLV-20260930-000131 | Los Arrayanes    | Punto de Compra Garzón 1                     |          219.85
 DLV-20260930-000135 | Los Arrayanes    | Punto de Compra Garzón 2                     |          210.75
 DLV-20260930-000171 | El Placer        | Punto de Compra Garzón 2                     |          169.97
 DLV-20260930-000132 | El Manantial     | Punto de Compra Garzón 2                     |           49.97
 DLV-20260930-000030 | El Guamo         | Punto de Compra Garzón 3                     |          124.95
 DLV-20260930-000149 | La Esperanza     | Punto de Compra Gigante 1                    |          226.18
 DLV-20260930-000248 | El Edén          | Punto de Compra Gigante 1                    |          159.89
 DLV-20260930-000066 | La Isabela       | Punto de Compra Gómez Plata 1                |          123.97
 DLV-20260930-000264 | Buenavista       | Punto de Compra Granada 1                    |           98.85
 DLV-20260930-000076 | El Encanto       | Punto de Compra Granada 1                    |           59.16
 DLV-20260930-000018 | Los Guaduales    | Punto de Compra Guachené 1                   |          247.11
 DLV-20260930-000144 | El Cafetal       | Punto de Compra Guachené 1                   |          242.47
 DLV-20260930-000043 | El Edén          | Punto de Compra Guadalajara De Buga 1        |          239.46
 DLV-20260930-000065 | San Luis         | Punto de Compra Guamo 1                      |          278.44
 DLV-20260930-000270 | Santa Clara      | Punto de Compra Guamo 1                      |           88.69
 DLV-20260930-000194 | Santa Bárbara    | Punto de Compra Guática 1                    |          223.71
 DLV-20260930-000119 | San Rafael       | Punto de Compra Hatonuevo 1                  |           93.84
 DLV-20260930-000273 | El Refugio       | Punto de Compra Herrán 2                     |          210.28
 DLV-20260930-000247 | Las Delicias     | Punto de Compra Herrán 2                     |          104.84
 DLV-20260930-000019 | Los Arrayanes    | Punto de Compra Hobo 2                       |          106.26
 DLV-20260930-000022 | La Florida       | Punto de Compra Ipiales 1                    |          247.73
 DLV-20260930-000042 | La Ceiba         | Punto de Compra Ipiales 1                    |          166.41
 DLV-20260930-000039 | Buenavista       | Punto de Compra Ipiales 1                    |           86.92
 DLV-20260930-000147 | La Loma          | Punto de Compra Ipiales 1                    |           66.42
 DLV-20260930-000069 | Las Margaritas   | Punto de Compra Ipiales 1                    |           45.38
 DLV-20260930-000033 | La Palma         | Punto de Compra Isnos 1                      |           49.13
 DLV-20260930-000048 | El Mesón         | Punto de Compra Isnos 2                      |          419.65
 DLV-20260930-000074 | La Isabela       | Punto de Compra Jambaló 1                    |          291.69
 DLV-20260930-000167 | El Rosal         | Punto de Compra Jambaló 1                    |          209.25
 DLV-20260930-000208 | La Siberia       | Punto de Compra Jambaló 1                    |          116.97
 DLV-20260930-000001 | El Cafetal       | Punto de Compra Jambaló 1                    |           51.53
 DLV-20260930-000160 | Altamira         | Punto de Compra La Celia 1                   |          221.38
 DLV-20260930-000251 | Santa Bárbara    | Punto de Compra La Celia 1                   |          173.91
 DLV-20260930-000044 | El Guamo         | Punto de Compra La Cumbre 1                  |          119.26
 DLV-20260930-000123 | El Caney         | Punto de Compra La Cumbre 1                  |           81.10
 DLV-20260930-000085 | El Triunfo       | Punto de Compra La Merced 1                  |          239.20
 DLV-20260930-000104 | La Gaitana       | Punto de Compra La Pintada 1                 |          246.47
 DLV-20260930-000214 | La Aurora        | Punto de Compra La Pintada 1                 |          177.63
 DLV-20260930-000210 | Bella Vista Alta | Punto de Compra La Pintada 1                 |           78.07
 DLV-20260930-000107 | La Holanda       | Punto de Compra La Plata 1                   |           46.82
 DLV-20260930-000168 | La Loma          | Punto de Compra La Plata 2                   |          173.46
 DLV-20260930-000187 | La Reserva       | Punto de Compra La Tebaida 1                 |          339.30
 DLV-20260930-000122 | La Gaitana       | Punto de Compra La Tebaida 1                 |          235.59
 DLV-20260930-000232 | La Siberia       | Punto de Compra La Tebaida 1                 |          135.93
 DLV-20260930-000195 | La Siberia       | Punto de Compra La Tebaida 1                 |          118.94
 DLV-20260930-000199 | El Vergel        | Punto de Compra La Tebaida 1                 |          113.87
 DLV-20260930-000196 | San José         | Punto de Compra Lenguazaque 1                |          223.01
 DLV-20260930-000025 | Santa Bárbara    | Punto de Compra Lenguazaque 1                |          176.53
 DLV-20260930-000272 | El Mango         | Punto de Compra Lenguazaque 1                |           59.63
 DLV-20260930-000115 | Santa Bárbara    | Punto de Compra Líbano 1                     |          230.48
 DLV-20260930-000277 | Mi Ranchito      | Punto de Compra Líbano 1                     |          223.11
 DLV-20260930-000145 | El Cafetal       | Punto de Compra Líbano 1                     |          182.53
 DLV-20260930-000294 | La Gloria        | Punto de Compra Líbano 1                     |           92.61
 DLV-20260930-000108 | Santa Bárbara    | Punto de Compra Mallama 1                    |          298.73
 DLV-20260930-000268 | El Silencio      | Punto de Compra Mallama 1                    |          208.05
 DLV-20260930-000124 | La Gaitana       | Punto de Compra Manzanares 1                 |          352.50
 DLV-20260930-000256 | La Soledad       | Punto de Compra Manzanares 1                 |          285.51
 DLV-20260930-000186 | Santa Elena      | Punto de Compra Manzanares 1                 |          209.37
 DLV-20260930-000201 | San José         | Punto de Compra Marsella 1                   |          245.78
 DLV-20260930-000219 | La Floresta      | Punto de Compra Mercaderes 1                 |          242.20
 DLV-20260930-000215 | El Encanto       | Punto de Compra Miranda 1                    |          210.61
 DLV-20260930-000161 | El Recuerdo      | Punto de Compra Miranda 1                    |          197.04
 DLV-20260930-000011 | El Tesoro        | Punto de Compra Miranda 1                    |          166.55
 DLV-20260930-000205 | La Ceiba         | Punto de Compra Mistrató 1                   |           40.23
 DLV-20260930-000091 | La Estrella      | Punto de Compra Morales 1                    |          139.14
 DLV-20260930-000224 | El Horizonte     | Punto de Compra Nátaga 1                     |          272.86
 DLV-20260930-000046 | Las Orquídeas    | Punto de Compra Nátaga 1                     |          186.73
 DLV-20260930-000086 | La Cabaña        | Punto de Compra Nátaga 1                     |           84.05
 DLV-20260930-000176 | Altamira         | Punto de Compra Ocaña 1                      |          162.41
 DLV-20260930-000260 | San Antonio      | Punto de Compra Ocaña 1                      |          149.08
 DLV-20260930-000061 | El Rosal         | Punto de Compra Pacho 1                      |          178.16
 DLV-20260930-000026 | El Horizonte     | Punto de Compra Pacho 1                      |          162.24
 DLV-20260930-000118 | El Cafetal       | Punto de Compra Pacho 1                      |          111.64
 DLV-20260930-000280 | La Isabela       | Punto de Compra Pacho 1                      |           99.14
 DLV-20260930-000207 | El Recreo        | Punto de Compra Pacho 1                      |           79.00
 DLV-20260930-000101 | Santa Clara      | Punto de Compra Paicol 1                     |          198.24
 DLV-20260930-000027 | El Guayabo       | Punto de Compra Paicol 1                     |          184.59
 DLV-20260930-000121 | Buenavista       | Punto de Compra Paicol 2                     |          171.53
 DLV-20260930-000175 | La Floresta      | Punto de Compra Paicol 2                     |          109.78
 DLV-20260930-000142 | El Rosal         | Punto de Compra Palestina 1                  |          248.91
 DLV-20260930-000032 | La Unión         | Punto de Compra Palestina 1                  |          213.33
 DLV-20260930-000150 | La Soledad       | Punto de Compra Palestina 1                  |           51.31
 DLV-20260930-000200 | La Esperanza     | Punto de Compra Palestina 2                  |          118.17
 DLV-20260930-000191 | La Carolina      | Punto de Compra Palocabildo 1                |          155.90
 DLV-20260930-000050 | Monte Alto       | Punto de Compra Paratebueno 1                |          373.90
 DLV-20260930-000133 | Las Brisas       | Punto de Compra Paratebueno 1                |          254.83
 DLV-20260930-000060 | El Nogal         | Punto de Compra Paratebueno 1                |          162.92
 DLV-20260930-000012 | El Placer        | Punto de Compra Paratebueno 1                |           47.86
 DLV-20260930-000151 | Los Naranjos     | Punto de Compra Pelaya 1                     |          181.29
 DLV-20260930-000261 | La Cumbre        | Punto de Compra Pijao 1                      |           92.89
 DLV-20260930-000092 | El Horizonte     | Punto de Compra Pijao 1                      |           59.23
 DLV-20260930-000230 | El Horizonte     | Punto de Compra Pital 1                      |          132.59
 DLV-20260930-000174 | La Aurora        | Punto de Compra Popayán 1                    |          302.24
 DLV-20260930-000100 | La Cascada       | Punto de Compra Popayán 1                    |          106.62
 DLV-20260930-000182 | El Edén          | Punto de Compra Popayán 1                    |           42.15
 DLV-20260930-000296 | La Loma          | Punto de Compra Pradera 1                    |          271.91
 DLV-20260930-000197 | La Gloria        | Punto de Compra Pradera 1                    |          137.57
 DLV-20260930-000172 | El Edén          | Punto de Compra Pradera 1                    |          114.47
 DLV-20260930-000198 | El Refugio       | Punto de Compra Prado 1                      |          204.01
 DLV-20260930-000276 | El Diamante      | Punto de Compra Prado 1                      |          173.32
 DLV-20260930-000226 | La Divisa        | Punto de Compra Prado 1                      |          119.31
 DLV-20260930-000245 | La Soledad       | Punto de Compra Pueblo Bello 1               |           48.86
 DLV-20260930-000105 | Villa Rosa       | Punto de Compra Puerto Tejada 1              |          277.63
 DLV-20260930-000140 | Santa Clara      | Punto de Compra Puerto Tejada 1              |          112.33
 DLV-20260930-000111 | El Caney         | Punto de Compra Puracé 1                     |          294.56
 DLV-20260930-000183 | El Nogal         | Punto de Compra Remedios 1                   |          119.34
 DLV-20260930-000209 | Los Laureles     | Punto de Compra Restrepo 1                   |          120.19
 DLV-20260930-000239 | El Mango         | Punto de Compra Rioblanco 2                  |          141.33
 DLV-20260930-000222 | La Esperanza     | Punto de Compra Rionegro 1                   |          237.37
 DLV-20260930-000035 | Bella Vista Alta | Punto de Compra Rionegro 1                   |          235.65
 DLV-20260930-000038 | Bella Vista Alta | Punto de Compra Rionegro 1                   |          136.73
 DLV-20260930-000285 | La Isabela       | Punto de Compra Rionegro 1                   |           80.88
 DLV-20260930-000053 | San José         | Punto de Compra Rionegro 1                   |           59.86
 DLV-20260930-000238 | San Rafael       | Punto de Compra Riosucio 1                   |          296.58
 DLV-20260930-000300 | La Cristalina    | Punto de Compra Riosucio 1                   |          130.74
 DLV-20260930-000023 | La Primavera     | Punto de Compra Sáchica 1                    |          221.51
 DLV-20260930-000225 | La Esperanza     | Punto de Compra Saladoblanco 1               |           89.49
 DLV-20260930-000126 | La Fortuna       | Punto de Compra Salamina 2                   |          107.79
 DLV-20260930-000093 | Las Acacias      | Punto de Compra Salamina 2                   |           39.42
 DLV-20260930-000002 | La Selva         | Punto de Compra Salgar 1                     |          124.98
 DLV-20260930-000059 | Villa Hermosa    | Punto de Compra Salgar 1                     |           60.59
 DLV-20260930-000109 | El Danubio       | Punto de Compra Samaná 1                     |          311.88
 DLV-20260930-000263 | El Vergel        | Punto de Compra San Andrés De Cuerquía 1     |          125.40
 DLV-20260930-000134 | Las Brisas       | Punto de Compra San Andrés De Tumaco 1       |          231.81
 DLV-20260930-000152 | El Diamante      | Punto de Compra San Andrés De Tumaco 1       |          214.44
 DLV-20260930-000138 | La Montaña       | Punto de Compra San Andrés De Tumaco 1       |          160.82
 DLV-20260930-000070 | La Carolina      | Punto de Compra San Andrés De Tumaco 1       |          147.13
 DLV-20260930-000082 | Las Acacias      | Punto de Compra San Andrés De Tumaco 1       |          137.90
 DLV-20260930-000136 | Las Orquídeas    | Punto de Compra San Andrés De Tumaco 1       |          122.17
 DLV-20260930-000178 | La Cabaña        | Punto de Compra San Andrés De Tumaco 2       |          196.09
 DLV-20260930-000016 | El Encanto       | Punto de Compra San Andrés De Tumaco 2       |          171.44
 DLV-20260930-000071 | La Cumbre        | Punto de Compra San Andrés De Tumaco 2       |          123.86
 DLV-20260930-000102 | El Recreo        | Punto de Compra San Andrés De Tumaco 2       |           94.30
 DLV-20260930-000243 | La Florida       | Punto de Compra San Andrés De Tumaco 2       |           82.10
 DLV-20260930-000010 | La Esperanza     | Punto de Compra San Francisco 1              |          269.43
 DLV-20260930-000258 | El Guayabo       | Punto de Compra San Francisco 1              |          244.96
 DLV-20260930-000297 | Buenavista       | Punto de Compra San Francisco 1              |           98.35
 DLV-20260930-000128 | Bella Vista Alta | Punto de Compra San Francisco 1              |           49.28
 DLV-20260930-000117 | El Porvenir      | Punto de Compra San José 1                   |          342.43
 DLV-20260930-000271 | El Danubio       | Punto de Compra San José 1                   |          273.16
 DLV-20260930-000169 | Villa Hermosa    | Punto de Compra San Lorenzo 1                |           49.26
 DLV-20260930-000084 | La Unión         | Punto de Compra San Sebastián De Mariquita 1 |          131.42
 DLV-20260930-000031 | El Danubio       | Punto de Compra San Sebastián De Mariquita 1 |          107.99
 DLV-20260930-000177 | El Manantial     | Punto de Compra Santa María 1                |          176.78
 DLV-20260930-000262 | La Cabaña        | Punto de Compra Santa Rosa De Cabal 1        |          155.02
 DLV-20260930-000252 | El Recuerdo      | Punto de Compra Santander De Quilichao 1     |          310.14
 DLV-20260930-000237 | La Soledad       | Punto de Compra Santander De Quilichao 1     |          128.69
 DLV-20260930-000034 | Tierra Linda     | Punto de Compra Santander De Quilichao 2     |          174.83
 DLV-20260930-000254 | El Horizonte     | Punto de Compra Santander De Quilichao 2     |          119.19
 DLV-20260930-000062 | Las Margaritas   | Punto de Compra Santuario 1                  |          259.10
 DLV-20260930-000287 | El Rosal         | Punto de Compra Santuario 1                  |          180.72
 DLV-20260930-000153 | Las Delicias     | Punto de Compra Sardinata 1                  |          123.01
 DLV-20260930-000113 | Las Mercedes     | Punto de Compra Sevilla 1                    |          225.97
 DLV-20260930-000090 | La Unión         | Punto de Compra Sevilla 1                    |          154.09
 DLV-20260930-000192 | Bella Vista Alta | Punto de Compra Sevilla 1                    |          123.73
 DLV-20260930-000125 | El Oasis         | Punto de Compra Sopetrán 1                   |          427.10
 DLV-20260930-000095 | El Refugio       | Punto de Compra Sopetrán 1                   |          116.81
 DLV-20260930-000295 | El Silencio      | Punto de Compra Sopetrán 1                   |           61.82
 DLV-20260930-000073 | Monte Alto       | Punto de Compra Suárez 1                     |          228.36
 DLV-20260930-000267 | El Tesoro        | Punto de Compra Suárez 1                     |           86.13
 DLV-20260930-000229 | El Caney         | Punto de Compra Suaza 1                      |          296.94
 DLV-20260930-000206 | La Fortuna       | Punto de Compra Tarazá 1                     |          224.53
 DLV-20260930-000216 | El Guayabo       | Punto de Compra Tello 1                      |          220.60
 DLV-20260930-000020 | El Nogal         | Punto de Compra Tello 1                      |          115.75
 DLV-20260930-000114 | La Siberia       | Punto de Compra Teruel 1                     |          128.15
 DLV-20260930-000159 | San Antonio      | Punto de Compra Teruel 1                     |          111.28
 DLV-20260930-000099 | Miraflores       | Punto de Compra Teruel 1                     |          103.07
 DLV-20260930-000064 | El Danubio       | Punto de Compra Teruel 1                     |           50.43
 DLV-20260930-000281 | Cafetal Viejo    | Punto de Compra Tesalia 1                    |          255.06
 DLV-20260930-000024 | Santa Clara      | Punto de Compra Tesalia 1                    |          222.49
 DLV-20260930-000218 | Bella Vista Alta | Punto de Compra Tesalia 2                    |          164.43
 DLV-20260930-000078 | La Florida       | Punto de Compra Tibaná 1                     |          311.98
 DLV-20260930-000014 | El Mango         | Punto de Compra Tibaná 1                     |          164.91
 DLV-20260930-000266 | Altamira         | Punto de Compra Tibaná 1                     |          115.13
 DLV-20260930-000098 | La Siberia       | Punto de Compra Tibaná 1                     |           92.63
 DLV-20260930-000275 | La Carolina      | Punto de Compra Timbiquí 1                   |          461.11
 DLV-20260930-000110 | La Gloria        | Punto de Compra Timbiquí 1                   |          374.46
 DLV-20260930-000067 | La Isabela       | Punto de Compra Timbiquí 1                   |          147.87
 DLV-20260930-000143 | El Placer        | Punto de Compra Toribío 1                    |          331.30
 DLV-20260930-000253 | La Argentina     | Punto de Compra Toribío 1                    |          253.15
 DLV-20260930-000211 | La Milagrosa     | Punto de Compra Toribío 1                    |           93.48
 DLV-20260930-000112 | Cafetal Viejo    | Punto de Compra Toribío 1                    |           47.40
 DLV-20260930-000250 | La Carolina      | Punto de Compra Tuluá 1                      |          256.26
 DLV-20260930-000189 | El Placer        | Punto de Compra Turbo 1                      |          184.52
 DLV-20260930-000097 | El Bosque        | Punto de Compra Turbo 1                      |          146.99
 DLV-20260930-000103 | La Selva         | Punto de Compra Turbo 2                      |          250.86
 DLV-20260930-000162 | San José         | Punto de Compra Turbo 2                      |          178.36
 DLV-20260930-000045 | La Floresta      | Punto de Compra Turbo 2                      |           60.79
 DLV-20260930-000274 | Las Mercedes     | Punto de Compra Ulloa 1                      |          174.06
 DLV-20260930-000255 | El Higuerón      | Punto de Compra Ulloa 1                      |          120.83
 DLV-20260930-000173 | Las Mercedes     | Punto de Compra Valdivia 1                   |          201.74
 DLV-20260930-000127 | Las Palmas       | Punto de Compra Valdivia 1                   |          122.11
 DLV-20260930-000299 | La Primavera     | Punto de Compra Valdivia 1                   |           97.03
 DLV-20260930-000288 | El Arrayán       | Punto de Compra Valle De San Juan 1          |          255.07
 DLV-20260930-000163 | Las Margaritas   | Punto de Compra Valle De San Juan 1          |          200.63
 DLV-20260930-000158 | Los Naranjos     | Punto de Compra Valle De San Juan 1          |          177.58
 DLV-20260930-000181 | Santa Elena      | Punto de Compra Valle De San Juan 1          |          114.63
 DLV-20260930-000227 | Las Brisas       | Punto de Compra Venecia 1                    |          154.74
 DLV-20260930-000004 | La Isabela       | Punto de Compra Venecia 1                    |          138.29
 DLV-20260930-000089 | La Selva         | Punto de Compra Villarrica 1                 |          229.80
 DLV-20260930-000049 | La Holanda       | Punto de Compra Villarrica 1                 |           95.73
 DLV-20260930-000154 | Los Guaduales    | Punto de Compra Villarrica 1                 |           53.22
 DLV-20260930-000293 | La Primavera     | Punto de Compra Yaguará 2                    |          312.35
 DLV-20260930-000052 | Agua Bonita      | Punto de Compra Yaguará 2                    |          154.42
 DLV-20260930-000223 | El Bosque        | Punto de Compra Yondó 1                      |          338.32
 DLV-20260930-000170 | El Brillante     | Punto de Compra Yondó 1                      |          262.86
(300 filas)
**/