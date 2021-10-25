---
layout: default
grand_parent: Vorgehen in der Entwicklung
parent: Skills
title: Timer und Alarm 
nav_order: 2
---


# Timer-/Alarmskills 
<div class="labels" markdown="1">
Offlinefähig
{: .label .label-green }
</div>

## Erklärung:
MaxMax kann einen Timer oder einen Alarm stellen und dadurch an etwas erinnern oder wecken. 
Der Timer und der Alarm unterscheiden sich darin: <br/>
Bei dem [Timer Skill](#1-einen-timer-stellen) wird die Zeit, die bis zur Erinnerung verstreichen muss, angegeben. Wie bei einer Eieruhr.<br/>
Bei dem [Alarm Skill](#2-einen-alarm-stellen) wird eine Uhrzeit zu der MaxMax erinnern soll angegeben. 
Wie bei einem Wecker. <br/>
Zusätzlich kann ein [Alarm vor dem Verstreichen manuell gelöscht](#3-einen-alarm-löschen) werden. 
Dies ist bei einem Timer nicht möglich, er muss ablaufen. <br/>
Dafür ist es möglich sich die [verbleibende Zeit eines Timers](#4-einen-laufenden-timer-abfragen) ansagen zu lassen. <br/>
Bei Timer und Alarm Skill kann außerdem aus einem [Pool an Erinnerungsnachrichten](#erinnerungsnachrichten) gewählt werden, die genutzt werden können um die Erinnerung mit einem Betreff zu versehen. 



## Sprachbefehle:
### 1. Einen Timer stellen
Beispiele:

| "MaxMax? ... Stelle einen 1 Stunde 7 Minuten Timer."                                 | Ohne Erinnerungsnachricht |
| "MaxMax? ... Stelle einen 4 Stunden Timer mit dem Grund Termin."               | Mit [Erinnerungsnachricht](#erinnerungsnachrichten)  | 
| "MaxMax? ... Stelle einen Timer für 30 Minuten fürs Essen."                      | Mit [Erinnerungsnachricht](#erinnerungsnachrichten) |
| "MaxMax? ... Stelle einen Sport Timer für 10 Minuten."  | Mit [Erinnerungsnachricht](#erinnerungsnachrichten)  | 

[Struktur:](structure) 
- Stelle einen ( STUNDEN Stunde ODER Stunden )( MINUTEN Minute ODER Minuten )( SEKUNDEN Sekunde ODER Sekunden ) Timer (  mit dem ODER für ODER fürs Verwendungszweck ODER Grund ODER Betreff ERINNERUNGSNACHRICHT)
- Stelle einen Timer für ( STUNDEN Stunde ODER Stunden )( MINUTEN Minute ODER Minuten )( SEKUNDEN Sekunde ODER Sekunden ) ( mit dem ODER für ODER fürs Verwendungszweck ODER Grund ODER Betreff ERINNERUNGSNACHRICHT)
- Stelle einen ERINNERUNGSNACHRICHT Timer für ( STUNDEN Stunde ODER Stunden )( MINUTEN Minute ODER Minuten )( SEKUNDEN Sekunde ODER Sekunden )


### 2. Einen Alarm stellen
Beispiele:

| "MaxMax? ... Erinnere mich um 8 Uhr?"                                 | Ohne Erinnerungsnachricht |
| "MaxMax? ... Erinnere mich um 8 Uhr 10 an Medikamente?"               | Mit [Erinnerungsnachricht](#erinnerungsnachrichten)  | 
| "MaxMax? ... Stelle einen Wecker für 20 Uhr 10?"                      | Ohne Erinnerungsnachricht |
| "MaxMax? ... Aktiviere einen Wecker für 19 Uhr mit dem Grund Fußball  | Mit [Erinnerungsnachricht](#erinnerungsnachrichten)  | 

[Struktur:](structure) 
- Wecke ODER Erinnere mich um STUNDE Uhr ( MINUTE ) ( an ODER mit dem ODER für Verwendungszweck ODER Grund ODER Betreff ERINNERUNGSNACHRICHT)
- Stell ODER Stelle ODER Aktiviere ODER Lege einen Wecker für STUNDE Uhr ( MINUTE ) ( mit dem ODER für Verwendungszweck ODER Grund ODER Betreff ERINNERUNGSNACHRICHT ) 


### 3. Einen Alarm löschen
Beispiele:

| "MaxMax? ... Lösche den 8 Uhr Wecker."                     |
| "MaxMax? ... Lösche den Alarm um 8 Uhr 10."                |

[Struktur:](structure) 
- Lösche ( den ) STUNDE Uhr ( MINUTE ) Alarm ODER Wecker
- Lösche ( den ) Alarm ODER Wecker ( um ) oder ( für ) STUNDE Uhr ( MINUTE )




### 4. Einen laufenden Timer abfragen
Beispiel: 

| "MaxMax? ... Wie lange läuft der Timer?"                  |

[Struktur:](structure) 
- Wie lange läuft der Timer ( noch )


## Erinnerungsnachrichten 
Individuelle Erinnerungsnachrichten sind nicht möglich! 
{: .label .label-yellow }

- Essen
- Friseur
- Trinken
- Medikamente
- Abendessen
- Serie
- Arzt
- Termin
- Mittagessen
- Film
- Sport
- Fußball
- Tablette
- Fernsehen
- Medikament
- Frühstück
- Tabletten
- Besuch