use vbzdat;

CREATE TABLE linie_700_map

select 
h.GPS_Latitude as lat,
h.GPS_Longitude as lng,
h2.halt_lang as name,
'FF0000' as color,
concat(a.delay, "Haltestelle:", h2.halt_lang) as note

from ankunftszeiten a


left join haltepunkt h on h.halt_punkt_id = a.haltepunkt_id
left join haltestelle h2 on h2.halt_id = h.halt_id

where a.fahrt_id = 700 and date(a.datumzeit_ist_an) = '2021-03-03'
order by a.datumzeit_ist_an;