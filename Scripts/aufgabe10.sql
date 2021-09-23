SELECT

fsi.id,
hp.halt_punkt_id,
hs.halt_lang,
hp.gps_latitude,
hp.gps_longitude,
fsi.fahrwerk_id,
fsi.linie,
fsi.datumzeit_ist_an_von AS datumzeit_ist_an,
fsi.datumzeit_soll_an_von AS datumzeit_soll_an,
TIMESTAMPDIFF(SECOND, fsi.datumzeit_soll_an_von, fsi.datumzeit_ist_an_von) AS delay
FROM fahrzeiten_soll_ist fsi

INNER JOIN haltepunkt hp ON hp.halt_punkt_id = fsi.halt_punkt_id_von
INNER JOIN linie l ON l.fahrweg_id= fsi.fahrwerg_id
INNER JOIN haltestelle hs ON hs.halt_id = fsi.halt_id_von

WHERE fsi.linie = 2
ORDER BY delay DESC;

CREATE VIEW abfrage AS
SELECT
fsi.id,
hp.halt_punkt_id,
hs.halt_lang,
hp.gps_latitude,
hp.gps_longitude,
fsi.linie,
fsi.datumzeit_ist_an_von AS datumzeit_ist_an,
fsi.datumzeit_soll_an_von AS datumzeit_soll_an,
TIMESTAMPDIFF(SECOND, fsi.datumzeit_soll_an_von,fsi.datumzeit_ist_an_von) AS delay







