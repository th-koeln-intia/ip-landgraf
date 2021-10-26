---
layout: default
parent: Vorgehen in der Entwicklung
title: Entscheidungsfindung
nav_order: 2
---


# Entscheidungsfindung - Technologie:
Ergebnis der Analyse war die Wahl des Frameworks "[Rhasspy](https://rhasspy.readthedocs.io/en/latest/)" und das Arbeiten mit dem Container-Dienst "[Docker](https://www.docker.com/)". <br/>
Diese Wahl ist darauf begründet, dass mit [Rhasspy](https://rhasspy.readthedocs.io/en/latest/) auf dem Raspberry Pi und in der Sprache "Deutsch" gute Ergebnisse erzielt werden konnten. <br/> Das Arbeiten mit Containern resultierte daraus, dass über das Nutzen von Images das spätere Bereitstellen der Software erleichtert werden kann. <br/> Außerdem lässt sich dort relativ einfach mit festgelegten Versionen von Software arbeiten. <br/> Dadurch kann verhindert werden, dass der Sprachassistent zu einem späteren Zeitpunkt nicht mehr wie in der Entwicklung konfiguriert arbeitet oder gar überhaupt nicht mehr installierbar ist. <br/> <br/>
Die Aussicht war den festgelegten Anforderungen mit den gewählten Technologien bestmöglich gerecht zu werden und diese dadurch erfüllen zu können:


## Erste Iteration:
In der ersten Iteration wurde mit Containern von folgenden Diensten gearbeitet:
* Dem Sprachassistent [Rhasspy](https://rhasspy.readthedocs.io/en/latest/) 
* Der Nachrichten-Broker [Mosquitto](https://mosquitto.org/), der das MQTT-Protokoll ausführt
* Das Programmiert-Tool [Node-RED](https://nodered.org/), welches ermöglicht mit Flows, Nodes und der Scriptsprache Javascript die zu entwickelnden [Skills](/pages/entwicklung/skills) umzusetzen
* Die Musik-Abspiel-Anwendung [Music Player Daemon](https://www.musicpd.org/), mit welcher es möglich ist Radio-Webstreams auf dem Raspberry Pi wiederzugeben

### Images der auf dem Raspberry Pi laufenden Container:

| Name | Link auf Docker Hub | Verwendete Version | 
| :---- | :------------------- | :------------------- | 
| Mosquitto | [arm32v6/eclipse-mosquitto](https://hub.docker.com/r/arm32v6/eclipse-mosquitto) | 2.0.11 | 
| Node-Red | [nodered/node-red](https://hub.docker.com/r/nodered/node-red) | 2.0.6 |
| Music Player Daemon | [easypi/mpd-arm](https://hub.docker.com/r/easypi/mpd-arm) | latest |
| Rhasspy | [rhasspy/rhasspy](https://hub.docker.com/r/rhasspy/rhasspy) | 2.5.11 | 

### Verwendete Technologien innerhalb von Rhasspy:

| Bereich | Name der Technologie | 
| :------- | :-------------------- | 
| Audio Recording | [PyAudio](https://rhasspy.readthedocs.io/en/latest/audio-input/#pyaudio) | 
| Wake Word | [Raven](https://rhasspy.readthedocs.io/en/latest/wake-word/#raven) | 
| Speech to Text | [Mozilla DeepSpeech](https://github.com/mozilla/DeepSpeech) | 
| Deutsches Sprachmodell für Deepspeech |  [AASHISHAG's deepspeech-german](https://github.com/AASHISHAG/deepspeech-german) |
| Intent Recognition | [Fsticuffs](https://rhasspy.readthedocs.io/en/latest/intent-recognition/#fsticuffs) | 
| Text to Speech | [NanoTTS](https://github.com/gmn/nanotts) | 
| Audio Playing | [aplay](https://rhasspy.readthedocs.io/en/latest/audio-output/#alsa) | 
| Dialogue Management | [Rhasspy](https://rhasspy.readthedocs.io/en/latest/services/#dialogue-manager) | 
| MQTT | Extern (Läuft nicht im Rhasspy Container) - [Mosquitto](https://mosquitto.org/) | 


## Zweite Iteration:
Die Verwendung der Weckwort-Erkennung [Rhasspy Raven](https://rhasspy.readthedocs.io/en/latest/wake-word/#raven), welches darauf ausgelegt ist mit personalisierten Weckwörtern zu arbeiten, verlief nicht ideal. <br/>
Die Annahme war, dass durch das Nutzen von verschiedenen Stimmentypen (Junge Frau, Mittelalte Frau, Alte Frau, Junger Mann, Mittelalter Mann und Alter Mann) eine gute Erkennung von nicht eintrainierten Stimmen und Personen ermöglicht wird. <br/> Dies stellte sich allerdings als Fehlannahme heraus. Zusätzlich hatte [Rhasspy Raven](https://rhasspy.readthedocs.io/en/latest/wake-word/#raven) sogar Probleme von der Erkennung von Frauenstimmen die eigentlich eintrainiert waren. Hiermit konnten die [bestimmten Anforderungen](/pages/rahmenbedingung/anforderungen) nicht erfüllt werden. <br/>
Daraus resultierte die Wahl einer anderen Weckwort-Erkennung. Für das Projekt war es wichtig, ein bestimmtes Weckwort ("MaxMax") nutzen zu können. <br/> Gleichzeitig musste die Wahl trotzdem noch den Open-Source Aspekt des Projektes befriedigen. <br/> Durch Tests fiel die Wahl dann auf [Rhasspy Pocketsphinx](https://rhasspy.readthedocs.io/en/latest/speech-to-text/#pocketsphinx) welches zwar als besonders flexibel gilt, gleichzeitig aber im Vergleich zu anderen Lösungen nur eine moderate Leistung in der Erkennung bietet. <br/> In Wechselwirkung mit der Wahl des Weckwortes konnten hier trotzdem zufriedenstellende Ergebnisse erzielt werden. <br/>
Um verschiedene in den Anforderungen bestimmten [Skills](/pages/entwicklung/skills/) zu implementieren wurde im im Verlauf des Projektes die Nutzung von der Lampe und dem Erschütterungssensor nötig. <br/> Hierfür wurde zusätzlich noch die Verwendung eines Containers des Dienstes [zigbee2MQTT](https://www.zigbee2mqtt.io/) notwendig, um die externen Komponenten ansprechen zu können.

Die veränderten oder zusätzlich hinzugefügten Komponenten der zweiten Iteration sind hier gelb makiert:

### Images der auf dem Raspberry Pi laufenden Container:

| Name | Link auf Docker Hub | Verwendete Version | 
| :---- | :------------------- | :------------------- | 
| Mosquitto | [arm32v6/eclipse-mosquitto](https://hub.docker.com/r/arm32v6/eclipse-mosquitto) | 2.0.11 | 
| Node-Red | [nodered/node-red](https://hub.docker.com/r/nodered/node-red) | 2.0.6 |
| Music Player Daemon | [easypi/mpd-arm](https://hub.docker.com/r/easypi/mpd-arm) | latest |
| Rhasspy | [rhasspy/rhasspy](https://hub.docker.com/r/rhasspy/rhasspy) | 2.5.11 |
| **zigbee2mqtt**{: .text-yellow-000} | [koenkk/zigbee2mqtt](https://hub.docker.com/r/koenkk/zigbee2mqtt/){: .text-yellow-000} | **1.21.1**{: .text-yellow-000} | 

### Verwendete Technologien innerhalb von Rhasspy:

| Bereich | Name der Technologie | 
| :------- | :-------------------- | 
| Audio Recording | [PyAudio](https://rhasspy.readthedocs.io/en/latest/audio-input/#pyaudio) |
| **Wake Word**{: .text-yellow-000} | [Rhasspy Pocketsphinx](https://rhasspy.readthedocs.io/en/latest/speech-to-text/#pocketsphinx){: .text-yellow-000} | 
| Speech to Text | [Mozilla DeepSpeech](https://github.com/mozilla/DeepSpeech) | 
| Deutsches Sprachmodell für Deepspeech |  [AASHISHAG's deepspeech-german](https://github.com/AASHISHAG/deepspeech-german) |
| Intent Recognition | [Fsticuffs](https://rhasspy.readthedocs.io/en/latest/intent-recognition/#fsticuffs) | 
| Text to Speech | [NanoTTS](https://github.com/gmn/nanotts) | 
| Audio Playing | [aplay](https://rhasspy.readthedocs.io/en/latest/audio-output/#alsa) | 
| Dialogue Management | [Rhasspy](https://rhasspy.readthedocs.io/en/latest/services/#dialogue-manager) | 
| MQTT | External - [Mosquitto](https://mosquitto.org/) | 

# Entscheidungsfindung - Weckwort:
## Wie wurde der Name und das Weckwort "MaxMax" gewählt?
Viele Sprachassistenten arbeiten mit einem Namen als Weckwort. <br/> Dies ist gerade in der Projekt-[Domäne](/glossar#domäne) von großer Bedeutung (Siehe [nichtfunktionale Anforderungen](/pages/rahmenbedingung/anforderungen/nicht-funktionale): NF-020 bis NF-024), da es hilft einem sprechenden Gerät einen Namen zuordnen zu können um es zu personifizieren und damit als weniger abschreckend zu empfinden. <br/> Gleichzeitig sollte der Name des Sprachassistenten dem Weckwort entsprechen, um die späteren Nutzer nicht unnötig zu verwirren oder zu überfordern. <br/> Das Weckwort muss gut auszuprechen sein und auch von der Weckwort-Erkennung gut erkannt werden: <br/>
<br/>
Erste Überlegungen gingen dazu "Max" als Name und Weckwort zu verwenden. <br/> Gerade das "x" im Namen erzielt gute Erfolge in der Erkennung und kommt gleichzeitig in der deutschen Sprache nicht so oft vor. <br/> Jedoch gibt es den Namen "Max" in Deutschland doch häufiger, also war dies keine entgültige Lösung. <br/>
<br/>
Durch die Wiederholung des Namen ("MaxMax") konnten im Test gute Erkennungs-Erfolge (gerade mit [Rhasspy Pocketsphinx](https://rhasspy.readthedocs.io/en/latest/speech-to-text/#pocketsphinx)) erzielt werden und es war ein Weckwort geschaffen, was so im deutschen Sprachgebrauch nicht vorkommt. <br/>
Gleichzeitig lässt sich das Weckwort gut aussprechen und es ähnelt dem Wort "Mama", was eines der ersten Wörter ist welches Kleinkinder in Deutschland lernen. 

![](/assets/images/maxmax-logo.png)


