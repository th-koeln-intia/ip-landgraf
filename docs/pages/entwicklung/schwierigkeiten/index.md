---
layout: default
parent: Vorgehen in der Entwicklung
title: Schwierigkeiten
nav_order: 4
---


# Schwierigkeiten
Während des Projektes traten Schwierigkeiten und Probleme auf. <br/> Neben klassischen Schwierigkeiten in der Verwendung und Konfiguration von verwendeten Technologien oder dem Programmcode, die bei Informatik-Projekten eigentlich immer auftreten und Zeit rauben können, sind hier vorallem Probleme aufgeführt aus denen Erkenntnisse für zukünftige Projekte oder sogar das laufende Projekt gewonnen werden konnten:

## Angeben von Versionen für Images in der docker-compose.yml:
In der Analysephase der vorangegangen Informatikprojekte trat beim Testen das Problem auf das einer der Sprachassistenten nicht funktionierte. <br/> Es stellte sich heraus, dass hier weil keine Version in der docker-compose.yml-Datei definiert war, der Sprachassistent versuchte mit der neusten Version des Images zu arbeiten. <br/> Diese benötigte jedoch Konfiguartionen die zum Zeitpunkt der Erstellung der vorangegangen Informatikprojekte noch nicht notwendig waren. <br/>
Durch das Festlegen der Version in der docker-compose.yml-Datei, die zum Zeitpunkt der Erstellung als "latest" galt, konnte der Sprachassistent zum Funktionieren gebracht und getestet werden. <br/> 
Hieraus resultierte zwar die Entscheidung für eine leichte Versionierung der einzelnen Services mit Docker zu arbeiten, aber gleichzeitig darauf zu achten, dass die docker-compose.yml-Datei bestimmte Versionen der Services, die zum Zeitpunkt der Entwicklung des Sprachassistenten MaxMax in der jeweiligen Konfiguration lauffähig waren, definiert. <br/>
Einzige Ausnahme stellt das Image des Music Player Daemons [easypi/mpd-arm](https://hub.docker.com/r/easypi/mpd-arm) dar, da hier nur eine Version mit dem "latest"-Tag vorliegt. <br/> Da diese allerdings zur Erstellung des Projektes seit dem 9.2.2021 aktuell ist und hier auch nicht mit weitreichenden Änderungen der Konfiguration und damit verbunden der Abläufe im Zusammenspiel mit diesem Komponent gerechnet wird, sollte dies nicht zu einem späteren Zeitpunkt bei der Installation und Nutzung des Sprachassistenten MaxMax zu Problemen führen. 

## Fehler in der Anforderungserstellung:
Beim Festhalten der Anforderungen wurden Wörter innerhalb der Beschreibungen benutzt, die umgangssprachlich den Sachverhalt zwar beschreiben, aber beim genaueren Auseinandersetzten mit der technologischen und informatischen Perspektive nicht erfüllbar oder einfach zu schwammig sind um hier sinnvoll Verwendung finden zu können. <br/>  Hierdurch wurde im Nachhinein nocheinmal bewusst welche Wichtigkeit, die genaue und eindeutige Bestimmung der Anforderungen hat und wie wichtig es ist sich vorab mit der Projekt-Domäne nicht nur aus konzeptioneller, sondern auch aus technischer und informatischer Sicht auseinanderzusetzen. <br/> <br/>
**Ungenaue Anforderungen führen zu nicht gewünschten oder ungenauen Ergebnissen, die innerhalb der Problem-Domäne nicht den gewünschten Nutzen erzielen können. <br/> Außerdem ist es wichtig eine eindeutige Gesprächsgrundlage für Projekte mit mehrer Mitwirkenden zu schaffen. <br/> Wörter unter denen jeder oder verschiedene Fachrichtungen eine andere Bedeutung versteht haben hier nichts zu suchen!**{: .text-yellow-000}

### Komplett Individuelle Erinnerungsnachrichten nicht möglich: 
Durch die Wahl der Technologien war es nicht möglich mit komplett individuellen Erinnerungsnachrichten zu arbeiten. <br/> Um hier trotzdem eine Annährung der [Anforderung](/pages/rahmenbedingung/anforderungen) zu ermöglichen, wurde mit einem Pool an vorgefertigten Erinnerungsnachrichten gearbeitet. <br/> Es wurde in Rücksprache mit der Altenpflege-Mitarbeiterin versucht die herkömmlichen Gründe für einen Alarm oder Timer innerhalb der Domäne abzudecken.

### Es gibt die umgangssprachliche Lautstärke nicht in Wav-Streams: 
Es stellte sich während des Projektverlaufs heraus, dass der Begriff der umgangssprachlichen und in den [Anforderungen](/pages/rahmenbedingung/anforderungen) gemeinten Lautstärke nicht aus dem Audio-Eingangssignal, welches im WAV-Format bereitgestellt wird, gewonnen werden kann. <br/> Hierbei wurde versucht sich den [Anforderungen](/pages/rahmenbedingung/anforderungen) (F-062 bis F-064) anzunähren in dem mit dem Erkennen der Root Mean Square-Leistung (auf deutsch: quadratische Mittelwert-Leistung) gearbeitet wurde. <br/> Umgangssprachlich könnte man von der Unruhe im Audioeingangssingal sprechen. <br/> Das bedeutet, dass sobald ein Ton perfekt gehalten wird, kein Ausschlag mehr festzustellen ist ([Siehe Video Stillemodus bei 0:54](https://www.youtube.com/watch?v=w4Ok8G5Xfq4&t=54s)). <br/> Da dies allerdings innerhalb einer Ruhezeit in der Domäne so nicht vorkommen sollte, kann man davon sprechen, dass hier eine gute Annährung an die Anforderung trotz der falschen Bezeichnung geglückt ist. 

## Fehlannahme und Probleme bei der zu Beginn gewählten Weckwort-Erkennung:
Die Verwendung von [Rhasspy Raven](https://rhasspy.readthedocs.io/en/latest/wake-word/#raven) als Weckwort-Erkennung, welches darauf ausgelegt ist mit personalisierten Weckwörtern zu arbeiten, bereitete in der Entwicklung Probleme. <br/> 
Die Annahme war vorab, dass durch das Nutzen von verschiedenen Stimmentypen (Junge Frau, Mittelalte Frau, Alte Frau, Junger Mann, Mittelalter Mann und Alter Mann) bei den eingesprochenen Weckwörtern eine gute Erkennung auch von nicht eintrainierten Stimmen und Personen ermöglicht wird. <br/>  Dies stellte sich allerdings im Test als Fehlannahme heraus. Zusätzlich hatte [Rhasspy Raven](https://rhasspy.readthedocs.io/en/latest/wake-word/#raven) sogar Probleme bei der Erkennung von Frauenstimmen die eigentlich eintrainiert waren. Hiermit konnten die [bestimmten Anforderungen](/pages/rahmenbedingung/anforderungen) nicht erfüllt werden. <br/> 
In Rücksprache mit den Betreuern wurde hier der Wechsel zu einer anderen Weckwort-Erkennung beschlossen.