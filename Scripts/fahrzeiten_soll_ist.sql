ALTER TABLE fahrzeiten_soll_ist ADD id INT PRIMARY KEY AUTO_INCREMENT FIRST;

ALTER TABLE fahrzeiten_soll_ist ADD CONSTRAINT fahrzeiten_soll_ist_FK FOREIGN KEY (halt_punkt_id_von) REFERENCES haltepunkt(halt_punkt_id);
ALTER TABLE fahrzeiten_soll_ist ADD CONSTRAINT fahrzeiten_soll_ist_FK_1 FOREIGN KEY (halt_punkt_id_nach) REFERENCES haltepunkt(halt_punkt_id);


ALTER TABLE fahrzeiten_soll_ist ADD betriebs_datum DATE NULL;
ALTER TABLE fahrzeiten_soll_ist ADD datumzeit_soll_an_von DATETIME NULL; 
ALTER TABLE fahrzeiten_soll_ist ADD datumzeit_ist_an_von DATETIME NULL; 
ALTER TABLE fahrzeiten_soll_ist ADD datumzeit_soll_ab_von DATETIME NULL; 
ALTER TABLE fahrzeiten_soll_ist ADD datumzeit_ist_ab_von DATETIME NULL; 
ALTER TABLE fahrzeiten_soll_ist ADD datum__nach DATE NULL;



UPDATE fahrzeiten_soll_ist SET betriebs_datum = STR_TO_DATE(betriebsdatum ,'%d.%m.%Y');

UPDATE fahrzeiten_soll_ist SET datumzeit_soll_an_von = DATE_ADD(STR_TO_DATE(datum_von
,'%d.%m.%Y'), INTERVAL soll_an_von SECOND);
 
UPDATE fahrzeiten_soll_ist SET datumzeit_ist_an_von = DATE_ADD(STR_TO_DATE(datum_von
,'%d.%m.%Y'), INTERVAL ist_an_von SECOND);
 
UPDATE fahrzeiten_soll_ist SET datumzeit_soll_ab_von = DATE_ADD(STR_TO_DATE(datum_von
 ,'%d.%m.%Y'), INTERVAL soll_ab_von SECOND);
 
UPDATE fahrzeiten_soll_ist SET datumzeit_ist_ab_von = DATE_ADD(STR_TO_DATE(datum_von
 ,'%d.%m.%Y'), INTERVAL ist_ab_von SECOND);

UPDATE fahrzeiten_soll_ist SET datum__nach =STR_TO_DATE(datum_nach ,'%d.%m.%Y');










