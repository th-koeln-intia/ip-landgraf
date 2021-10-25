

# [MaxMax](https://ip-landgraf.intia.de)
MaxMax ist ein mittels [Rhasspy](https://github.com/rhasspy/rhasspy) umgesetzter offlinefähiger Open Source-Sprachassistent für den Einsatz durch vulnerablen Personengruppen in Wohn-, Lehr-, Pflege-, Förder- oder Betreungsmaßnahmen. <br />
Er wurde im Rahmen eines Praxisprojektes an der [TH-Köln](https://www.th-koeln.de/) für das Forschungsprojekt [INTIA](https://dites.web.th-koeln.de/forschung/projekte/intia/) entwickelt.

![](/docs/assets/images/maxmax-teaserimage.png)

# Installation mittels Image-Datei
Das komprimierte Image vom Sprachassistenten MaxMax kann [hier](https://drive.google.com/file/d/1rsfCCy5GsPeIJup7GpszWAbtiVu9NVtj/view?usp=sharing) runtergeladen werden.
Es muss dann erstmal entpackt werden. Dies kann, wenn nicht schon ein passendes Programm dem Computer installiert ist, zum Beispiel mit einem der folgenden kostenlosen Programmen erfolgen:
- [7-Zip](https://www.7-zip.de/)
- [WinRAR (40 Tage kostenloser Testzeitraum)](https://winrar.de/downld.php)

Mittels des [Raspberry Pi Imager](https://www.raspberrypi.org/software/) kann dann das entpackte Image auf eine SD Karte geschrieben werden.
Nach Abschluss des Schreibvorgangs muss die SD-Karte nur noch in den Raspberry Pi gesteckt werden und der Pi mit der [angeschlossenen benötigten Hardware](https://ip-landgraf.intia.de/pages/installation/Hardware.html) gestartet werden. Nach einer kurzen Wartezeit ist eine Willkommensnachricht von MaxMax zu hören.

# Installation mittels Shell-Script
Um MaxMax manuell zu installieren muss zuerst auf dem Raspberry Pi das Raspberry Pi OS Betriebssystem installiert sein. <br />

In manchen Raspberry Pi-Paketen ist es vorab schon auf der Micro SD Karte installiert, ansonsten kann man es mittels [Raspberry Pi Imager](https://www.raspberrypi.org/software/) installiert werden.
Sobald das Betriebssystem auf der Micro SD Karte vorhanden ist, kann es losgehen:
Die Karte muss in den Raspberry Pi gesteckt werden. Um ihn bedienen zu können empfiehlt es sich einen Bildschirm, eine Tastatur und eine Maus angeschlossen zu haben. <br /> <br />(Nicht Notwendig: Um in Zukunft den Raspberry Pi ohne Bildschirm, Tastatur und Maus zu bedienen, kann beim ersten Starten nach der Einrichtungskonfiguration [SSH](/ersteSchritte#per-ssh---bedienung-ausschließlich-über-terminal) und [VNC](/ersteSchritte#per-vnc---bedienung-mit-benutzeroberfläche) eingerichtet werden.) <br />
<br />
Beim ersten Starten des Raspberry Pi wird automatisch eine Einrichtungskonfiguration geöffnet. Dieser kann gefolgt werden. <br />
Wichtig für die MaxMax Installation ist:

- es besteht eine Internetverbindung
- der Raspberry Pi ist auf dem neusten Stand 
- es wird empfohlen, ein neues Passwort zu bestimmen

Wenn die Einrichtungskonfiguration abgeschlossen ist, sollte der Raspberry Pi einmal neugestartet werden (Darauf weißt die Einrichtungskonfiguration am Ende ebenfalls hin).<br />
Nach dem Neustart des Raspberry Pi muss das [Terminal](/glossar#terminal) (Viertes Symbol oben links) geöffnet werden. <br />

Zum Runterladen des Installations-Scripts kann dann folgende Anweisung in das [Terminal](/glossar#terminal) eingegeben werden:

```shell
wget https://raw.githubusercontent.com/th-koeln-intia/ip-landgraf/main/install/install.sh
```

Damit die Konfigurationen und alle sonst auf dem Raspberry Pi von MaxMax benötigte Software runtergeladen wird, muss das Script nun ausgeführt werden. Der Vorgang kann eine Weile dauern (ca. 10 - 15 Minuten). Die Befehle sind:

```shell
chmod 777 install.sh
sudo ./install.sh
```
<br />

Wenn das Script vor Ablauf anhalten sollte, kann es mit folgendem Befehl fortgesetzt werden: <br />

```shell
fg 1
```

Am Ende des Vorgangs startet der Raspberry Pi automatisch einmal neu. <br /> Um den Sprachassistent MaxMax nun zu starten muss man in den Ordner mit dem Namen "MaxMax" gehen (Dieser befindet sich in dem Ordner von dem aus die install.sh ausgeführt wurde). Da der Befehl zum Starten von MaxMax wieder im [Terminal](/glossar#terminal) eingegeben werden muss, gibt es um zum Ordner zu gelangen zwei Möglichkeiten:

- Entweder man bewegt sich durch die Ordnerstruktur und wählt im "MaxMax"-Ordner im Reiter "Werkzeuge" den Punkt "Aktuellen Ordner im Terminal öffnen"  aus. <br />


- Oder man startet das [Terminal](/glossar#terminal) und gibt Folgendes ein:

```shell
cd MaxMax
```

Im richtigen Ordner sollte folgendes im [Terminal](/glossar#terminal) zu sehen sein <br />

```shell
pi@raspberrypi:~/MaxMax $
```


Nun kann mit diesem Befehl MaxMax gestartet werden:

```shell
sudo docker-compose up
```

Beim ersten Starten von MaxMax werden die Docker Images der einzelnen Komponenten runtergeladen. Der Vorgang kann dadurch eine Weile dauern (ca. 10 Minuten).<br />
Nach Ablauf ist eine Willkommensnachricht von MaxMax zu hören.

# Benutzung von MaxMax
Umgesetzte Skills können [hier](/pages/entwicklung/skills/) eingesehen werden.
Informationen zur weiteren Nutzung und Konfiguartion von MaxMax und seiner Bestandteile können [hier](/ersteSchritte.md) eingesehen werden. 