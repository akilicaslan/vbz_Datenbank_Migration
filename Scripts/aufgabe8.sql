use vbzdat;

SELECT DISTINCT
fsi.linie,
fsi.richtung,
fsi.fw_no,
fsi.fw_lang
FROM fahrzeiten_soll_ist fsi
WHERE fsi.linie = 2;


create table linie as
select DISTINCT 
fsi.fahrweg_id,
fsi.linie,
fsi.richtung,
fsi.fw_no,
fsi.fw_lang
from fahrzeiten_soll_ist fsi
where fsi.linie = 2;

alter table linie add (primary key(fahrweg_id));

create table linie_mit_view as
select * from query_line ql;

create or replace view query_line
as select DISTINCT 
fsi.fahrweg_id,
fsi.linie,
fsi.richtung,
fsi.fw_no,
fsi.fw_lang
from fahrzeiten_soll_ist fsi
where fsi.linie = 2;





