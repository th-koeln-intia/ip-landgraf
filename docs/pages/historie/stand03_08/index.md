---
layout: default
parent: Projekthistorie
title: Stand 03.08
nav_order: 4
has_toc: false
---


# Stand vom 03.08.2021:
## Laufende Container auf Pi:

| Name | Link auf Docker Hub | 
| :---- | :------------------- | 
| Mosquitto | [arm32v6/eclipse-mosquitto](https://hub.docker.com/r/arm32v6/eclipse-mosquitto) | 
| Node-Red | [nodered/node-red](https://hub.docker.com/r/nodered/node-red) | 
| Music Player Daemon | [easypi/mpd-arm](https://hub.docker.com/r/easypi/mpd-arm) | 
| Rhasspy | [rhasspy/rhasspy](https://hub.docker.com/r/rhasspy/rhasspy) | 

## Verwendete Technologien innerhalb von Rhasspy:

| Bereich | Name der Technologie | Zustätzliche Bemerkung|
| :------- | :-------------------- | :--------------------- |
| Audio Recording | PyAudio | |
| Wake Word | Rhasspy Raven | Probleme mit Frauenstimmen! |
| Speech to Text | Mozilla Deepspeech (deutsch) | [Verwendung von AASHISHAG's deepspeech-german v0.9.0](https://github.com/AASHISHAG/deepspeech-german)
| Intent Recognition | Fsticuffs | |
| Text to Speech | NanoTTS | |
| Audio Playing | aplay | |
| Dialogue Management | Rhasspy | |
| MQTT | External - Mosquitto | |

## Bisher umgesetzte Skills:
- Informiert den Nutzer wenn er einen Befehl nicht verstanden hat -> NF-023, F-036, F-037, F-038
- Kann die aktuelle Uhrzeit ansagen -> F-040, F-041
- Kann einen Timer stellen und nach Ablauf alarmieren -> F-042, F-043, F-048
- Kann einen Wecker stellen und bei Erreichen alarmieren -> F-044, F-045, F-049
- Kann das aktuelle Wetter für eine der 701. größten Groß- und Mittelstädte ansagen ([Nutzung der Current Weather Data API von OpenWeather](https://openweathermap.org/current)) -> F-050, F-055
- Kann die Wiedergabe von bestimmten RadioWebStreams starten. Stoppen und Wechseln des Senders mit Einschränkungen!

## Zukunfsaussichten:
- ggf. WakeWord verbessern?
- Ausarbeiten und Verfeinern des Prototypen
- Upload des Codes vom Sprachassistenten und Komponenten auf GitHub
- Abschließen der Dokumentation 
- Vorbereitung der mediengestützten Präsentation 
- Mediengestützten Präsentation terminieren und halten (Frühstens Anfang September?)



