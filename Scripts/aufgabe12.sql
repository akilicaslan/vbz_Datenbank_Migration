use vbzdat;

SELECT 


a.fahrt_id as fahrt,
h2.halt_lang as haltestelle,

Time_format(TIME(a.datumzeit_soll_ab), '%H:%i:%s') as abfahrtzeit

from ankunftszeiten a 

left join linie l on l.fahrweg_id = a.fahrweg_id