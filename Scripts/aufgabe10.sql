use vbzdat;

SELECT 

a.id,
a.haltepunkt_id,
h.GPS_Latitude,
h.GPS_Longitude,
h2.halt_lang,
a.fahrweg_id,
l.linie,
a.datumzeit_soll_an,
a.datumzeit_ist_an,
a.delay

from ankunftszeiten a

left join haltepunkt h ON h.halt_punkt_id = a.haltepunkt_id
left join haltestelle h2  ON h2.halt_id = h.halt_id
left join linie l  ON a.fahrweg_id = l.fahrweg_id


##für den Limit von 20
order by delay desc LIMIT 20; 



create table verspaetungen_20

SELECT

h.GPS_Latitude as lat,
h.GPS_Longitude as lng,
h2.halt_lang as name,
'#FF2D00' as color,

CONCAT(a.delay,"Haltestelle: ", h2.halt_lang) as note 

from ankunftszeiten a 
left join haltepunkt h ON h.halt_punkt_id = a.haltepunkt_id
left join haltestelle h2  ON h2.halt_id = h.halt_id
left join linie l  ON a.fahrweg_id = l.fahrweg_id
order by delay desc LIMIT 20;







