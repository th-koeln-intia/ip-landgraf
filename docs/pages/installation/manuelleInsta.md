---
layout: default
title: manuelle Installation
parent: Installation
nav_order: 3
---

# Installation per Shell-Script - Anleitung 

<div class="labels" markdown="1">
Onlineverbindung auf dem Raspberry Pi zum Runterladen und Installieren benötigt
{: .label .label-yellow }
</div>

Um MaxMax manuell zu installieren muss zuerst auf dem Raspberry Pi das Raspberry Pi OS Betriebssystem installiert sein: <br />

![](/assets/images/piosimage.png) <br />

In manchen Raspberry Pi-Paketen ist es vorab schon auf der Micro SD Karte installiert, ansonsten kann man es mittels [Raspberry Pi Imager](https://www.raspberrypi.org/software/) installiert werden: 

![](/assets/images/choseRaspOs.png) <br />

Sobald das Betriebssystem auf der Micro SD Karte vorhanden ist, kann es losgehen:
Die Karte muss in den Raspberry Pi gesteckt werden. Um ihn bedienen zu können empfiehlt es sich einen Bildschirm, eine Tastatur und eine Maus angeschlossen zu haben. <br /> <br />(Nicht Notwendig: Um in Zukunft den Raspberry Pi ohne Bildschirm, Tastatur und Maus zu bedienen, kann beim ersten Starten nach der Einrichtungskonfiguration [SSH](/ersteSchritte#per-ssh---bedienung-ausschließlich-über-terminal) und [VNC](/ersteSchritte#per-vnc---bedienung-mit-benutzeroberfläche) eingerichtet werden.) <br />
<br />
Beim ersten Starten des Raspberry Pi wird automatisch eine Einrichtungskonfiguration geöffnet. Dieser kann gefolgt werden. <br />
Wichtig für die MaxMax Installation ist:

- es besteht eine Internetverbindung
- der Raspberry Pi ist auf dem neusten Stand 
- es wird empfohlen, ein neues Passwort zu bestimmen

Wenn die Einrichtungskonfiguration abgeschlossen ist, sollte der Raspberry Pi einmal neugestartet werden (Darauf weißt die Einrichtungskonfiguration am Ende ebenfalls hin).<br />
Nach dem Neustart des Raspberry Pi muss das [Terminal](/glossar#terminal) (Viertes Symbol oben links) geöffnet werden: <br />

![](/assets/images/terminal1.png) <br />

Zum Runterladen des Installations-Scripts kann dann folgende Anweisung in das [Terminal](/glossar#terminal) eingegeben werden:

```shell
wget https://raw.githubusercontent.com/th-koeln-intia/ip-landgraf/main/scripts/install.sh
```

Damit die Konfigurationen und alle sonst auf dem Raspberry Pi von MaxMax benötigte Software runtergeladen wird, muss das Script nun ausgeführt werden. Der Vorgang kann eine Weile dauern (ca. 10 - 15 Minuten). Die Befehle sind:

```shell
chmod 777 install.sh
sudo ./install.sh
```
<br />
![](/assets/images/scriptHold.png) <br />

Wenn das Script wie auf dem Bild oben vor Ablauf anhalten sollte, kann es mit folgendem Befehl fortgesetzt werden: <br />

```shell
fg 1
```

Am Ende des Vorgangs startet der Raspberry Pi automatisch einmal neu. <br /> Um den Sprachassistent MaxMax nun zu starten muss man in den Ordner mit dem Namen "MaxMax" gehen (Dieser befindet sich in dem Ordner von dem aus die install.sh ausgeführt wurde). Da der Befehl zum Starten von MaxMax wieder im [Terminal](/glossar#terminal) eingegeben werden muss, gibt es um zum Ordner zu gelangen zwei Möglichkeiten:

- Entweder man bewegt sich durch die Ordnerstruktur und wählt im "MaxMax"-Ordner Folgendes aus: <br />

![](/assets/images/folder1.png)<br />
![](/assets/images/folder2.png)<br />
![](/assets/images/folder3.png)<br />
![](/assets/images/folder4.png)<br />


- Oder man startet das [Terminal](/glossar#terminal) (siehe oben) und gibt Folgendes ein:

```shell
cd MaxMax
```

Im richtigen Ordner sollte folgendes im [Terminal](/glossar#terminal) zu sehen sein: <br />

![](/assets/images/folder5.png) <br />

Nun kann mit diesem Befehl MaxMax gestartet werden:

```shell
sudo docker-compose up
```

Beim ersten Starten von MaxMax werden die Docker Images der einzelnen Komponenten runtergeladen. Der Vorgang kann dadurch eine Weile dauern (ca. 10 Minuten).<br />
Nach Ablauf ist eine Willkommensnachricht von MaxMax zu hören. Geschafft!

## Wie geht es weiter?
Informationen zur Nutzung und Konfiguartion von MaxMax und seiner Bestandteile sind im Bereich ["erste Schritte"](/ersteSchritte.md) zu finden. 