# vbz_Datenbank_Migration
Analyse der Fahrzeiten 2020 der VBZ im SOLL-IST-Vergleich


**Aufgabe6**
Bereinigung der Tabellen und Constraints

Bei der Bereinigung der Tabellen geht es um das Hinzufügen von Primärschlüsseln und die Verwendung der korrekten Datentypen (zum Beispiel für Date).

Link:

[ERD View](https://github.com/akilicaslan/vbz_Datenbank_Migration/tree/main/Bilder/Aufgabe6_ERD.bmp)

Schritt 4:

[ERD](https://github.com/akilicaslan/vbz_Datenbank_Migration/tree/main/Bilder/Aufgabe6_ERD_Schritt4.bmp)


**Aufgabe7**

Erstellen Sie eine Abfrage, welche die Zeitdifferenzen anzeigt. Für die Zeitdifferenzen sollen nur die von-Zeiten betrachtet werden. Für die Linie 2 und Datum 26.12.2020 und der Fahrt ID 700

Link:

[SQL Script Aufgabe 7](https://github.com/akilicaslan/vbz_Datenbank_Migration/tree/main/Scripts/aufgabe7.sql)

[linie2_aufgabe7](https://github.com/akilicaslan/vbz_Datenbank_Migration/tree/main/Bilder/linie2_aufgabe7.jpg)



**Aufgabe8**

Aufgabe a: Linien-Abfrage

Die Abfrage soll fahrweg_id, linie, richtung, Fahrwegnummer (fw_no) und die Fahrwegbezeichnung (fw_lang) enthalten.

[SQL Script Aufgabe 8](https://github.com/akilicaslan/vbz_Datenbank_Migration/tree/main/Scripts/aufgabe8.sql)


Aufgabe: b Erstellen einer View

[View linie](https://github.com/akilicaslan/vbz_Datenbank_Migration/tree/main/Bilder/linie.jpg)



Erstellen Sie aus der Abfrage eine View query_line


Aufgabe c: Erstellen einer neuen Tabelle Linie mit Hilfe einer Abfrage
Erstellen Sie ein Skript mit einer Tabellenerstellungsabfrage create_line_table. Lesen Sie dazu die Hilfe:

Link:
[View query_view](https://github.com/akilicaslan/vbz_Datenbank_Migration/tree/main/Bilder/query_line.jpg)



**Aufgabe9**
Ankunftszeiten Tabelle

Es soll aus der fahrzeiten_soll_ist Tabelle eine vereinfachte Tabelle Ankunftszeiten erstellt werden

A)

[table ankunftszeiten](https://github.com/akilicaslan/vbz_Datenbank_Migration/tree/main/Bilder/aufgabe9_ankunftszeiten.jpg)

B)

[erd ankunftszeiten](https://github.com/akilicaslan/vbz_Datenbank_Migration/tree/main/Bilder/aufgabe9_ankunftszeiten_erd.png)


[SQL Script Aufgabe 09](https://github.com/akilicaslan/vbz_Datenbank_Migration/tree/main/Scripts/aufgabe9a.sql)

**Aufgabe10**
Verspätungsliste pro Linie

Ermitteln Sie für eine Line (zum Beispiel Linie 9) eine Liste mit den 20 grössten Verspätungen. Die Liste (Abfrage) soll folgende Angaben enthalten:

[verspaetungen](https://github.com/akilicaslan/vbz_Datenbank_Migration/tree/main/Bilder/aufgabe10.png)

[verspaetungen_tabelle](https://github.com/akilicaslan/vbz_Datenbank_Migration/tree/main/Bilder/verspaetung_20.jpg)


[SQL Script Aufgabe 10](https://github.com/akilicaslan/vbz_Datenbank_Migration/tree/main/Scripts/aufgabe10.sql)


**Aufgabe11**
Graphische Visualisierung einer Linie

Ermitteln Sie über die Geokoordinaten eine graphische Visualisierung einer Linie. Sie können dazu die Anwendung unter https://maps.co/gis/ verwenden.
Exportieren Sie Ihre Daten in ein CSV Format gemäss folgendem Muster:
lat,lng,name,color,note 25.767368,-80.1893,Miami,#ff0000,Miami 34.088808,-118.40612,Los Angeles,#00FF00,The city of Angels.


[SQL Script Aufgabe 11](https://github.com/akilicaslan/vbz_Datenbank_Migration/tree/main/Scripts/aufgabe11.sql)


**Aufgabe12**
Extrahieren Sie aus der Tabelle Ankunftszeiten die Soll-Abfahrtszeiten für eine Linie für einen bestimmten Tag. Die notwendigen Angaben sind in fahrt_id, datum und linie.
Die Abfrage soll die Haltestellen und die Uhrzeit pro Linie sortiert nach fahrt_id und Uhrzeit (ohne Datum) anzeigen:

[SQL Script Aufgabe 12](https://github.com/akilicaslan/vbz_Datenbank_Migration/tree/main/Scripts/aufgabe12.sql)


**Aufgabe13**
Wählen Sie eine GEO-Koordinate in Zürich. Ermitteln Sie eine Liste mit den 4 nächsten Stationen zu Ihrer Geokoordinate. Visualisieren Sie Ihren Standort und die 4 nächsten Stationen mit Hilfe von https://maps.co/gis/.
Erstellen Sie eine Abfrage. Sie können die gewählte Geokoordinate direkt als Wert in der Abfrage verwenden.


[SQL Script Aufgabe 13](https://github.com/akilicaslan/vbz_Datenbank_Migration/tree/main/Scripts/aufgabe13.sql)


**Aufgabe14**

Berechnen Sie für eine Linie die Distanz zwischen 2 Haltestellen. Sortieren Sie die Abfrage aufsteigend nach Distanz.


[SQL Script Aufgabe 14](https://github.com/akilicaslan/vbz_Datenbank_Migration/tree/main/Scripts/aufgabe14.sql)


[tabelle aufgabe14](https://github.com/akilicaslan/vbz_Datenbank_Migration/tree/main/Bilder/aufgabe14.jpg)







