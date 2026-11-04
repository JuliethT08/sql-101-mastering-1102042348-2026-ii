-- Exercise 8-c
-- Tablas: geo.departments, geo.municipalities, buy.deliveries, buy.collection points.
-- c) De las entregas de ese mismo dıa, consulte por cada punto de compra (mostrando su nombre) el numero de entregas,  -- el peso bruto total y el peso bruto promedio redondeado a 2 decimales, con los alias collection point,
-- deliveries count, total gross kg y avg gross kg.

SELECT 
    T2.point_name AS collection_point,
    COUNT(T1.delivery_id) AS deliveries_count,
    SUM(T1.gross_weight_kg) AS total_gross_kg,
    ROUND(AVG(T1.gross_weight_kg), 2) AS avg_gross_kg
FROM buy.deliveries AS T1
INNER JOIN buy.collection_points AS T2
    ON T1.collection_point_id = T2.collection_point_id
WHERE T1.delivery_id LIKE 'DLV-20260930-%'
GROUP BY T2.point_name
ORDER BY total_gross_kg DESC;

/**
               collection_point               | deliveries_count | total_gross_kg | avg_gross_kg
----------------------------------------------+------------------+----------------+--------------
 Punto de Compra Algeciras 1                  |                5 |        1093.81 |       218.76
 Punto de Compra Coromoro 1                   |                5 |        1079.24 |       215.85
 Punto de Compra San Andrés De Tumaco 1       |                6 |        1014.27 |       169.05
 Punto de Compra Timbiquí 1                   |                3 |         983.44 |       327.81
 Punto de Compra La Tebaida 1                 |                5 |         943.63 |       188.73
 Punto de Compra El Banco 1                   |                5 |         915.06 |       183.01
 Punto de Compra Bochalema 1                  |                4 |         849.99 |       212.50
 Punto de Compra Manzanares 1                 |                3 |         847.38 |       282.46
 Punto de Compra Paratebueno 1                |                4 |         839.51 |       209.88
 Punto de Compra El Bagre 1                   |                3 |         828.06 |       276.02
 Punto de Compra Rionegro 1                   |                5 |         750.49 |       150.10
 Punto de Compra Valle De San Juan 1          |                4 |         747.91 |       186.98
 Punto de Compra Líbano 1                     |                4 |         728.73 |       182.18
 Punto de Compra Toribío 1                    |                4 |         725.33 |       181.33
 Punto de Compra Bosconia 1                   |                3 |         687.42 |       229.14
 Punto de Compra Tibaná 1                     |                4 |         684.65 |       171.16
 Punto de Compra Jambaló 1                    |                4 |         669.44 |       167.36
 Punto de Compra San Andrés De Tumaco 2       |                5 |         667.79 |       133.56
 Punto de Compra San Francisco 1              |                4 |         662.02 |       165.51
 Punto de Compra Fresno 1                     |                2 |         631.96 |       315.98
 Punto de Compra Pacho 1                      |                5 |         630.18 |       126.04
 Punto de Compra Acevedo 1                    |                3 |         627.09 |       209.03
 Punto de Compra El Tambo 1                   |                3 |         618.87 |       206.29
 Punto de Compra San José 1                   |                2 |         615.59 |       307.80
 Punto de Compra Ipiales 1                    |                5 |         612.86 |       122.57
 Punto de Compra Sopetrán 1                   |                3 |         605.73 |       201.91
 Punto de Compra Yondó 1                      |                2 |         601.18 |       300.59
 Punto de Compra Flandes 1                    |                3 |         589.32 |       196.44
 Punto de Compra Miranda 1                    |                3 |         574.20 |       191.40
 Punto de Compra Nátaga 1                     |                3 |         543.64 |       181.21
 Punto de Compra Pradera 1                    |                3 |         523.95 |       174.65
 Punto de Compra Cajibío 3                    |                3 |         517.94 |       172.65
 Punto de Compra Palestina 1                  |                3 |         513.55 |       171.18
 Punto de Compra Mallama 1                    |                2 |         506.78 |       253.39
 Punto de Compra Sevilla 1                    |                3 |         503.79 |       167.93
 Punto de Compra La Pintada 1                 |                3 |         502.17 |       167.39
 Punto de Compra Prado 1                      |                3 |         496.64 |       165.55
 Punto de Compra Turbo 2                      |                3 |         490.01 |       163.34
 Punto de Compra Guachené 1                   |                2 |         489.58 |       244.79
 Punto de Compra Armero Guayabal 2            |                3 |         489.34 |       163.11
 Punto de Compra Tesalia 1                    |                2 |         477.55 |       238.78
 Punto de Compra Andalucía 2                  |                2 |         471.26 |       235.63
 Punto de Compra Balboa 1                     |                2 |         467.18 |       233.59
 Punto de Compra Yaguará 2                    |                2 |         466.77 |       233.39
 Punto de Compra Lenguazaque 1                |                3 |         459.17 |       153.06
 Punto de Compra Popayán 1                    |                3 |         451.01 |       150.34
 Punto de Compra Santuario 1                  |                2 |         439.82 |       219.91
 Punto de Compra Santander De Quilichao 1     |                2 |         438.83 |       219.42
 Punto de Compra Garzón 2                     |                3 |         430.69 |       143.56
 Punto de Compra Riosucio 1                   |                2 |         427.32 |       213.66
 Punto de Compra Valdivia 1                   |                3 |         420.88 |       140.29
 Punto de Compra Isnos 2                      |                1 |         419.65 |       419.65
 Punto de Compra Apía 2                       |                1 |         404.97 |       404.97
 Punto de Compra La Celia 1                   |                2 |         395.29 |       197.65
 Punto de Compra Teruel 1                     |                4 |         392.93 |        98.23
 Punto de Compra Puerto Tejada 1              |                2 |         389.96 |       194.98
 Punto de Compra Gigante 1                    |                2 |         386.07 |       193.04
 Punto de Compra Paicol 1                     |                2 |         382.83 |       191.42
 Punto de Compra Villarrica 1                 |                3 |         378.75 |       126.25
 Punto de Compra Convención 1                 |                3 |         374.59 |       124.86
 Punto de Compra Guamo 1                      |                2 |         367.13 |       183.57
 Punto de Compra Agrado 1                     |                2 |         366.73 |       183.37
 Punto de Compra Baraya 1                     |                1 |         348.59 |       348.59
 Punto de Compra El Playón 1                  |                4 |         348.43 |        87.11
 Punto de Compra Ansermanuevo 1               |                2 |         344.17 |       172.09
 Punto de Compra Tello 1                      |                2 |         336.35 |       168.18
 Punto de Compra Turbo 1                      |                2 |         331.51 |       165.76
 Punto de Compra Herrán 2                     |                2 |         315.12 |       157.56
 Punto de Compra Belalcázar 1                 |                2 |         314.60 |       157.30
 Punto de Compra Suárez 1                     |                2 |         314.49 |       157.25
 Punto de Compra Samaná 1                     |                1 |         311.88 |       311.88
 Punto de Compra Ocaña 1                      |                2 |         311.49 |       155.75
 Punto de Compra Suaza 1                      |                1 |         296.94 |       296.94
 Punto de Compra Ulloa 1                      |                2 |         294.89 |       147.45
 Punto de Compra Puracé 1                     |                1 |         294.56 |       294.56
 Punto de Compra El Carmen 1                  |                1 |         294.33 |       294.33
 Punto de Compra Santander De Quilichao 2     |                2 |         294.02 |       147.01
 Punto de Compra Venecia 1                    |                2 |         293.03 |       146.52
 Punto de Compra Cajibío 2                    |                2 |         291.56 |       145.78
 Punto de Compra Altamira 1                   |                2 |         284.88 |       142.44
 Punto de Compra Paicol 2                     |                2 |         281.31 |       140.66
 Punto de Compra Cisneros 1                   |                2 |         281.04 |       140.52
 Punto de Compra Cajibío 1                    |                1 |         264.45 |       264.45
 Punto de Compra Tuluá 1                      |                1 |         256.26 |       256.26
 Punto de Compra Carmen De Apicalá 1          |                2 |         248.05 |       124.03
 Punto de Compra Marsella 1                   |                1 |         245.78 |       245.78
 Punto de Compra Mercaderes 1                 |                1 |         242.20 |       242.20
 Punto de Compra Guadalajara De Buga 1        |                1 |         239.46 |       239.46
 Punto de Compra San Sebastián De Mariquita 1 |                2 |         239.41 |       119.71
 Punto de Compra La Merced 1                  |                1 |         239.20 |       239.20
 Punto de Compra Anserma 1                    |                2 |         233.71 |       116.86
 Punto de Compra Tarazá 1                     |                1 |         224.53 |       224.53
 Punto de Compra Guática 1                    |                1 |         223.71 |       223.71
 Punto de Compra Sáchica 1                    |                1 |         221.51 |       221.51
 Punto de Compra Confines 1                   |                1 |         220.61 |       220.61
 Punto de Compra Garzón 1                     |                1 |         219.85 |       219.85
 Punto de Compra El Rosario 1                 |                2 |         209.78 |       104.89
 Punto de Compra Anserma 2                    |                2 |         209.24 |       104.62
 Punto de Compra Aldana 1                     |                1 |         209.02 |       209.02
 Punto de Compra Corinto 1                    |                1 |         201.14 |       201.14
 Punto de Compra La Cumbre 1                  |                2 |         200.36 |       100.18
 Punto de Compra Ataco 1                      |                1 |         193.97 |       193.97
 Punto de Compra El Zulia 1                   |                1 |         192.22 |       192.22
 Punto de Compra Salgar 1                     |                2 |         185.57 |        92.79
 Punto de Compra Pelaya 1                     |                1 |         181.29 |       181.29
 Punto de Compra Santa María 1                |                1 |         176.78 |       176.78
 Punto de Compra La Plata 2                   |                1 |         173.46 |       173.46
 Punto de Compra El Carmen 2                  |                1 |         168.86 |       168.86
 Punto de Compra Carmen De Apicalá 3          |                1 |         164.55 |       164.55
 Punto de Compra Tesalia 2                    |                1 |         164.43 |       164.43
 Punto de Compra Granada 1                    |                2 |         158.01 |        79.01
 Punto de Compra Palocabildo 1                |                1 |         155.90 |       155.90
 Punto de Compra Santa Rosa De Cabal 1        |                1 |         155.02 |       155.02
 Punto de Compra Pijao 1                      |                2 |         152.12 |        76.06
 Punto de Compra Coello 1                     |                1 |         148.90 |       148.90
 Punto de Compra Salamina 2                   |                2 |         147.21 |        73.61
 Punto de Compra Aranzazu 1                   |                1 |         143.29 |       143.29
 Punto de Compra Rioblanco 2                  |                1 |         141.33 |       141.33
 Punto de Compra Morales 1                    |                1 |         139.14 |       139.14
 Punto de Compra Pital 1                      |                1 |         132.59 |       132.59
 Punto de Compra San Andrés De Cuerquía 1     |                1 |         125.40 |       125.40
 Punto de Compra Copacabana 1                 |                2 |         125.05 |        62.53
 Punto de Compra Garzón 3                     |                1 |         124.95 |       124.95
 Punto de Compra Gómez Plata 1                |                1 |         123.97 |       123.97
 Punto de Compra Sardinata 1                  |                1 |         123.01 |       123.01
 Punto de Compra Balboa 2                     |                1 |         121.69 |       121.69
 Punto de Compra Restrepo 1                   |                1 |         120.19 |       120.19
 Punto de Compra Remedios 1                   |                1 |         119.34 |       119.34
 Punto de Compra Palestina 2                  |                1 |         118.17 |       118.17
 Punto de Compra Circasia 2                   |                1 |         109.64 |       109.64
 Punto de Compra Hobo 2                       |                1 |         106.26 |       106.26
 Punto de Compra Hatonuevo 1                  |                1 |          93.84 |        93.84
 Punto de Compra Saladoblanco 1               |                1 |          89.49 |        89.49
 Punto de Compra El Doncello 1                |                1 |          80.07 |        80.07
 Punto de Compra Alcalá 1                     |                1 |          61.99 |        61.99
 Punto de Compra San Lorenzo 1                |                1 |          49.26 |        49.26
 Punto de Compra Isnos 1                      |                1 |          49.13 |        49.13
 Punto de Compra Pueblo Bello 1               |                1 |          48.86 |        48.86
 Punto de Compra Abriaquí 1                   |                1 |          48.18 |        48.18
 Punto de Compra Caldas 1                     |                1 |          47.40 |        47.40
 Punto de Compra La Plata 1                   |                1 |          46.82 |        46.82
 Punto de Compra Mistrató 1                   |                1 |          40.23 |        40.23
(142 filas)
**/