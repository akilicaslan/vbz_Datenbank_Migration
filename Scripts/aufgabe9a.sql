use vbzdat;

CREATE TABLE ankunftszeiten

SELECT

fsi.halt_punkt_id_von as haltepunkt_id,
fsi.fahrweg_id,fsi.fahrt_id,
fsi.datumzeit_ist_an_von as datumzeit_ist_an,
fsi.datumzeit_soll_an_von as datumzeit_soll_an,
fsi.datumzeit_soll_ab_von as datumzeit_soll_ab,

TIMESTAMPDIFF (SECOND, fsi.datumzeit_soll_an_von,fsi.datumzeit_ist_an_von) as delay

from fahrzeiten_soll_ist fsi where fsi.linie = 2 and fsi.seq_von = 1 

UNION 

select fsi.halt_punkt_id_nach as haltepunkt_id,

fsi.fahrweg_id,
fsi.fahrt_id,
fsi.datumzeit_ist_an_nach as datumzeit_ist_an,
fsi.datumzeit_soll_an_nach as datumzeit_soll_an,
fsi.datumzeit_soll_ab_nach as datumzeit_soll_ab,

TIMESTAMPDIFF (SECOND, fsi.datumzeit_soll_an_nach, fis.datumzeit_ist_an_nach) as delay

from fahrzeiten_soll_ist fsi 

where fsi.linie = 2;


alter table ankuftszeiten ADD id INT PRIMARY KEY auto_increment FIRST;
alter table ankuftszeiten add constraint fk1 foreign key  (haltepunkt_id)
references haltepunkt (halt_punkt_id);
alter table ankuftszeiten add constraint fk2 foreign key (fahrweg_id) 
references linie(fahrweg_id);
















