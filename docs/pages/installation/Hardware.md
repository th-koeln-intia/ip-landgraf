---
layout: default
title: Hardware-Einkaufsliste
parent: Installation
nav_order: 1
---

![](/assets/images/hardwareonimage.png)
<br />

# Was wird benötigt?
Der Sprachassistent "MaxMax" benötigt Hardware um laufen und seine ganze Funktionalität erfüllen zu können. Diese wird hier an der Stelle einmal mit Erklärung aufgeführt. Im Anschluss wird zur besseren Übersicht eine Aufzählung der empfohlenen Hardware im Sinne einer Einkaufsliste gegeben:

<br />
<br />

## Computer mit Netzteil
Als Grundlage wurde für das Projekt der Einplatinencomputer "Raspberry PI" genommen.
Entwickelt wurde das System auf einem Raspberry PI 4 B mit 8GB Ram, es wurde jedoch auch auf einem Raspberry PI 3 B mit 1GB Ram getestet und läuft auf diesem. Hierrauf ist aber mit längeren Feedback-Zeiten zu rechnen.

<br />
![](/assets/images/piimage.png)

<br />

## Festplatte
Damit die Daten von MaxMax installiert werden können, braucht es eine Festplatte/Speichermedium.
Als Speichermedium kommt bei einem Raspberry PI Model 3 und 4 eine Micro SD Karte zum Einsatz. Im Projekt wurde mit 32GB Karten gearbeitet. Es können aber alle Karten ab 16 GB aufwärts benutzt werden. Zur besseren Instalation wird Empfohlen eine Micro SD Karte mit SD Adapter (Gibt es häufig im Doppelpack) oder sich den Adapter für Micro SD auf SD zusätzlich zu besorgen.

<br />
![](/assets/images/sdimage.png)

<br />

## Mikrofon
Damit MaxMax zuhören kann, braucht es ein Mikrofon.
Als Mikrofon kam der ReSpeaker 4-Mic Array zum Einsatz mit guter Leistung auch bei Sprachbefehlen von etwas weiter weg.

<br />
![](/assets/images/micimage.png)

<br />

## Lautsprecher 
Damit MaxMax antworten kann, braucht es einen Lautsprecher. 
Im Projekt wurde mit den Logi Stereo Lautsprecher Z120 gearbeitet. Dieser benötigt zur Stromversorgung einen der USB-Anschlüsse des Raspberry PIs und die Klangqualität ließ Luft nach oben, für unser Projekt war er jedoch absolut ausreichend.
Es kann jeder Lautsprecher mit einem 3,5 mm Klinkenstecker (Der Raspberry PI verfügt über einen Aux-Eingang) benutzt werden. 

<br />
![](/assets/images/auximage.png)

<br />

## ZigBee USB-Stick
Damit MaxMax sich mit der Lampe und dem Erschütterungssensor verbinden kann, braucht es einen ZigBee USB-Stick mit Firmware.
Im Projekt wurde mit dem CC2531 ZigBee USB-Stick gearbeitet. Zu empfehlen ist es sich gleich einen Stick mit vorinstallierter Firmware zu besorgen, da das selber "flashen" sehr aufwendig und kompliziert ist.

<br />
![](/assets/images/zigbeeimage.png)

<br />

## Lampe 
Damit MaxMax Licht-Feedback (benötigt für Lampen-, Aufpass- und Stilleskill) geben kann, braucht es eine ansteuerbare Lampe.
Im Projekt wurde mit der tint LED-Birnenform white+color (Artikel-Nr.: 404000) von Müller-Licht gearbeitet. 
<br />
![](/assets/images/lampimage.png)
<br />

## Erschütterungssensor
Damit MaxMax Erschütterungen wahrnehmen (benötigt für den Aufpassskill) kann, braucht es einen externen Erschütterungssensor.
Im Projekt wurde mit dem Aqara Vibrationssensor (Artikel-Nr.: DJT11LM) von Xiaomi gearbeitet. 
<br />
![](/assets/images/sensorimage.png)
<br />
<br />
<br />
![](/assets/images/hardwareimage.png)

# Einkaufsliste - empfohlenen Hardware

## Für Grundfunktionalität benötigt:
- Raspberry PI 4 B mit mindestens 2 GB Ram
- 32GB Micro SD Karte mit SD Adapter
- ReSpeaker 4-Mic Array
- Lautsprecher mit 3,5 mm Klinkenstecker

## Für Lampen-, Aufpass- und Stilleskill benötigt:
- CC2531 ZigBee USB-Stick mit vorinstallierter Firmware
- tint LED-Birnenform white+color (Artikel-Nr.: 404000) von Müller-Licht
- Aqara Vibrationssensor (Artikel-Nr.: DJT11LM) von Xiaomi