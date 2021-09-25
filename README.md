# vbz_Datenbank_Migration
Analyse der Fahrzeiten 2020 der VBZ im SOLL-IST-Vergleich


**Aufgabe6**
Aufgabe 6: Bereinigung der Tabellen und Constraints

Bei der Bereinigung der Tabellen geht es um das Hinzufügen von Primärschlüsseln und die Verwendung der korrekten Datentypen (zum Beispiel für Date).

Link:

![ERD](https://github.com/akilicaslan/vbz_Datenbank_Migration/tree/main/Bilder/Aufgabe6.bmp)

Schritt 4:

![ERD](https://github.com/akilicaslan/vbz_Datenbank_Migration/tree/main/Bilder/Aufgabe6.bmp)


**Aufgabe7**
Aufgabe 7: Erstellen Sie eine Abfrage über Zeitdifferenzen

Erstellen Sie eine Abfrage, welche die Zeitdifferenzen anzeigt. Für die Zeitdifferenzen sollen nur die von-Zeiten betrachtet werden.

Link:

[SQL Script Aufgabe 7](https://github.com/akilicaslan/vbz_Datenbank_Migration/tree/main/Scripts/aufgabe7.sql)

**Aufgabe8**
Aufgabe a: Linien-Abfrage
Die Abfrage soll fahrweg_id, linie, richtung, Fahrwegnummer (fw_no) und die Fahrwegbezeichnung (fw_lang) enthalten.

Aufgabe: b Erstellen einer View
Erstellen Sie aus der Abfrage eine View query_line


Aufgabe c: Erstellen einer neuen Tabelle Linie mit Hilfe einer Abfrage
Erstellen Sie ein Skript mit einer Tabellenerstellungsabfrage create_line_table. Lesen Sie dazu die Hilfe:

Link:

[SQL Script Aufgabe 7](https://github.com/akilicaslan/vbz_Datenbank_Migration/tree/main/Scripts/aufgabe8.sql)


**Aufgabe9**
Aufgabe 9: Ankunftszeiten Tabelle

Es soll aus der fahrzeiten_soll_ist Tabelle eine vereinfachte Tabelle Ankunftszeiten erstellt werden

A)


B)



**Aufgabe10**
Aufgabe 10: Verspätungsliste pro Linie
Ermitteln Sie für eine Line (zum Beispiel Linie 9) eine Liste mit den 20 grössten Verspätungen. Die Liste (Abfrage) soll folgende Angaben enthalten:




**Aufgabe11**
Aufgabe 11: Graphische Visualisierung einer Linie


Ermitteln Sie über die Geokoordinaten eine graphische Visualisierung einer Linie. Sie können dazu die Anwendung unter https://maps.co/gis/ verwenden.
Exportieren Sie Ihre Daten in ein CSV Format gemäss folgendem Muster:
lat,lng,name,color,note 25.767368,-80.1893,Miami,#ff0000,Miami 34.088808,-118.40612,Los Angeles,#00FF00,The city of Angels.










