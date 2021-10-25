---
layout: default
parent: Vorgehen in der Entwicklung
title: Analyse
nav_order: 1
---


# Analyse 
Der Sprachassistent baut auf Arbeitsergebnisse und Erkenntnisse auf, die im Rahmen des [Informatikprojektes](https://www.archi-lab.io/pages/viewpage.action?pageId=41156613) an der [TH-Köln](https://www.th-koeln.de/) im Wintersemester 2020/2021, erstellt wurden.<br/> Diese Projekte können hier eingesehen werden: 

* [Deep Thought](https://ip-team1.intia.de/)
* [Heimdall](https://ip-team2.intia.de/)
* [Apollo](https://ip-team3.intia.de/)
* [Sherlock ](https://ip-team4.intia.de/)
* [AliceSprachassistent](https://ip-team5.intia.de/)

## Informatikprojekte WS 2020/2021
In den Projekten wurden die folgenden Techologien genutzt:

| Name:                 | [Deep Thought](https://ip-team1.intia.de/)  | [Heimdall](https://ip-team2.intia.de/)        | [Apollo](https://ip-team3.intia.de/)       | [Sherlock ](https://ip-team4.intia.de/)      | [AliceSprachassistent](https://ip-team5.intia.de/) |
|:---------------------|:---------------------|:-----------------------|:--------------------|:----------------------|:---------------------------|
| Sprachassistent:           | [Rhasspy](https://rhasspy.readthedocs.io/en/latest/)       | [Rhasspy](https://rhasspy.readthedocs.io/en/latest/)         | [Rhasspy](https://rhasspy.readthedocs.io/en/latest/)      | [Rhasspy](https://rhasspy.readthedocs.io/en/latest/)       | [Project Alice](https://docs.projectalice.io/)       |
| WakeWord Engine:    | [Rhasspy Raven](https://rhasspy.readthedocs.io/en/latest/wake-word/#raven) | [Mycroft-Precise](https://github.com/MycroftAI/mycroft-precise) | [PocketSphinx](https://github.com/cmusphinx/pocketsphinx) | [Rhasspy Raven](https://rhasspy.readthedocs.io/en/latest/wake-word/#raven) | [Snips-NLU](https://snips-nlu.readthedocs.io/en/latest/)               |
| Speech-To-Text:       | [PocketSphinx](https://github.com/cmusphinx/pocketsphinx)  | [Kaldi](https://kaldi-asr.org/)          | [PocketSphinx](https://github.com/cmusphinx/pocketsphinx) | [DeepSpeech](https://github.com/mozilla/DeepSpeech) 	   | [DeepSpeech](https://github.com/mozilla/DeepSpeech)           |
| Intent Recognition: | [Fsticuffs](https://rhasspy.readthedocs.io/en/latest/intent-recognition/#fsticuffs)     | [FuzzyWuzzy](https://rhasspy.readthedocs.io/en/latest/intent-recognition/#fuzzywuzzy)      | [Fsticuffs](https://rhasspy.readthedocs.io/en/latest/intent-recognition/#fsticuffs)    | [Snips-NLU](https://snips-nlu.readthedocs.io/en/latest/)      | [Snips-NLU](https://snips-nlu.readthedocs.io/en/latest/)               |
| Text-To-Speech:       | [Espeak](http://espeak.sourceforge.net/)        | [MaryTTS](http://mary.dfki.de/)        | [NanoTTS](https://github.com/gmn/nanotts) 	     | [NanoTTS](https://github.com/gmn/nanotts)      | [NanoTTS](https://github.com/gmn/nanotts)              |

Die verschiedenen Sprachassistenten wurden auf einem Raspberry Pi 4 Model B mit 8GB Ram installiert und getestet. Die hier durch gesammelten Erfahrungen und Kriterien, die in Bezug auf die [Anforderungen](/glossar#anforderung) und ihre Erreichbarkeit durch die verschiedenen Technologien, waren dann Ausschlaggebend für die Wahl der Technologien für den Sprachassistenten MaxMax und Konfigurationen von diesem. 

