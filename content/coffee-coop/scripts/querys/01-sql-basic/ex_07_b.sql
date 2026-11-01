-- Exercise 7-b
-- Tabla: farm.farms.
-- b) Del mismo municipio, consulte las fincas con altitud entre 1600 y 1800 m.s.n.m.
-- (BETWEEN), ordenadas por vereda (ascendente) y luego por area (descendente).

SELECT 
    T1.farm_name AS farm,
    T1.rural_district AS rural_district,
    T1.total_area_ha AS area_ha,
    T1.altitude_masl AS altitude_masl
FROM farm.farms AS T1
WHERE T1.municipality_code ='54518'
    AND T1.altitude_masl BETWEEN 1600 AND 1800
ORDER BY T1.rural_district, 
    T1.total_area_ha DESC;

/**
       farm       |    rural_district    | area_ha | altitude_masl
------------------+----------------------+---------+---------------
 Los Pinos        | Alcaparral           |    1.67 |          1771
 Miraflores       | Alcaparral           |    1.29 |          1636
 Monteverde       | Alto Grande          |    2.59 |          1794
 La Loma          | Alto Grande          |    2.09 |          1667
 Bellavista       | Alto Grande          |    1.80 |          1704
 El Refugio       | Alto Grande          |    1.23 |          1661
 El Jardín        | Cabecera Municipal   |    3.26 |          1620
 El Edén          | Cabecera Municipal   |    2.89 |          1603
 La Milagrosa     | Cabecera Municipal   |    2.65 |          1643
 La Divisa        | Cabecera Municipal   |    1.32 |          1765
 El Recuerdo      | Caima                |    3.12 |          1758
 El Recreo        | Caima                |    1.33 |          1617
 La Victoria      | Cunuba               |    1.79 |          1780
 La Isabela       | Cunuba               |    1.74 |          1663
 La Palma         | Cunuba               |    1.60 |          1773
 La Gaitana       | Cunuba               |    1.12 |          1659
 El Oasis         | El Alizal            |    2.52 |          1692
 La Argentina     | El Escorial          |    4.41 |          1765
 El Horizonte     | El Escorial          |    1.68 |          1730
 El Recuerdo      | El Escorial          |    1.27 |          1619
 El Triunfo       | El Escorial          |    0.75 |          1715
 La Palma         | El Escorial          |    0.72 |          1636
 Tierra Linda     | El Palchal           |    3.15 |          1629
 La Aurora        | El Palchal           |    2.74 |          1684
 Las Margaritas   | El Palchal           |    0.70 |          1686
 Las Palmas       | El Rosal             |    3.67 |          1750
 Bella Vista Alta | El Rosal             |    1.03 |          1652
 San Rafael       | El Totumo            |    4.50 |          1670
 Las Delicias     | El Totumo            |    3.03 |          1791
 La Divisa        | El Totumo            |    2.62 |          1628
 El Guamo         | Fontibón             |    4.35 |          1731
 El Tesoro        | Fontibón             |    2.48 |          1780
 Las Margaritas   | Fontibón             |    1.20 |          1740
 El Encanto       | Fontibón             |    0.75 |          1639
 La Granja        | García               |    1.34 |          1744
 La Selva         | García               |    0.64 |          1736
 El Arrayán       | Iscaligua            |    7.93 |          1747
 Tierra Linda     | Iscaligua            |    5.16 |          1721
 Mi Ranchito      | Iscaligua            |    3.24 |          1620
 El Silencio      | Iscaligua            |    1.68 |          1670
 San Antonio      | Iscaligua            |    1.67 |          1635
 La Cumbre        | Jurado               |    5.92 |          1756
 Las Acacias      | Jurado               |    4.58 |          1691
 El Higuerón      | Jurado               |    2.92 |          1691
 Los Arrayanes    | Jurado               |    1.68 |          1719
 La Loma          | Jurado               |    0.42 |          1795
 El Cedro         | La ┌Pa               |   13.90 |          1705
 El Mango         | La ┌Pa               |    3.86 |          1733
 El Horizonte     | La ┌Pa               |    3.19 |          1652
 La Aurora        | La ┌Pa               |    1.68 |          1721
 Monteverde       | La Legua             |    6.73 |          1635
 La Reserva       | La Legua             |    4.73 |          1774
 El Cedro         | La Legua             |    4.06 |          1716
 Villa Hermosa    | La Legua             |    2.20 |          1633
 Tierra Linda     | La Legua             |    2.13 |          1641
 La Granja        | La Legua             |    1.43 |          1681
 El Jardín        | La Legua             |    1.32 |          1621
 Monte Alto       | La Legua             |    0.55 |          1615
 El Recuerdo      | La Legua             |    0.38 |          1747
 Los Laureles     | Lengua               |    8.70 |          1639
 La Ceiba         | Llano Castro         |    7.20 |          1635
 La Estrella      | Llano Castro         |    5.00 |          1685
 La Aurora        | Llano Castro         |    4.69 |          1700
 La Cabaña        | Llano Castro         |    3.26 |          1666
 La Unión         | Llano Castro         |    0.59 |          1800
 El Recuerdo      | Monteadentro         |    7.29 |          1711
 La Siberia       | Monteadentro         |    2.80 |          1684
 La Montaña       | Monteadentro         |    2.06 |          1736
 El Diamante      | Monteadentro         |    1.16 |          1670
 Las Mercedes     | Navarro              |    2.12 |          1694
 El Horizonte     | Peñas                |   10.63 |          1627
 La Floresta      | Peñas                |    2.66 |          1704
 La Esperanza     | Peñas                |    2.05 |          1679
 El Jardín        | Peñas                |    1.76 |          1749
 La Florida       | Peñas                |    1.16 |          1657
 La Selva         | Sabagua              |    3.20 |          1677
 La Cumbre        | Sabagua              |    2.18 |          1658
 Las Delicias     | Sabagua              |    2.14 |          1749
 La Gaitana       | Sabagua              |    1.07 |          1705
 La Cabaña        | Sabagua              |    0.69 |          1710
 San Luis         | Sabaneta Alta        |    0.80 |          1623
 El Diamante      | Sabaneta Baja        |    1.70 |          1732
 La Selva         | Sabaneta Baja        |    1.21 |          1682
 El Bosque        | Sabaneta Baja        |    0.96 |          1628
 La Siberia       | Sabaneta Baja        |    0.71 |          1619
 El Guayabo       | San Francisco        |    3.20 |          1718
 Los Pinos        | San Francisco        |    3.16 |          1645
 El Mirador       | San Francisco        |    2.52 |          1740
 La Floresta      | San José De Tonchala |    7.07 |          1662
 La Primavera     | San José De Tonchala |    3.41 |          1732
 El Diamante      | San José De Tonchala |    1.12 |          1759
 La Palma         | San José De Tonchala |    0.30 |          1610
 El Edén          | Santa Matilde        |   11.41 |          1685
 El Manantial     | Santa Matilde        |    1.54 |          1697
 La Palma         | Santa Matilde        |    1.16 |          1758
 El Vergel        | Santa Matilde        |    1.05 |          1627
 Los Alpes        | Santa Matilde        |    1.04 |          1651
 El Nogal         | Tampanqueba          |    4.50 |          1627
 La Primavera     | Tampanqueba          |    4.49 |          1709
 Las Brisas       | Tampanqueba          |    3.05 |          1748
 San Luis         | Tampanqueba          |    2.86 |          1724
 El Diamante      | Tampanqueba          |    2.42 |          1612
 El Nogal         | Tampanqueba          |    2.27 |          1740
 El Arrayán       | Tampanqueba          |    0.52 |          1730
(104 filas)
**/