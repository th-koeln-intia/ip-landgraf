---
layout: default
title: Was ist ein Sprachassistent?
nav_order: 2

---

# Was ist ein Sprachassistent?
Ein Sprachassistent ist ein System, dass verschiedene Sprachbefehle verarbeiten kann und durch diese bestimmte Aktionen ausführt. 
Sprachassistenten zeichnen sich in der Regel durch diese fünf Merkmale und gleichzeitig chronolgische Nutzungsschichten aus:

| Sprachbefehl: "MaxMax? ... Wie ist das Wetter in Köln?" | Antwort: "das wetter in köln ist sonnig" |

![](/assets/images/merkmaleimage.png)

1. Wake Word Spotter - Weckworterkennung<br />
Wenn der Sprachassistent eingeschaltet ist hört die Weckworterkennung immer zu und wartet darauf das sie ein bestimmtes Muster im Audioeingangssignal erkennt.
Erst wenn dieses Weckwort erkannt (Beispiel: "MaxMax") wird, verarbeitet der Sprachassistent die nachfolgenden Wörter oder Sätze.

2. Speech To Text - Sprache-Zu-Text<br />
In der zweiten Schicht wandelt der Sprachassistent, den auf das Weckwort folgenden Sprachbefehl in Text um (Beispiel: "wie ist das wetter in köln"). 

3. Intent Parsing And Entity Recognition - Absichtsanalyse und Entitätenerkennung<br />
Der Sprachassistent entschlüsselt aus dem Text eine Absicht und erkennt mitgegebene Entitäten des Nutzers (Beispiel: 1. "wie"+"wetter" = Wetterabfrage | 2. "köln" = Wetterabfrage für Köln).

4. Skills - Fähigkeiten<br />
Die vierte Schicht sind dann Skills, also in etwa Programme oder Apps auf einem Sprachassistenten. Anhand der Absicht und der Entitäten wird eine passende Funktion für den Nutzer ausgeführt. (Beispiel: Wetterabfrage für Köln = [Datenquelle für Wetter befragen](https://www.wetter.com/deutschland/koeln/DE0005156.html)) 

5. Text To Speech - Text-Zu-Sprache<br />
Als letzte Schicht kommt das Feedback. In der Regel antwortet ein Sprachassistent mit Sprache. (Beispiel: "das wetter in köln ist sonnig" ) Es gibt jedoch auch andere oft zusätzlich genutzte Feedback-Arten (Licht-Feedback, Bildschirm-Feedback, Vibrationsfeedback, etc.) . 

