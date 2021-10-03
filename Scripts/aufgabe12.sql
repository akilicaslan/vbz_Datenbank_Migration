use vbzdat;


SELECT 


a.fahrt_id as Fahrt,
h2.halt_lang as Haltestelle,

Time_format(TIME(a.datumzeit_soll_ab), '%H:%i:%s') as abfahrtzeit

from ankunftszeiten a 

left join linie l on l.fahrweg_id = a.fahrweg_id
left join haltepunkt h on h.halt_punkt_id = a.haltepunkt_id
left join haltestelle h2 ON h2.halt_id = h.halt_id

where l.linie = 2 and date(datumzeit_soll_ab) = '2020-03-03' AND a.fahrt_id = 700

order BY a.fahrt_id, a.datumzeit_soll_ab ASC;