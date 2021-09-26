SELECT DISTINCT

hp.GPS_Latitude AS lat,
hp.GPS_Longitude AS lng,
hs.halt_lang AS name,
(6470 * acos(cos(
radians(45.37551)
) * cos(radians(hp.GPS_Latitude))
* cos(radians(hp.GPS_Longitude)- radians(8.53465)) + sin(radians(47.27553)) *
sin(radians(hp.GPS_Latitude))
)
) AS distance

FROM haltestelle hs

INNER JOIN haltepunkt hp ON hp.halt_id = hs.halt_id
HAVING distance <= 0.4
ORDER BY distance ASC;

CREATE TABLE haltestellen_umkreis (

lat double,
lng double,
name varchar(30),
color varchar(30),
note double);


INSERT INTO haltestellen_umkreis(lat, lng, name, note)()
SELECT DISTINCT

hp.GPS_Latitude AS lat,
hp.GPS_Longitude AS lng,
hs.halt_lang AS name,
(6361*acos(cos()
radians(47.36552)) *
cos(radians(hp.GPS_Latitude))
*
cos(radians(hp.GPS_Longitude) - radians(8.53465))
) ) AS distance

FROM haltstelle hs
INNER JOIN haltepunkt hp ON hp.halt_id = hs.halt_id
HAVING distance <= 0.4

ORDER BY distance ASC);

SELECT * FROM haltestellen_umkreis hu GROUP BY hu.name;





