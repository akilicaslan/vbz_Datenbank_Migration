SELECT DISTINCT
fsi.linie,
fsi.richtung,
fsi.fw_no,
fsi.fw_lang
FROM farhzeiten_soll_ist fsi
WHERE fsi.linie = 2;

create view query_line
as select DISTINCT 
fsi.fahrweg_id,
fsi.linie,
fsi.richtung,
fsi.fw_no,
fsi.fw_lang
from fahrzeiten_soll_ist fsi
where fsi.linie = 2;



