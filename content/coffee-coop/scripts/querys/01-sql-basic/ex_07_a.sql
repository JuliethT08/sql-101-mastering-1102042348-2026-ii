-- Exercise 7-a
-- Tabla: farm.farms.
-- a) Consulte el nombre de la finca, la vereda, el area total y la altitud de las
-- fincas del municipio 54518 ubicadas por encima de los 1800 m.s.n.m., con los
-- alias farm, rural district, area ha y altitude masl, ordenadas de mayor
-- a menor altitud.

SELECT 
    T1.farm_name AS farm,
    T1.rural_district AS rural_district,
    T1.total_area_ha AS area_ha,
    T1.altitude_masl AS altitude_masl
FROM farm.farms AS T1
WHERE T1.municipality_code ='54518'
    AND T1.altitude_masl > 1800
ORDER BY T1.altitude_masl DESC;
    
/**
      farm      |    rural_district    | area_ha | altitude_masl
----------------+----------------------+---------+---------------
 Santa Clara    | La Legua             |    2.62 |          2300
 El Guayabo     | El Rosal             |    1.21 |          2300
 La Cascada     | Caima                |    2.49 |          2300
 El Vergel      | Sabagua              |    1.11 |          2300
 La Isabela     | García               |    1.36 |          2275
 El Refugio     | Monteadentro         |    4.89 |          2242
 Cafetal Viejo  | Caima                |    5.29 |          2229
 San José       | Alcaparral           |    3.12 |          2203
 El Refugio     | Sabaneta Baja        |    1.93 |          2195
 Villa Hermosa  | Peñas                |    0.30 |          2181
 El Nogal       | San José De Tonchala |    3.24 |          2177
 El Paraíso     | Navarro              |    1.67 |          2164
 El Danubio     | García               |    7.83 |          2160
 Las Orquídeas  | Sabaneta Baja        |    0.78 |          2152
 Los Laureles   | San José De Tonchala |    0.84 |          2148
 La Granja      | El Palchal           |    2.83 |          2140
 Los Guaduales  | El Palchal           |    2.66 |          2135
 La Argentina   | Lengua               |    1.45 |          2124
 El Mesón       | Navarro              |    1.40 |          2122
 Las Acacias    | Cunuba               |    0.94 |          2121
 Cafetal Viejo  | La Legua             |    0.42 |          2109
 Villa Rosa     | El Alizal            |    1.81 |          2108
 Bellavista     | Cunuba               |    7.72 |          2107
 La Estrella    | García               |    5.51 |          2079
 El Guamo       | El Escorial          |    4.27 |          2074
 Las Margaritas | Caima                |    0.91 |          2072
 San Rafael     | San José De Tonchala |    1.02 |          2065
 La Fortuna     | El Palchal           |    3.25 |          2058
 Los Naranjos   | El Rosal             |   14.08 |          2052
 Santa Clara    | Cunuba               |    1.70 |          2051
 Villa Hermosa  | Monteadentro         |    0.38 |          2048
 El Retiro      | García               |    0.99 |          2032
 Villa Rosa     | San José De Tonchala |    0.56 |          2028
 El Silencio    | Santa Matilde        |    3.34 |          2028
 La Ceiba       | San Francisco        |    3.50 |          2022
 El Jardín      | Cunuba               |    1.61 |          2011
 El Mango       | Cabecera Municipal   |    1.29 |          2010
 Bellavista     | Alto Grande          |    3.83 |          2007
 El Cedro       | Llano Castro         |    1.44 |          2003
 El Guayabo     | Navarro              |    1.66 |          1999
 La Montaña     | Peñas                |    2.49 |          1992
 San José       | Tampanqueba          |    0.68 |          1987
 El Rosal       | Cabecera Municipal   |    3.31 |          1985
 Las Brisas     | Alto Grande          |    1.40 |          1977
 El Porvenir    | El Palchal           |    1.82 |          1977
 La Milagrosa   | Jurado               |    0.92 |          1976
 El Refugio     | Peñas                |    1.72 |          1976
 El Silencio    | Jurado               |    2.21 |          1975
 El Brillante   | La Legua             |    9.59 |          1974
 El Encanto     | Cunuba               |    5.77 |          1972
 La Unión       | Santa Matilde        |    2.02 |          1972
 Santa Clara    | El Totumo            |    1.65 |          1966
 La Siberia     | García               |    2.11 |          1962
 La Selva       | Peñas                |    1.59 |          1953
 Villa Hermosa  | El Rosal             |    3.79 |          1952
 La Siberia     | El Alizal            |    3.96 |          1950
 Villa Hermosa  | El Escorial          |    1.78 |          1948
 Las Mercedes   | Llano Castro         |    2.73 |          1942
 La Quebrada    | El Alizal            |    0.80 |          1936
 El Tesoro      | San Francisco        |    3.26 |          1934
 El Encanto     | García               |    2.31 |          1924
 Los Arrayanes  | La ┌Pa               |    2.52 |          1918
 Cafetal Viejo  | Navarro              |    1.77 |          1903
 El Brillante   | Jurado               |    6.50 |          1902
 La Milagrosa   | El Alizal            |    6.30 |          1902
 El Cedro       | Iscaligua            |    4.70 |          1900
 Cafetal Viejo  | Cunuba               |    4.96 |          1894
 La Cabaña      | La ┌Pa               |    1.41 |          1894
 El Oasis       | La ┌Pa               |    0.47 |          1893
 La Quebrada    | El Totumo            |    0.68 |          1885
 La Isabela     | Monteadentro         |    3.06 |          1883
 El Horizonte   | Tampanqueba          |    1.26 |          1882
 El Recuerdo    | Alto Grande          |    1.47 |          1875
 La Cristalina  | El Escorial          |    6.69 |          1874
 La Pradera     | Sabagua              |    1.45 |          1870
 El Higuerón    | Caima                |    2.45 |          1868
 La Floresta    | Alcaparral           |    4.55 |          1866
 La Victoria    | El Escorial          |    3.25 |          1865
 Tierra Linda   | Lengua               |    4.17 |          1864
 El Guayabo     | Alto Grande          |    5.90 |          1862
 El Guayabo     | El Totumo            |    3.68 |          1859
 El Mesón       | Llano Castro         |   18.09 |          1859
 Santa Clara    | Lengua               |    0.70 |          1858
 La Esperanza   | Monteadentro         |    4.21 |          1858
 El Jardín      | El Escorial          |    2.87 |          1851
 El Tesoro      | El Alizal            |    2.62 |          1850
 Monteverde     | El Alizal            |    1.17 |          1844
 San Luis       | El Totumo            |    2.36 |          1842
 La Reserva     | García               |    2.05 |          1841
 El Mesón       | Iscaligua            |    2.80 |          1840
 El Cedro       | La Legua             |    1.60 |          1840
 El Triunfo     | García               |    1.83 |          1837
 Las Margaritas | Llano Castro         |    1.89 |          1832
 San Antonio    | La Legua             |    3.09 |          1832
 La Cabaña      | Santa Matilde        |    2.33 |          1828
 La Unión       | La Legua             |    2.74 |          1826
 El Retiro      | Sabaneta Alta        |    4.13 |          1823
 Los Arrayanes  | Iscaligua            |    2.07 |          1823
 Miraflores     | El Rosal             |    3.84 |          1822
 La Argentina   | Sabaneta Baja        |    1.64 |          1822
 La Argentina   | Caima                |    1.34 |          1821
 Agua Bonita    | Monteadentro         |    3.62 |          1818
 El Diamante    | El Escorial          |    1.79 |          1817
 La Aurora      | Jurado               |    3.12 |          1817
 Villa Hermosa  | El Alizal            |    3.84 |          1814
 El Placer      | Monteadentro         |    0.95 |          1809
 Tierra Linda   | Tampanqueba          |    2.25 |          1808
 La Argentina   | Peñas                |    3.33 |          1804
(108 filas)

**/