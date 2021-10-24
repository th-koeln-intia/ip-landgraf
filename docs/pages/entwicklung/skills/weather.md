---
layout: default
grand_parent: Vorgehen in der Entwicklung
parent: Skills
title: Wetter
nav_order: 3
---


# Wetterskills
<div class="labels" markdown="1">
Onlineverbindung benötigt
{: .label .label-yellow }
</div>

## Erklärung:
MaxMax kann, wenn er mit dem Internet verbunden ist, verschiedene Daten zum Wetter abfragen.<br/> Möglich ist dies jedoch nur für eine der [701. Groß- und Mittelstädte Deutschlands aus dieser Liste](weather_citys). <br/>In der Suche kann entweder jedes Mal ein Suchstandort genauer bestimmt werden oder es kann ein [Standard-Suchstandort](#1-standort-hinterlegen) hinterlegt werden, nach dem dann gesucht wird wenn im Sprachbefehl keine Stadt genaue spezifiziert wird.<br/>
Gesucht werden kann nach dem [aktuellen Wetter](#2-aktuelles-wetter-abfragen), nach dem [zukünftige Wetter](#3-wetter-für-die-nächsten-tage-abfragen), nach dem [Zeitpunkt des Sonnenaufgang](#4-sonnenaufgangszeitpunkt-abfragen) oder nach dem [Zeitpunkt des Sonnenuntergang](#5-sonnenuntergangszeitpunkt-abfragen).



## Sprachbefehle:
### 1. Standort hinterlegen 
Beispiele:

| "MaxMax? ... Stelle meine Heimat auf Flörsheim."         |
| "MaxMax? ... Setze meine Standartstadt zu Gummersbach."    |
| "MaxMax? ... Standort auf Berlin."    |

[Struktur:](structure) 
- ( Stelle ODER Setze ) ( mein ODER meine ) ( Standard- ) Stadt ODER Standort ODER Heimat zu ODER auf STÄDTENAME
- Ich wohne in STÄDTENAME

### 2. Aktuelles Wetter abfragen
Beispiele:

| "MaxMax? ... Wie ist das Wetter zur Zeit?" | Suche mit [Standartstandort](#1-standort-hinterlegen) |
| "MaxMax? ... Sag mir das Wetter?" | Suche mit [Standartstandort](#1-standort-hinterlegen) |
| "MaxMax? ... Wie ist in Köln das Wetter?"               | Suche in ["Köln"](weather_citys) | 
| "MaxMax? ... Sag mir das Wetter gerade in Wiesbaden?" | Suche in ["Wiesbaden"](weather_citys) |
| "MaxMax? ... Was ist in Hamburg das Wetter heute?"  | Suche in ["Hamburg"](weather_citys) | 

[Struktur:](structure) 
- Was ODER Wie ODER Sag mir ( ist )( das ) Wetter ( heute ODER jetzt ODER zur Zeit ODER gerade )( in )( STÄDTENAME )( heute ODER jetzt )
- Was ODER Wie ODER Sag mir ( ist )( in )( STÄDTENAME )( das ) Wetter ( heute ODER jetzt )

### 3. Wetter für die nächsten Tage abfragen
Beispiele:

| "MaxMax? ... Wie ist das Wetter diese Woche?" | Suche mit [Standartstandort](#1-standort-hinterlegen) |
| "MaxMax? ... Sag mir das Wetter für die kommenden Tage?" | Suche mit [Standartstandort](#1-standort-hinterlegen) |
| "MaxMax? ... Wie ist in Gummersbach das Wetter die kommenden Tage?"               | Suche in ["Gummersbach"](weather_citys) | 
| "MaxMax? ... Sag mir das Wetter in Frankfurt die nächste Zeit?" | Suche in ["Frankfurt"](weather_citys) |
| "MaxMax? ... Was ist in Freiburg das Wetter für die laufende Woche?"  | Suche in ["Freiburg"](weather_citys) | 

[Struktur:](structure) 
- Was ODER Wie ODER Sag mir ( ist ODER wird ) das Wetter ( für )( die ODER diese ODER in der )( kommende ODER kommenden ODER nächsten ODER nächste ODER laufende ) Woche ODER Tage ODER Zeit )( in )( STÄDTENAME )
-  Was ODER Wie ODER Sag mir ( ist ODER wird ) das Wetter ( in )( STÄDTENAME )( für )( die ODER diese ODER in den )( kommende ODER kommenden ODER nächsten ODER nächste ODER laufende ) Woche ODER Tage ODER Zeit )
- Was ODER Wie ODER Sag mir ( ist ODER wird )( in )( STÄDTENAME )( für )( die ODER diese ODER in den )( kommende ODER kommenden ODER nächsten ODER nächste ODER laufende ) Woche ODER Tage ODER Zeit ) das Wetter 


### 4. Sonnenaufgangszeitpunkt abfragen
Beispiele:

| "MaxMax? ... Wann geht die Sonne auf?" | Suche mit [Standartstandort](#1-standort-hinterlegen) |
| "MaxMax? ... Um wie viel Uhr ist der Sonnenaufgang?" | Suche mit [Standartstandort](#1-standort-hinterlegen) |
| "MaxMax? ... Wann geht in Eltville am Rhein die Sonne auf?"               | Suche in ["Eltville am Rhein"](weather_citys) | 
| "MaxMax? ... Um wie viel Uhr geht in Offenbach die Sonne auf?" | Suche in ["Offenbach"](weather_citys) |
| "MaxMax? ... Wann ist in Bonn der Sonnenaufgang?"  | Suche in ["Bonn"](weather_citys) | 

[Struktur:](structure) 
- Wann ODER Um wie viel Uhr geht ( die ) Sonne ( in )( STÄDTENAME ) auf
- Wann ODER Um wie viel Uhr ist ( der ) Sonnenaufgang ( in )( STÄDTENAME )
- Wann ODER Um wie viel Uhr geht ( in )( STÄDTENAME ) ( die ) Sonne auf
- Wann ODER Um wie viel Uhr ist ( in )( STÄDTENAME )( der ) Sonnenaufgang 

### 5. Sonnenuntergangszeitpunkt abfragen
Beispiele:

| "MaxMax? ... Wann geht die Sonne unter" | Suche mit [Standartstandort](#1-standort-hinterlegen) |
| "MaxMax? ... Um wie viel Uhr ist der Sonnenuntergang?" | Suche mit [Standartstandort](#1-standort-hinterlegen) |
| "MaxMax? ... Wann geht in Mainz die Sonne unter?"               | Suche in ["Mainz"](weather_citys) | 
| "MaxMax? ... Um wie viel Uhr geht in Düsseldorf die Sonne unter?" | Suche in ["Düsseldorf"](weather_citys)  |
| "MaxMax? ... Wann ist in Duisburg der Sonnenuntergang?"  | Suche in ["Duisburg"](weather_citys)  | 

[Struktur:](structure) 
- Wann ODER Um wie viel Uhr geht ( die ) Sonne ( in )( STÄDTENAME ) unter
- Wann ODER Um wie viel Uhr ist ( der ) Sonnenuntergang ( in )( STÄDTENAME )
- Wann ODER Um wie viel Uhr geht ( in )( STÄDTENAME ) ( die ) Sonne unter
- Wann ODER Um wie viel Uhr ist  ( in )( STÄDTENAME ) ( der ) Sonnenuntergang

