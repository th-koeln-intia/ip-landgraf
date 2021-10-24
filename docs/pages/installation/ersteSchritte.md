---
layout: default
title: erste Schritte
parent: Installation
nav_order: 4
---

# Erste Schritte
## MaxMax benutzen:
Nachdem MaxMax nun eingeschaltet ist, können Sprachbefehle genutzt werden. Eine Aufzählung der umgesetzten Funktionen oder "Skills" kann [hier](/pages/entwicklung/skills) eingesehen werden.

## MaxMax einschalten:
Im MaxMax-Verzeichnis kann man den Sprachassistent mit folgendem Befehl einschalten:

```shell
sudo docker-compose up
```

Danach zeigt das [Terminal](/glossar#terminal) Statusnachrichten zu MaxMax an und lässt sich nicht mehr bedienen. Falls man dann das [Terminal](/glossar#terminal) schließt bleibt MaxMax eingeschaltet. 
Wenn man ein [Terminal](/glossar#terminal) braucht, kann man einfach ein Neues öffnen. 
Falls man den Sprachassistent direkt enkoppelt von dem aktiven [Terminal](/glossar#terminal) starten möchte, muss man einfach ein `-d` an den Befehl hängen:

```shell
sudo docker-compose up -d
```

Wichtig anzumerken ist, dass MaxMax auch nach einem Neustart des Raspberry Pi eingeschaltet bleibt bzw. mit neu gestartet wird. Möchte man dies verhindern muss man MaxMax manuell beenden:

## MaxMax ausschalten:
Im MaxMax-Verzeichnis kann man den Sprachassistent mit folgendem Befehl ausschalten:

```shell
sudo docker-compose down
```


## Den Raspberry Pi einschalten:
Um den Raspberry Pi einzuschalten genügt es das Netzkabel einzustecken.
Hat man den Raspberry Pi beendet und das Kabel steckt noch im Anschluss muss man zum Einschalten das Kabel entfernen, kurz warten und es wieder einstecken.

## Den Raspberry Pi ausschalten:
Den Raspberry Pi kann man über die Benutzeroberfläche ausschalten: <br />

![](/assets/images/poweroff1.png) <br />
![](/assets/images/poweroff2.png) <br />

Im [Terminal](/glossar#terminal) kann man den Raspberry Pi mit folgenden Befehlen ausschalten:

```shell
poweroff
```

oder

```shell
shutdown
```

## Dem Raspberry Pi mit dem Internet verbinden:
Den Raspberry Pi kann man über die Benutzeroberfläche mit dem Internet verbinden: <br />

![](/assets/images/wlan1.png) <br />

Im [Terminal](/glossar#terminal) kann man den Raspberry Pi mit folgendem Befehl mit einem Netzwerk verbinden:

```shell
sudo nmcli --ask dev wifi connect SSID-NETZWERK
```

Hierbei muss "SSID-NETZWERK" mit der SSID des gewünschten Netzwerks ersetzt werden.
Nach Eingabe des Befehls wird nach dem Passwort des Netzwerks gefragt.

# Zugriff von außen:

<div class="labels" markdown="1">
wird nur für fortgeschrittene Benutzer empfohlen!
{: .label .label-yellow }
</div>

## MaxMax von einem anderen Computer erreichen:

Sofern MaxMax mit einem Netzwerk verbunden ist, kann man sich mit einem Gerät im selben Netzwerk über den Webbrowser mit den unterliegenden Services von MaxMax verbinden.
Sie sind unter folgenden Adressen erreichbar:

| Rhasspy: | [http://raspberrypi:12101](http://raspberrypi:12101) |
| Node-Red | [http://raspberrypi:1880](http://raspberrypi:1880) |



Der unterliegende MQTT-Broker Mosquitto kann unter dieser Adresse angesprochen werden:

| MQTT-Broker |	[mqtt://raspberrypi:1883](mqtt://raspberrypi:1883) |

## Den Raspberry Pi von einem anderen Computer erreichen:
Es gibt viele Möglichkeiten von außen auf den Raspberry Pi zuzugreifen. In der Entwicklung von MaxMax kamen vorallem die zwei Varianten SSH und VNC zum Einsatz.
Erst einmal muss man in den Einstellungen des Raspberry Pi unter "Schnittstellen" die Nutzung von SSH und VNC erlaubt werden wenn man diese nutzen möchte: <br />

![](/assets/images/sshvnc2.png) <br />
![](/assets/images/sshvnc3.png) <br />

Falls MaxMax mit der Image-Datei installiert wurde sind die SSH und VNC Schnittstelle bereits erlaubt. 

### Per SSH - Bedienung ausschließlich über [Terminal](/glossar#terminal)
Man kann sich von jedem Gerät, dass über ein [Terminal](/glossar#terminal) verfügt und mit dem selben Netzwerk wie der Raspberry Pi verbunden ist, verbinden.  
Hierfür muss man folgenden Befehl verwenden:

```shell
ssh pi@raspberrypi.local
```

Hierbei steht das `pi` vor dem `@` für den Nutzer mit dem man sich anmelden möchte. Der Standart-Nutzer auf dem Raspberry Pi trägt den Namen `pi`.
`raspberrypi.local` kann man mit der IP-Adresse des Raspberry Pi im Netzwerk ersetzen.
Nach Eingabe des Befehls wird man nach dem Passwort des Benutzers gefragt:
- Falls MaxMax mit der Image-Datei installiert wurde ist das Passwort `maxmax1`. 
- Falls MaxMax manuell mit dem Shell-Script installiert wurde, muss hier das in der Einrichtungskonfiguration festgelegte Passwort angegeben werden.
- Standartmäßig ist das Passwort des Nutzers "pi" auf einem Raspberry Pi `raspberry`.

### Per VNC - Bedienung mit Benutzeroberfläche
Um sich per VNC zu verbinden wird eine externe Software benötigt. In der Entwicklung kam hier [VNC Viewer](https://www.realvnc.com/de/connect/download/viewer/) zum Einsatz. 
Bevor man sich mit dem Raspberry Pi verbinden kann, muss man VNC erst auf dem Raspberry Pi einschalten. Dies kann im Terminal mit folgendem Befehl erfolgen:

```shell
vncserver
```

![](/assets/images/vncserver1.png) <br />

Hier ist die Adresse markiert. Diese Adresse müssen sie nun auf dem Gerät von dem sie sich verbinden wollen in der Leiste des VNC Viewers eingeben: <br />

![](/assets/images/vncserver2.png) <br />


Bevor die Verbindung hergestellt wird, werden noch Benutzer und Passwort abgefragt: <br />

![](/assets/images/vncserver3.png) <br />

Der Standart-Nutzer auf dem Raspberry Pi trägt den Namen `pi`.
- Falls MaxMax mit der Image-Datei installiert wurde ist das Passwort `maxmax1`. 
- Falls MaxMax manuell mit dem Shell-Script installiert wurde, muss hier das in der Einrichtungskonfiguration festgelegte Passwort angegeben werden.
- Standartmäßig ist das Passwort des Nutzers "pi" auf einem Raspberry Pi `raspberry`.






