---
layout: default
parent: Projekthistorie
title: Stand 17.08
nav_order: 5
has_toc: false
---


# Stand vom 17.08.2021:
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
| **Wake Word**{: .text-yellow-000} | **Rhasspy Pocketsphinx**{: .text-yellow-000} | **Kein False Negativ mehr, dafür gelegentliche False Positiv wenn es in der Umgebung Lärm Quellen gibt!**{: .text-yellow-000} |
| Speech to Text | Mozilla Deepspeech (deutsch) | [Verwendung von AASHISHAG's deepspeech-german v0.9.0](https://github.com/AASHISHAG/deepspeech-german)
| Intent Recognition | Fsticuffs | |
| Text to Speech | NanoTTS | |
| Audio Playing | aplay | |
| Dialogue Management | Rhasspy | |
| MQTT | External - Mosquitto | |

## Erreichungsgrad der Anforderungen

| Identifikator | Beschreibung                                                                                                                        | Erreichungsgrad                                                                                                          |
| ------------- | ----------------------------------------------------------------------------------------------------------------------------------- | :----------------------------------------------------------------------------------------------------------------: |
| NF-001        | Das System soll auf einem Raspberry Pi 4 laufen                                                                               |**Wird Erfüllt**{: .label .label-green }  |
| NF-002        | Das System muss über ein Mikrophon verfügen                                                                                         |**Wird Erfüllt**{: .label .label-green }  |
| NF-003        | Das System muss über Lautsprecher verfügen                                                                                          |**Wird Erfüllt**{: .label .label-green }  |
| NF-004        | Das System soll über eine verbundene steuerbare Lampe verfügen                                                                      |**Wird nicht Erfüllt**{: .label .label-red }  |
| NF-005        | Das System soll über einen verbunden Erschütterungssensor verfügen                                                                  |**Wird nicht Erfüllt**{: .label .label-red }  |
| NF-006        | Das System soll über einen verbunden Bewegungssensor verfügen                                                                       |**Wird nicht Erfüllt**{: .label .label-red }  |
| NF-007        |                                                                                                                                     |                                                                                                                  |
| NF-008        |                                                                                                                                     |                                                                                                                  |
| NF-009        |                                                                                                                                     |                                                                                                                  |
| NF-010        | Das System muss ein Sprachassistent sein                                                                                            |**Wird Erfüllt**{: .label .label-green }  |
| NF-011        | Das System muss datenschutzkonform für die Verwendung in sozialen Einrichtungen sein                                                |**Wird Erfüllt**{: .label .label-green }  |
| NF-012        | Das System muss aus Open Source Komponenten bestehen                                                                                |**Wird Erfüllt**{: .label .label-green }  |
| NF-013        | Die Sprache-zu-Text Komponente soll auf die Sprache Deutsch ausgelegt sein                                                               |**Wird Erfüllt**{: .label .label-green }  |
| NF-014        | Das Feedback soll sich an Nutzer richten die der deutschen Sprache mächtig sind                                                          |**Wird Erfüllt**{: .label .label-green }  |
| NF-015        |                                                                                                                                     |                                                                                                                  |
| NF-016        |                                                                                                                                     |                                                                                                                  |
| NF-017        |                                                                                                                                     |                                                                                                                  |
| NF-018        |                                                                                                                                     |                                                                                                                  |
| NF-019        |                                                                                                                                     |                                                                                                                  |
| NF-020        | Das Wake Word soll leicht auszusprechen sein                                                                                        |**Wird Erfüllt**{: .label .label-green }  |
| NF-021        | Das Wake Word soll nicht regelmäßig im allgemeinen Sprachgebrauch von Deutschen vorkommen                                             |**Wird Erfüllt**{: .label .label-green }  |
| NF-022        | Das System soll nicht abschreckend wirken                                                                                           |**Wird teilweise Erfüllt**{: .label .label-yellow }  |
| NF-023        | Das System soll leicht zu bedienen und intuitiv sein                                                                                |**Wird teilweise Erfüllt**{: .label .label-yellow }  |
| NF-024        | Die Bedienung des Systems soll leicht zu erlernen sein                                                                              |**Wird Erfüllt**{: .label .label-green }  |
| NF-025        | Das System soll leicht zu installieren sein                                              |**Wird teilweise Erfüllt**{: .label .label-yellow }  |
| NF-026        |                                                                                                                                     |                                                                                                                  |
| NF-027        |                                                                                                                                     |                                                                                                                  |
| NF-028        |                                                                                                                                     |                                                                                                                  |
| NF-029        |                                                                                                                                     |                                                                                                                  |
| F-030         | Das System muss über mindestens ein Wake Word verfügen                                                                                         | **Wird Erfüllt**{: .label .label-green }  |
| F-031         | Das System muss Erkennen wenn das Wake Word gesagt wird                                                                             | **Wird Erfüllt**{: .label .label-green }  |
| F-032         | Das System muss Sprache in Text Umwandeln können                                                                                    | **Wird Erfüllt**{: .label .label-green }  |
| F-033         | Das System muss bei sprachlicher Nutzung des Wake Words die Sprache in Text Umwandlung starten                                      | **Wird Erfüllt**{: .label .label-green }  |
| F-034         | Das System muss aus dem Text Befehle und Variablen ableiten können                                                                  | **Wird teilweise Erfüllt**{: .label .label-yellow }  |
| F-035         | Das System soll über Skills verfügen                                                                                                | **Wird Erfüllt**{: .label .label-green }  |
| F-036         | Das System muss anhand der erkannten Befehle den passenden Skill mit den erkannten Variablen ausführen können                       | **Wird Erfüllt**{: .label .label-green }  |
| F-037         | Das System muss im Anschluss an Sprachbefehl ein Feedback geben können                                                              |  **Wird Erfüllt**{: .label .label-green }  |
| F-038         | Das System soll ein Feedback geben das dem Nutzer klar macht ob der jeweilige Skill mit den übermittelten Variablen ausgeführt wird |  **Wird Erfüllt**{: .label .label-green }  |
| F-039         |                                                                                                                                     |                                                                                                                  |
| F-040         | Das System soll die aktuelle Uhrzeit in Deutschland kennen                                                                          | **Wird Erfüllt**{: .label .label-green }  |
| F-041         | Das System soll über einen Skill verfügen der die aktuelle Uhrzeit in Deutschland ansagen kann                                      | **Wird Erfüllt**{: .label .label-green }  |
| F-042         | Das System soll in der Lage sein einen Timer Befehl mit seinen variablen Timerzeiten zu erkennen                                    | **Wird Erfüllt**{: .label .label-green }  |
| F-043         | Das System soll in der Lage sein einen Timer Skill mit einer bestimmten Timerzeiten zu starten                                      | **Wird Erfüllt**{: .label .label-green }  |
| F-044         | Das System soll in der Lage sein einen Wecker Befehl mit seinen variablen Weckuhrzeiten zu erkennen                                 | **Wird Erfüllt**{: .label .label-green }  |
| F-045         | Das System soll in der Lage sein einen Wecker Skill mit einer bestimmten Weckuhrzeiten zu starten                                   | **Wird Erfüllt**{: .label .label-green }  |
| F-046         | Das System soll in der Lage sein eine variable Erinnerungsnachricht bei Timer- oder Wecker Befehl zu verarbeiten                    | **Wird nicht Erfüllt**{: .label .label-red }  |
| F-047         | Das System soll in der Lage sein eine bestimmte Erinnerungsnachricht im Timer- oder Weckerskill abzulegen                           | **Wird nicht Erfüllt**{: .label .label-red }  |
| F-048         | Das System soll bei Ablauf eines Timers ein Feedback ggf. mit Erinnerungsnachricht geben                                            | **Wird teilweise Erfüllt**{: .label .label-yellow }  |
| F-049         | Das System soll bei Erreichen der Weckzeit ein Feedback ggf. mit Erinnerungsnachricht geben                                         | **Wird teilweise Erfüllt**{: .label .label-yellow }  |
|               |                                                                                                                                     |                                                                                                                  |
| F-050         | Das System soll über einen Skill verfügen der Wetterdaten und -vorhersagen geben kann                                               | **Wird Erfüllt**{: .label .label-green } |
| F-051         | Das System soll in der Lage sein zu verstehen für welchen Zeitraum und welches Postleitzahl-Gebiet die Wetterabfrage gilt           | **Wird teilweise Erfüllt**{: .label .label-yellow }  |
| F-052         | Das System soll ein Standard Postleitzahl-Gebiet hinterlegt haben, falls bei Anfragen keine Spezifikation von diesem erfolgt        | **Wird teilweise Erfüllt**{: .label .label-yellow }  |
| F-053         | Das System soll ein Standard Zeitraum hinterlegt haben, falls bei Anfragen keine Spezifikation von dieser erfolgt                   |  **Wird Erfüllt**{: .label .label-green } |
| F-054         | Das System soll den Nutzer ermöglichen das Standard Postleitzahl-Gebiet zu verändern                                                |**Wird teilweise Erfüllt**{: .label .label-yellow }  |
| F-055         | Das System soll zur Wetterabfrage eine geeignete Wissensquelle abfragen können                                                      | **Wird Erfüllt**{: .label .label-green }|
| F-056         |                                                                                                                                     |                                                                                                                  |
| F-057         |                                                                                                                                     |                                                                                                                  |
| F-058         |                                                                                                                                     |                                                                                                                  |
| F-059         |                                                                                                                                     |                                                                                                                  |
| F-060         | Das System soll über eine Skill verfügen der bei einer Stillenphase (Mittagsruhe/Arbeitsruhe) unterstützend wirkt                   |  **Wird nicht Erfüllt**{: .label .label-red }  |
| F-061         | Das System soll in der Lage sein eine Stillephase in unterschiedlicher Länge durchzuführen                                          |  **Wird nicht Erfüllt**{: .label .label-red }  |
| F-062         | Das System soll die Lautstärke in seiner Umgebung messen können                                                                     | **Wird nicht Erfüllt**{: .label .label-red }  |
| F-063         | Das System soll während einer Stillephase Feedback geben sobald eine gewisse Lautstärke überschritten ist                           | **Wird nicht Erfüllt**{: .label .label-red }  |
| F-064         | Das Feedback in der Stillephase soll nicht ablenkend wirken und die Stillephase unterstützen                                        | **Wird nicht Erfüllt**{: .label .label-red }  |
| F-065         |                                                                                                                                     |                                                                                                                  |
| F-066         |                                                                                                                                     |                                                                                                                  |
| F-067         |                                                                                                                                     |                                                                                                                  |
| F-068         |                                                                                                                                     |                                                                                                                  |
| F-069         |                                                                                                                                     |                                                                                                                  |
| F-070         | Das System soll über einen Skill Aufpassskill verfügen                                                                              | **Wird nicht Erfüllt**{: .label .label-red }  |
| F-071         | Der Aufpassskill soll eine Lichtschranke und/oder einen Erschütterungssensor aktivieren und bei Auslösen ein Feedback geben            | **Wird nicht Erfüllt**{: .label .label-red }  |
| F-072         | Der Betreuer einer Maßnahme sollen in der Lage sein den Aufpassskill zu aktivieren und zu deaktivieren                              | **Wird nicht Erfüllt**{: .label .label-red }  |
| F-073         | Die Teilnehmer einer Maßnahme sollen in der Lage sein den Aufpassskill zu aktivieren                                                | **Wird nicht Erfüllt**{: .label .label-red }  |
| F-074         | Der Aufpassskill soll als zusätzliche Sicherheit dienen und die Betreuer dazu animieren bei Feedback mal nach der Lage zu schauen   |  **Wird nicht Erfüllt**{: .label .label-red }  |
| F-075         | Das Feedback des Aufpassskills sollte in Bezug auf Fehlalarme und Ablenkung nicht störend sein                                      |  **Wird nicht Erfüllt**{: .label .label-red }  |


