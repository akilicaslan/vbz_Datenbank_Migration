CREATE TABLE ankunftszeiten_a as(
SELECT DISTINCT

fsi.id,
fsi.fahrt_id,
haltepunkt.halt_punkt_id AS halt_punkt,
linie.fahrweg_id,
fsi.seq_von,
fsi.seq_nach,
fsi.datumzeit_ist_an_von,
fsi.datumzeit_soll_an_von,
fsi.datumzeit_soll_ab_von,
TIMESTAMPDIFF(SECOND, datumzeit_soll_an_von,datumzzeit_ist_an_von)
AS delay FROM fahrzeiten_soll_ist_ist fsi
INNER JOIN haltepunkt ON
haltepunkt.halt_punkt_id = fsi.halt_punkt_id_von
INNER JOIN linie ON linie.fahrweg_id =
fsi.fahrweg_id

WHERE fsi.seq_von = 1 AND fsi.linie = 3

UNION DISTINCT
SELECT DISTINCT fsi2.id,
fsi2.fahrt_id,
haltepunkt.halt_punkt_id AS halt_punkt,
linie.fahrweg_id,
fsi2.seq_von,
fsi2.seq_nach,
fsi.datumzeit_ist_an_von,
fsi.datumzeit_soll_an_von,
fsi.datumzeit_soll_ab_von,

timestampdiff (SECOND, datumzeit_soll_an_von, datumzeit_ist_an_von) AS delay
FROM fahrzeiten_soll_ist fsi2

INNER JOIN haltepunkt ON

haltepunkt.halt_punkt_id = fsi2.halt_punkt_id_nach

INNER JOIN linie ON linie.fahrweg = fsi2.fahrweg_id


WHERE fsi2.linie = 2);

ALTER TABLE ankuftszeiten_a ADD CONSTRAINT haltpunktfk FOREIGN KEY
(halt_punkt) REFERENCES haltepunkt(halt_punkt_id);

ALTER TABLE ankuftszeiten_a ADD CONSTRAINT haltpunktfk2 FOREIGN KEY
(fahrwerk_id) REFERENCES linie(fahrwerk_id);

ALTER TABLE ankuftszeiten_a ADD  art_pk_az int PRIMARY key
auto_increment NOT null;
