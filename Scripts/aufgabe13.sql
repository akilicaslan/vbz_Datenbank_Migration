use vbzdat;

set @userLAT =47.3644314; set @userLNG=8.5551336;

SELECT

h2.halt_lang,
h.GPS_Latitude as lat,
h.GPS_longitude as lng,
'#FF2D00' as color,
concat (TIME_FORMAT(TIME(a.datumzeit_ist_an),'%H:%i:%s'), " ", h2.halt_lang) as note,
ROUND(ST_Distance_Sphere(point(@userLNG,@userLAT),

point(h.GPS_Longitude, h.GPS_Latitude)),2) as distanz
from ankuftszeiten a 

left join haltepunkt h on h.halt_punkt_id = a.haltepunkt_id
left join Haltestelle h2 on h.halt_id = h2.halt_id 

where h.GPS_Latitude is not null and a.fahrt_id = 700 AND 
DATE(a.datumzeit_ist_an) = '2020-02-03'

order by distanz ASC LIMIT 4;