---
layout: default
grand_parent: Vorgehen in der Entwicklung
parent: Skills
title: Aufpassmodus
nav_order: 7
---


# Aufpassskills
<div class="labels" markdown="1">
Offlinefähig
{: .label .label-green }

Benötigt Lampe
{: .label .label-yellow }

Benötigt Erschütterungssensor
{: .label .label-yellow }
</div>
[![Aufpassmodus](https://i9.ytimg.com/vi/AmSz5L1lWlM/mq1.jpg?sqp=CNClwIsG&rs=AOn4CLD5ER_Rzq88TP_hOAxaqOmmGzGm1A)](https://youtu.be/AmSz5L1lWlM)

## Erklärung:
MaxMax verfügt über einen Aufpassmodus, der ein Feedback gibt, sobald Erschütterungen in einem Sensor erkannt werden.<br/> Dieser kann nur in Verbindung mit der Lampe und dem Erschütterungssensor genutzt werden.<br/> MaxMax würde, falls einer der beiden Komponenten nicht verbunden ist, darauf hinweisen und den Modus nicht starten.<br/>
Bei [Aktivierung des Aufpassmodus](#1-aufpassmodus-einschalten) verfärbt sich die Lampe gelb um zu Bestätigen das MaxMax ab diesem Zeitpunkt aufpasst.<br/>
Wenn im aktiven Aufpassmodus durch den Erschütterungssensor ein Erschütterung erkannt wird, wird ein Licht- und Sound-Feedback gegeben.<br/> Bei weiteren Erschütterung gibt MaxMax weiterhin Sound-Feedbacks.
Das Licht-Feedback geht aber erst wieder aus, wenn der [Auspassmodus zurückgesetzt](#2-alarm-zurücksetzen) oder [beendet](#3-aufpassmodus-ausschalten) wird. Durch das Zurücksetzen des Aufpassmodus färbt sich nach einem Sound-Feedback die Lampe wieder gelb und der Aufpassmodus startet von vorne. <br/>

### Wichtig:
Es ist nicht möglich bei aktivem [Stillemodus](/silence.md) den Aufpassmodus zu aktivieren! Es ertönt dann beim Versuch eine Hinweisnachricht.



## Sprachbefehle:
### 1. Aufpassmodus einschalten
Beispiele:

| "MaxMax? ... Aufpassen."         |
| "MaxMax? ... Schalte den Aufpassmodus ein."    |
| "MaxMax? ... Mache die Aufpasszeit an."    |

[Struktur:](structure) 
- ( Schalte ODER Mach ODER Mache )( die ODER das ODER den ) Aufpassen ODER Aufpass ( -phase ODER -modus ODER -zeit )( an ODER ein ODER einschalten ODER aktivieren )

### 2. Alarm zurücksetzen
Beispiele:

| "MaxMax? ... Alles gut."         |
| "MaxMax? ... Ihm ist nichts passiert."    |
| "MaxMax? ... Mir geht es gut."    |
| "MaxMax? ... Sie ist in Ordnung."    |

[Struktur:](structure) 
- Alles in Ordnung ODER gut
- ( Mir ODER Ihr ODER Ihm )( ist ) nichts ODER nix passiert
- ( Mir ODER Ihr ODER Ihm ) geht es ODER gehts gut
- Sie ODER Er ODER Ich ist ODER bin in Ordnung

### 3. Aufpassmodus ausschalten
Beispiele:

| "MaxMax? ... Aufpassen deaktivieren."         |
| "MaxMax? ... Schalte den Aufpassmodus aus."    |
| "MaxMax? ... Mache die Aufpasszeit aus."    |

[Struktur:](structure) 
- ( Schalte ODER Mach ODER Mache )( die ODER das ODER den ) Aufpassen ODER Aufpass ( -phase ODER -modus ODER -zeit ) aus ODER ausschalten ODER deaktivieren ODER beenden 




