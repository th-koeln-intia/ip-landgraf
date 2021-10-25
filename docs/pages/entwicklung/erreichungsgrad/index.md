---
layout: default
parent: Vorgehen in der Entwicklung
title: Erreichungsgrad der Anforderungen
nav_order: 6
---


# Erreichungsgrad der Anforderungen
Hier finden sich die in den [Rahmenbedingungen](/pages/rahmenbedingung/) festgehaltene [Anforderungen](/pages/rahmenbedingung/anforderungen) mit ihrem zum Abschluss des Projektes beschriebenen Erreichungsgrad: <br/> <br/>
**Hervorzuheben ist, dass alle Muss-Anforderungen erfüllt sind.**{: .text-green-000} <br/> <br/> **Es wurde zwar versucht jeder Anforderung nach bestem Wissen und Gewissen gerecht zu werden und diese ideal zu befriedigen, aber bei manchen Anforderungen war es schwer im Nachhinein festzustellen ob sie nun erfüllt sind, da hier empirische Forschung benötigt werden würde um Aussagen über ihren entgültigen Erreichungsgrad treffen zu können:**{: .text-yellow-000}

* NF-021 bis NF-025

* F-074 und F-075

**Teilweise stellten sich manche Anforderungen in ihrer definierten Beschreibung als nicht erfüllbar heraus:**{: .text-yellow-000}

* F-046: Durch die Wahl der Technologie war es nicht möglich mit komplett individuellen Erinnerungsnachrichten zu arbeiten. <br/> Um hier trotzdem eine Annährung der Anforderung zu ermöglichen, wurde mit einem Pool an vorgefertigten Erinnerungsnachrichten gearbeitet. <br/> Es wurde in Rücksprache mit der Altenpflege-Mitarbeiterin versucht die herkömmlichen Gründe für einen Alarm oder Timer innerhalb der Domäne abzudecken.

* F-062 bis F-064: Es stellte sich während des Projektverlaufs heraus, dass der Begriff der umgangssprachlichen und in den Anforderungen gemeinten Lautstärke nicht aus dem Audio-Eingangssignal, welches im WAV-Format bereitgestellt wird, gewonnen werden kann. <br/> Hierbei wurde versucht sich den Anforderungen anzunähren in dem mit der RMS-Leistung gearbeitet wurde. <br/> Umgangssprachlich könnte man hier von der Unruhe im Audioeingangssignal sprechen. <br/> Das bedeutet, dass sobald ein Ton perfekt gehalten wird, kein Ausschlag mehr festzustellen ist ([Siehe Video Stillemodus bei 0:54](https://www.youtube.com/watch?v=w4Ok8G5Xfq4&t=54s)). <br/> Da dies allerdings innerhalb einer Ruhezeit in der Domäne so nicht vorkommen sollte, kann man davon sprechen, dass hier eine gute Annährung an die Anforderung trotz der falschen Bezeichnung geglückt ist. 

<br/>





## Auflistung

| Identifikator | Beschreibung                                                                                                                        | Erreichungsgrad                                                                                                          |
| ------------- | ----------------------------------------------------------------------------------------------------------------------------------- | :----------------------------------------------------------------------------------------------------------------: |
| NF-001        | Das System soll auf einem Raspberry Pi 4 laufen                                                                               |**Wird Erfüllt**{: .label .label-green }  |
| NF-002        | Das System muss über ein Mikrophon verfügen                                                                                         |**Wird Erfüllt**{: .label .label-green }  |
| NF-003        | Das System muss über Lautsprecher verfügen                                                                                          |**Wird Erfüllt**{: .label .label-green }  |
| NF-004        | Das System soll über eine verbundene steuerbare Lampe verfügen                                                                      |**Wird Erfüllt**{: .label .label-green }  |
| NF-005        | Das System soll über einen verbundenen Erschütterungssensor verfügen                                                                  |**Wird Erfüllt**{: .label .label-green }  |
| NF-006        | Das System soll über einen verbundenen Bewegungssensor verfügen                                                                       |**Wird nicht Erfüllt**{: .label .label-red }  |
|         |                                                                                                                                     |                                                                                                                  |
| NF-010        | Das System muss ein Sprachassistent sein                                                                                            |**Wird Erfüllt**{: .label .label-green }  |
| NF-011        | Das System muss datenschutzkonform für die Verwendung in sozialen Einrichtungen sein                                                |**Wird Erfüllt**{: .label .label-green }  |
| NF-012        | Das System muss aus Open Source Komponenten bestehen                                                                                |**Wird Erfüllt**{: .label .label-green }  |
| NF-013        | Die Sprache-zu-Text Komponente soll auf die Sprache Deutsch ausgelegt sein                                                               |**Wird Erfüllt**{: .label .label-green }  |
| NF-014        | Das Feedback soll sich an Nutzer richten die der deutschen Sprache mächtig sind                                                          |**Wird Erfüllt**{: .label .label-green }  |
|         |                                                                                                                                     |                                                                                                                  |
| NF-020        | Das Wake Word soll leicht auszusprechen sein                                                                                        |**Wird Erfüllt**{: .label .label-green }  |
| NF-021        | Das Wake Word soll nicht regelmäßig im allgemeinen Sprachgebrauch von Deutschen vorkommen                                             |**Wird Erfüllt**{: .label .label-green }  |
| NF-022        | Das System soll nicht abschreckend wirken                                                                                           |**Wird teilweise Erfüllt**{: .label .label-yellow }  |
| NF-023        | Das System soll leicht zu bedienen und intuitiv sein                                                                                |**Wird teilweise Erfüllt**{: .label .label-yellow }  |
| NF-024        | Die Bedienung des Systems soll leicht zu erlernen sein                                                                              |**Wird teilweise Erfüllt**{: .label .label-yellow } |
| NF-025        | Das System soll leicht zu installieren sein                                              |**Wird teilweise Erfüllt**{: .label .label-yellow }  |
|         |                                                                                                                                     |                                                                                                                  |
| F-030         | Das System muss über mindestens ein Wake Word verfügen                                                                                         | **Wird Erfüllt**{: .label .label-green }  |
| F-031         | Das System muss Erkennen wenn das Wake Word gesagt wird                                                                             | **Wird Erfüllt**{: .label .label-green }  |
| F-032         | Das System muss Sprache in Text Umwandeln können                                                                                    | **Wird Erfüllt**{: .label .label-green }  |
| F-033         | Das System muss bei sprachlicher Nutzung des Wake Words die Sprache in Text Umwandlung starten                                      | **Wird Erfüllt**{: .label .label-green }  |
| F-034         | Das System muss aus dem Text Befehle und Variablen ableiten können                                                                  | **Wird Erfüllt**{: .label .label-green }  |
| F-035         | Das System soll über Skills verfügen                                                                                                | **Wird Erfüllt**{: .label .label-green }  |
| F-036         | Das System muss anhand der erkannten Befehle den passenden Skill mit den erkannten Variablen ausführen können                       | **Wird Erfüllt**{: .label .label-green }  |
| F-037         | Das System muss im Anschluss an Sprachbefehl ein Feedback geben können                                                              |  **Wird Erfüllt**{: .label .label-green }  |
| F-038         | Das System soll ein Feedback geben das dem Nutzer klar macht ob der jeweilige Skill mit den übermittelten Variablen ausgeführt wird |  **Wird Erfüllt**{: .label .label-green }  |
|        |                                                                                                                                     |                                                                                                                  |
| F-040         | Das System soll die aktuelle Uhrzeit in Deutschland kennen                                                                          | **Wird Erfüllt**{: .label .label-green }  |
| F-041         | Das System soll über einen Skill verfügen der die aktuelle Uhrzeit in Deutschland ansagen kann                                      | **Wird Erfüllt**{: .label .label-green }  |
| F-042         | Das System soll in der Lage sein einen Timer Befehl mit seinen variablen Timerzeiten zu erkennen                                    | **Wird Erfüllt**{: .label .label-green }  |
| F-043         | Das System soll in der Lage sein einen Timer Skill mit einer bestimmten Timerzeiten zu starten                                      | **Wird Erfüllt**{: .label .label-green }  |
| F-044         | Das System soll in der Lage sein einen Wecker Befehl mit seinen variablen Weckuhrzeiten zu erkennen                                 | **Wird Erfüllt**{: .label .label-green }  |
| F-045         | Das System soll in der Lage sein einen Wecker Skill mit einer bestimmten Weckuhrzeiten zu starten                                   | **Wird Erfüllt**{: .label .label-green }  |
| F-046         | Das System soll in der Lage sein eine variable Erinnerungsnachricht bei Timer- oder Wecker Befehl zu verarbeiten                    | **Wird teilweise Erfüllt**{: .label .label-yellow }  |
| F-047         | Das System soll in der Lage sein eine bestimmte Erinnerungsnachricht im Timer- oder Weckerskill abzulegen                           | **Wird Erfüllt**{: .label .label-green }|
| F-048         | Das System soll bei Ablauf eines Timers ein Feedback ggf. mit Erinnerungsnachricht geben                                            | **Wird Erfüllt**{: .label .label-green }|
| F-049         | Das System soll bei Erreichen der Weckzeit ein Feedback ggf. mit Erinnerungsnachricht geben                                         | **Wird Erfüllt**{: .label .label-green }|
|               |                                                                                                                                     |                                                                                                                  |
| F-050         | Das System soll über einen Skill verfügen der Wetterdaten und -vorhersagen geben kann                                               | **Wird Erfüllt**{: .label .label-green } |
| F-051         | Das System soll in der Lage sein zu verstehen für welchen Zeitraum und welches Postleitzahl-Gebiet die Wetterabfrage gilt           | **Wird Erfüllt**{: .label .label-green }|
| F-052         | Das System soll ein Standard Postleitzahl-Gebiet hinterlegt haben, falls bei Anfragen keine Spezifikation von diesem erfolgt        | **Wird Erfüllt**{: .label .label-green }|
| F-053         | Das System soll ein Standard Zeitraum hinterlegt haben, falls bei Anfragen keine Spezifikation von dieser erfolgt                   | **Wird Erfüllt**{: .label .label-green } |
| F-054         | Das System soll den Nutzer ermöglichen das Standard Postleitzahl-Gebiet zu verändern                                                | **Wird Erfüllt**{: .label .label-green }|
| F-055         | Das System soll zur Wetterabfrage eine geeignete Wissensquelle abfragen können                                                      | **Wird Erfüllt**{: .label .label-green }|
|         |                                                                                                                                     |                                                                                                                  |
| F-060         | Das System soll über eine Skill verfügen der bei einer Stillephase (Mittagsruhe/Arbeitsruhe) unterstützend wirkt                   |  **Wird Erfüllt**{: .label .label-green }|
| F-061         | Das System soll in der Lage sein eine Stillephase in unterschiedlicher Länge durchzuführen                                          |  **Wird Erfüllt**{: .label .label-green }|
| F-062         | Das System soll die Lautstärke in seiner Umgebung messen können                                                                     | **Wird teilweise Erfüllt**{: .label .label-yellow }  |
| F-063         | Das System soll während einer Stillephase Feedback geben sobald eine gewisse Lautstärke überschritten ist                           | **Wird teilweise Erfüllt**{: .label .label-yellow }  |
| F-064         | Das Feedback in der Stillephase soll nicht ablenkend wirken und die Stillephase unterstützen                                        | **Wird teilweise Erfüllt**{: .label .label-yellow } |
|         |                                                                                                                                     |                                                                                                                  |
| F-070         | Das System soll über einen Skill Aufpassskill verfügen                                                                              | **Wird Erfüllt**{: .label .label-green }|
| F-071         | Der Aufpassskill soll eine Lichtschranke und/oder einen Erschütterungssensor aktivieren und bei Auslösen ein Feedback geben            |**Wird Erfüllt**{: .label .label-green }|
| F-072         | Der Betreuer einer Maßnahme sollen in der Lage sein den Aufpassskill zu aktivieren und zu deaktivieren                              | **Wird Erfüllt**{: .label .label-green }|
| F-073         | Die Teilnehmer einer Maßnahme sollen in der Lage sein den Aufpassskill zu aktivieren                                                | **Wird Erfüllt**{: .label .label-green }|
| F-074         | Der Aufpassskill soll als zusätzliche Sicherheit dienen und die Betreuer dazu animieren bei Feedback mal nach der Lage zu schauen   |  **Wird teilweise Erfüllt**{: .label .label-yellow }   |
| F-075         | Das Feedback des Aufpassskills sollte in Bezug auf Fehlalarme und Ablenkung nicht störend sein                                      | **Wird teilweise Erfüllt**{: .label .label-yellow } |

