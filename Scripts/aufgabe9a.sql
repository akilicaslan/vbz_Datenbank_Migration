use vbzdat;

create table ankunftszeiten

select
	
	fsi.halt_punkt_id_von as haltepunkt_ID,
	fsi.fahrweg_id, 
    fsi.datumzeit_ist_an_von ,
    fsi.datumzeit_soll_an_von ,
    fsi.datumzeit_soll_ab_von, 
    fsi.seq_von,
     fsi.seq_nach,
    Timestampdiff (second, datumzeit_soll_an_von,datumzeit_ist_an_von) as delay
from
    vbzdat.fahrzeiten_soll_ist fsi
   where fsi.linie =2 and fsi.seq_von =1
   
   union 
   
   select
	
	fsi.halt_punkt_id_nach as haltepunkt_ID,
	fsi.fahrweg_id, 
    fsi.datumzeit_ist_an_nach ,
    fsi.datumzeit_soll_an_nach ,
    fsi.datumzeit_soll_ab_nach, 
    fsi.seq_von,
     fsi.seq_nach,
    Timestampdiff (second, datumzeit_soll_an_nach,datumzeit_ist_an_nach) as delay
from
    vbzdat.fahrzeiten_soll_ist fsi
   where fsi.linie =2 ;
   