ALTER TABLE fahrzeiten_soll_ist ADD id INT PRIMARY KEY AUTO_INCREMENT FIRST;

ALTER TABLE fahrzeiten_soll_ist ADD CONSTRAINT fahrzeiten_soll_ist_FK FOREIGN KEY (halt_punkt_id_von) REFERENCES haltepunkt(halt_punkt_id);
ALTER TABLE fahrzeiten_soll_ist ADD CONSTRAINT fahrzeiten_soll_ist_FK_1 FOREIGN KEY (halt_punkt_id_nach) REFERENCES haltepunkt(halt_punkt_id);