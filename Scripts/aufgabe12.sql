SELECT DISTINCT a.fahrt_id,
hs.halt_lang,
time(a.datumzeit_soll_ab_von) AS zeit

FROM ankuftszeiten_a a

INNER JOIN linie l ON a.fahrweg_id = l.fahrweg_id
INNER JOIN haltepunkt hp ON hp.halt_punkt_id = a.halt_punkt
INNER JOIN haltestelle hs ON hs.halt_id = hp.halt_id

WHERE date(a.datumzeit_soll_ab_von) '2020-02-02' AND l.linie = 2
ORDER BY a.fahrt_id AND zeit;