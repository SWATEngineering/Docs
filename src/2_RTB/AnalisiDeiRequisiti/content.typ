#import "meta.typ" : title
#import "functions.typ" : glossary, team, modulo, requirements_table, generate_requirements_array

#set list(marker: ([•], [--]))
#set enum(numbering: "1.a.")

= Introduzione

== Scopo del documento
Il presente documento ha lo scopo di fornire una descrizione dettagliata dei casi d'uso e dei requisiti del progetto "InnovaCity". Questi risultano dall'analisi del capitolato C6 presentato dalla Proponente Sync Lab e dalla successiva interazione diretta con essa attraverso gli incontri svolti.

== Scopo del prodotto
Lo scopo del prodotto è la realizzazione di un sistema di persistenza dati e successiva visualizzazione di questi, provenienti da sensori dislocati geograficamente. Tale piattaforma consentirà all'#glossary("amministratore pubblico") di acquisire una panoramica completa delle condizioni della città, facilitando così la presa di decisioni informate e tempestive riguardo alla gestione delle risorse e all'implementazione di servizi.

== Glossario
Al ﬁne di evitare possibili ambiguità relative al linguaggio utilizzato nei
documenti, viene fornito il _Glossario v1.0_, nel quale sono presenti tutte le
deﬁnizioni di termini aventi uno specifico signiﬁcato che vuole essere
disambiguato. Tali termini, sono scritti in corsivo e marcati con una G a pedice.

== Riferimenti

=== Riferimenti normativi
- Capitolato C6 - InnovaCity: Smart city monitoring platform:
#link("https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C6.pdf")\
#link("https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C6p.pdf")

- _Norme di Progetto v1.0_

- _Verbale Esterno 10-11-2023 v1.0_
- _Verbale Esterno 24-11-2023 v1.0_
- _Verbale Esterno 06-12-2023 v1.0_

- Regolamento progetto didattico:
#link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/PD2.pdf")

=== Riferimenti informativi
Analisi dei requisiti - corso di Ingegneria del Software a.a. 2023/2024: \
#link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T5.pdf") \
Cardin	Analisi e descrizione delle funzionalità: Use Case e relativi diagammi (UML) - corso di Ingegneria del Software a.a. 2023/2024: \
#link("https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20di%20Attivit%C3%A0.pdf")

= Descrizione

== Obiettivi del prodotto
L'obiettivo consiste nella creazione di una piattaforma di monitoraggio e gestione di una #glossary("Smart City"). L'utente, individuato nell'amministratore pubblico, potrà farne impiego per migliorare la qualità generale della vita e l'efficienza dei servizi nel contesto di un'area urbana. L'utente sarà in grado di monitorare, attraverso la consultazione di una #glossary("dashboard"), lo stato della città, esaminando aspetti ambientali, logistici e di sicurezza. Questo cruscotto includerà rappresentazioni grafiche basate su dati provenienti da dei sensori installati all'interno dell'area geografica della città.

== Funzionalità del prodotto
Il prodotto si compone di due parti principali:
- *Una #glossary("data pipeline")* in grado di raccogliere, persistere e processare dati provenienti da più sorgenti (ovvero i #glossary("sensori")) in #glossary("real-time");
- *una #glossary("dashboard")* che permette di visualizzare i dati raccolti.

La piattaforma prevede fondamentalmente una tipologia di utente: l'amministratore pubblico. Questo utente avrà accesso alla dashboard e prenderà visione di diverse metriche e indicatori sullo stato della città, mediante diversi strumenti di visualizzazione.

== Utenti e caratteristiche
Il prodotto, destinato ad amministratori pubblici, consente loro di ottenere una panoramica sulle condizioni della città. Ciò fornisce loro una base solida per prendere decisioni ponderate riguardo la gestione delle risorse e sull'implementazione dei servizi, risultando cruciale per il miglioramento dell'efficienza complessiva della gestione urbana. Si presuppone che l'amministratore pubblico abbia conoscenze di analisi e di interpretazione dei dati, tali da poter trarre un concreto beneficio dal controllo della #glossary("dashboard").

= Casi d'uso
== Scopo
In questa sezione si vogliono elencare e descrivere tutti i casi d'uso individuati dall'analisi del capitolato e dalle interazioni avute con la Proponente. In particolare, si individuano gli #glossary("attori") e le funzionalità che questi possono svolgere. Ogni caso d'uso possiede un codice, la cui struttura è descritta nelle _Norme di Progetto v1.0_.

== Attori
Il sistema si interfaccerà con due attori diversi:
- *Amministratore pubblico*: è un utente che ha accesso alla dashboard in tutte le sue funzionalità e può visualizzare i dati raccolti dai sensori, mediante quest'ultima;
- *#glossary("Sensore")*: è un dispositivo in grado di effettuare misurazioni relative al proprio dominio di interesse. Questi dati possono essere letti ed utilizzati dal sistema.

Relativamente all'utilizzo della #glossary("dashboard"), viene definito un unico attore con accesso completo alle funzionalità, in quanto per sua natura l' amministratore pubblico possiede le competenze tecniche necessarie per poter interagire con essa in tutte le sue parti.

#figure(
  image("assets/attori.png", width: 40%),
  caption: [Gerarchia degli attori]
)

#pagebreak()
== Elenco dei casi d'uso

#set heading(numbering: none)

/*TODO: fare immagine apposta*/
=== UC0: Visualizzazione menù dashboard
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: nessuna.
- *Postcondizioni*: l'amministratore pubblico visualizza un menù di selezione da cui può scegliere in che dashboard spostarsi tra: Sensori, Ambientale, Urbanistica, Dati anomali & superamento soglie. 
- *Scenario Principale*:
  + l'amministratore pubblico accede alla piattaforma di visualizzazione; 

#figure(
  image("assets/UML/UC0_Visualizzazione-menù-dashboard.png",width:70%),
  caption: [UC1 Visualizzazione dashboard generale sensori]
)

/*TODO: ricontrollare la fine di ogni use case che comprende l'uso di un #glossary("pannello")*/
=== UC1: Visualizzazione dashboard generale sensori
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: nessuna.
- *Postcondizioni*: l'amministratore pubblico visualizza #glossary("pannelli") relativi allo stato dei sensori, all'interno di un'unica dashboard. 
- *Scenario Principale*:
  + l'amministratore pubblico accede alla piattaforma di visualizzazione; 
  + l'amministratore pubblico seleziona la visualizzazione della #glossary("dashboard") generale relativa ai sensori;

#figure(
  image("assets/UML/UC1_Visualizzazione-dashboard-generale-sensori.png",width:70%),
  caption: [UC1 Visualizzazione dashboard generale sensori]
)


#pagebreak()
=== UC1.1: Visualizzazione posizione sensori su mappa
- *Attore Principale*: amministratore pubblico. 
- *Precondizioni*: nessuna.
- *Postcondizioni*: l'amministratore pubblico visualizza un #glossary("pannello") contenente una mappa che mostra le posizioni dei sensori, come icone, su di essa. 
- *Scenario Principale*:
  + l'amministratore pubblico accede alla piattaforma di visualizzazione; 
  + l'amministratore pubblico seleziona la visualizzazione della #glossary("dashboard") generale relativa ai sensori;
- *Estensioni*: [UC9].

#figure(
  image("assets/UML/UC1.1_Visualizzazione-posizione-sensori-su-mappa.png",width:100%),
  caption: [UC1.1 Visualizzazione posizione sensori su mappa]
)

=== UC1.2: Visualizzazione tabella sensori
- *Attore Principale*: amministratore pubblico. 
- *Precondizioni*: nessuna.
- *Postcondizioni*: l'amministratore pubblico visualizza il #glossary("pannello") relativo ai dati inerenti ai sensori, riportando la percentuale di batteria, un valore booleano che esprime se il sensore va a batteria autonoma o meno e la data di ultima manutenzione del sensore, in forma tabellare, indicizzato dai nomi dei sensori.
- *Scenario Principale*:
  + l'amministratore pubblico accede alla piattaforma di visualizzazione; 
  + l'amministratore pubblico seleziona la visualizzazione della #glossary("dashboard") generale relativa ai sensori;
- *Estensioni*: [UC9].

#figure(
  image("assets/UML/UC1.2_Visualizzazione-tabella-sensori.png",width:100%),
  caption: [UC1.2 Visualizzazione tabella sensori]
)

#pagebreak()
=== UC2: Visualizzazione dashboard dati ambientali
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: nessuna.
- *Postcondizioni*: l'amministratore pubblico visualizza #glossary("pannelli") contenenti dati relativi al dominio ambientale.
- *Scenario Principale*:
  + l'amministratore pubblico accede alla piattaforma di visualizzazione;
  + l'amministratore pubblico seleziona la visualizzazione del dominio ambientale.

#figure(
  image("assets/UML/UC2_Visualizzazione-dashboard-dati-ambientali.png",width:70%),
  caption: [UC2 Visualizzazione dati ambientali]
)


=== UC2.1: Visualizzazione #glossary("pannello") dati ambientali
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'amministratore pubblico ha selezionato la visualizzazione relativa al dominio dei dati ambientali.
- *Postcondizioni*: l'amministratore pubblico visualizza un #glossary("pannello") contenente dati relativi al dominio ambientale.
- *Scenario Principale*:
  + l'amministratore pubblico accede alla piattaforma di visualizzazione;
  + l'amministratore pubblico seleziona la visualizzazione del dominio ambientale.
- *Specializzazioni*: [UC2.2],[UC2.3],[UC2.4],[UC2.5],[UC2.6],[UC2.7],[UC2.8],[UC2.9],[UC2.10],[UC2.11].
- *Estensioni*: [UC9].

#figure(
  image("assets/UML/UC2.1_Visualizzazione-pannello-dati-ambientali.png",width:100%),
  caption: [UC2.1 Visualizzazione #glossary("pannello") dati ambientali]
)

#pagebreak()
=== UC2.2: Visualizzazione #glossary("pannello") #glossary("time series") per temperatura
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'amministratore pubblico ha selezionato la visualizzazione relativa al dominio dei dati ambientali.
- *Postcondizioni*: l'amministratore pubblico visualizza un #glossary("pannello") contenente un grafico relativo alla temperatura, espressa in gradi celsius, in formato #glossary("time series") che ne mostra l'andamento in media aritmetica, distinto per sensore, aggregando i dati per intervalli di 5 minuti.
- *Scenario Principale*:
  + l'amministratore pubblico accede alla piattaforma di visualizzazione;
  + l'amministratore pubblico seleziona la visualizzazione del dominio ambientale.

#figure(
  image("assets/UML/UC2.2_Visualizzazion-pannello-time-series-per-temperatura.png",width:100%),
  caption: [UC2.2 Visualizzazione #glossary("pannello") time series per temperatura]
)

=== UC2.3: Visualizzazione #glossary("pannello") time series per umidità
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'amministratore pubblico ha selezionato la visualizzazione relativa al dominio dei dati ambientali.
- *Postcondizioni*: l'amministratore pubblico visualizza un #glossary("pannello") contenente un grafico relativo all'umidità, espressa in percentuale, in formato #glossary("time series") che ne mostra l'andamento in media aritmetica, distinto per sensore, aggregando i dati per intervalli di 5 minuti.
- *Scenario Principale*:
  + l'amministratore pubblico accede alla piattaforma di visualizzazione;
  + l'amministratore pubblico seleziona la visualizzazione del dominio ambientale.
#figure(
  image("assets/UML/UC2.3_Visualizzazione-pannello-time-series-umidità.png",width:100%),
  caption: [UC2.3 Visualizzazione #glossary("pannello") time series per umidità]
)

#pagebreak()

/*TODO: creare nuova immagine*/
=== UC2.4: Visualizzazione grafico a mappa direzione del vento
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'amministratore pubblico ha selezionato la visualizzazione relativa al dominio dei dati ambientali.
- *Postcondizioni*: l'amministratore pubblico visualizza un #glossary("pannello") contenente una mappa che esprime, mediante frecce aventi orgine nelle coordinate del sensore, la direzione del vento rilevata da ciascun sensore.
- *Scenario Principale*:
  + l'amministratore pubblico accede alla piattaforma di visualizzazione;
  + l'amministratore pubblico seleziona la visualizzazione del dominio ambientale.

#figure(
  image("assets/UML/UC2.4_Visualizzazione-grafico-a-mappa-direzione-del-vento.png",width:60%),
  caption: [UC2.4 Visualizzazione grafico a mappa direzione del vento]
)

/*TODO: creare nuova immagine*/
=== UC2.5: Visualizzazione tabella velocità del vento
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'amministratore pubblico ha selezionato la visualizzazione relativa al dominio dei dati ambientali.
- *Postcondizioni*: l'amministratore pubblico visualizza un #glossary("pannello") contenente dati relativi all'ultima velocità del vento, espressa in chilometri all'ora, registrata da ciascun sensore, sotto forma tabellare.
- *Scenario Principale*:
  + l'amministratore pubblico accede alla piattaforma di visualizzazione;
  + l'amministratore pubblico seleziona la visualizzazione del dominio ambientale.

#figure(
  image("assets/UML/UC2.5_Visualizzazione-tabella-velocità-del-vento.png",width:60%),
  caption: [UC2.5 Visualizzazione tabella velocità del vento]
)

#pagebreak()
=== UC2.6: Visualizzazione #glossary("pannello") time series per precipitazioni
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'amministratore pubblico ha selezionato la visualizzazione relativa al dominio dei dati ambientali.
- *Postcondizioni*: l'amministratore pubblico visualizza un #glossary("pannello") contenente un grafico relativo all'intensità delle precipitazioni, espressa in millimetri orari, in formato #glossary("time series") che ne mostra l'andamento in media aritmetica, distinto per sensore, aggregando i dati per intervalli di 5 minuti.
- *Scenario Principale*:
  + l'amministratore pubblico accede alla piattaforma di visualizzazione;
  + l'amministratore pubblico seleziona la visualizzazione del dominio ambientale.

#figure(
  image("assets/UML/UC2.6_Visualizzazione-pannello-time-series-per-precipitazioni.png",width:100%),
  caption: [UC2.6 Visualizzazione #glossary("pannello") time series per precipitazioni]
)

=== UC2.7: Visualizzazione #glossary("pannello") precipitazioni medie
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'amministratore pubblico ha selezionato la visualizzazione relativa al dominio dei dati ambientali.
- *Postcondizioni*: l'amministratore pubblico visualizza un #glossary("pannello") contenente un indice numerico relativo alle precipitazioni, espresse millimetri di pioggia all'ora, indicante la media dell'intensità delle precipitazioni tra tutti i dati raccolti dai sensori, degli ultimi 5 minuti.
- *Scenario Principale*:
  + l'amministratore pubblico accede alla piattaforma di visualizzazione;
  + l'amministratore pubblico seleziona la visualizzazione del dominio ambientale.

#figure(
  image("assets/UML/UC2.7_Visualizzazione-pannello-precipitazioni-medie.png",width:100%),
  caption: [UC2.7 Visualizzazione #glossary("pannello") precipitazioni medie]
)

#pagebreak()
=== UC2.8: Visualizzazione #glossary("pannello") time series per inquinamento dell'aria
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'amministratore pubblico ha selezionato la visualizzazione relativa al dominio dei dati ambientali.
- *Postcondizioni*: l'amministratore pubblico visualizza un #glossary("pannello") contenente un grafico relativo al livello di polveri sottili nell'aria, espresso in $#sym.mu g\/m^3$ (#glossary("PM10")), in formato #glossary("time series"), che ne mostra l'andamento in media aritmetica, distinto per sensore, aggregando i dati per intervalli di 5 minuti.
- *Scenario Principale*:
  + l'amministratore pubblico accede alla piattaforma di visualizzazione;
  + l'amministratore pubblico seleziona la visualizzazione del dominio ambientale.

#figure(
  image("assets/UML/UC2.8_Visualizzazione-pannello-time-series-per-inquinamento-dell-aria.png",width:100%),
  caption: [UC2.8 Visualizzazione #glossary("pannello") time series per inquinamento dell'aria]
)

=== UC2.9: Visualizzazione #glossary("pannello") inquinamento dell'aria medio
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'amministratore pubblico ha selezionato la visualizzazione relativa al dominio dei dati ambientali.
- *Postcondizioni*: l'amministratore pubblico visualizza un #glossary("pannello") contenente la media della concentrazione di inquinanti dell'aria, espressa in $#sym.mu g\/m^3$,(#glossary("PM10")), considerando tutti i sensori attivi negli ultimi 5 minuti, e presentata in formato numerico.
- *Scenario Principale*:
  + l'amministratore pubblico accede alla piattaforma di visualizzazione;
  + l'amministratore pubblico seleziona la visualizzazione del dominio ambientale.

#figure(
  image("assets/UML/UC2.9_Visualizzazione-pannello-inquinamento-dell-aria-medio.png",width:100%),
  caption: [UC2.9 Visualizzazione #glossary("pannello") inquinamento dell'aria medio]
)

#pagebreak()
=== UC2.10: Visualizzazione #glossary("pannello") time series per livello dei bacini idrici
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'amministratore pubblico ha selezionato la visualizzazione relativa al dominio dei dati ambientali.
- *Postcondizioni*: l'amministratore pubblico visualizza un #glossary("pannello") contenente un grafico relativo alla percentuale di riempimento dei bacini idrici, in formato #glossary("time series"), che ne mostra l'andamento in media aritmetica di tale percentuale, distinto per sensore, aggregando i dati per intervalli di 5 minuti.
- *Scenario Principale*:
  + l'amministratore pubblico accede alla piattaforma di visualizzazione;
  + l'amministratore pubblico seleziona la visualizzazione del dominio ambientale.

#figure(
  image("assets/UML/UC2.10_Visualizzazione-pannello-time-series-per-livello-dei-bacini-idrici.png",width:100%),
  caption: [UC2.10 Visualizzazione #glossary("pannello") time series per livello dei bacini idrici]
)

=== UC2.11: Visualizzazione #glossary("pannello") temperatura media
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'amministratore pubblico ha selezionato la visualizzazione relativa al dominio dei dati ambientali.
- *Postcondizioni*: l'amministratore pubblico visualizza un #glossary("pannello") contenente la media della temperatura, espressa in gradi celsius, considerando tutti i sensori attivi negli ultimi 5 minuti, e presentata in formato numerico.
- *Scenario Principale*:
  + l'amministratore pubblico accede alla piattaforma di visualizzazione;
  + l'amministratore pubblico seleziona la visualizzazione del dominio ambientale.

#figure(
  image("assets/UML/UC2.11_Visualizzazione-pannello-temperatura-media.png",width:100%),
  caption: [UC2.11 Visualizzazione #glossary("pannello") temperatura media]
)

#pagebreak()
=== UC2.12: Visualizzazione #glossary("pannello") inquinamento dell'aria massimo
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'amministratore pubblico ha selezionato la visualizzazione relativa al dominio dei dati ambientali.
- *Postcondizioni*: l'amministratore pubblico visualizza un #glossary("pannello") contenente il massimo coefficiente di inquinamento dell'aria registrato tra tutti i sensori, espresso in $#sym.mu g\/m^3$, degli ultimi 5 minuti, presentato in formato numerico.
- *Scenario Principale*:
  + l'amministratore pubblico accede alla piattaforma di visualizzazione;
  + l'amministratore pubblico seleziona la visualizzazione del dominio ambientale.

#figure(
  image("assets/UML/UC2.12_Visualizzazione-pannello-inquinamento-dell-aria-massimo.png",width:100%),
  caption: [UC2.12 Visualizzazione #glossary("pannello") inquinamento dell'aria massimo]
)

=== UC3: Visualizzazione dashboard dati urbanistici
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: nessuna.
- *Postcondizioni*: l'amministratore pubblico visualizza #glossary("pannelli") contenenti dati relativi al dominio urbanistico.
- *Scenario Principale*:
  + l'amministratore pubblico accede alla piattaforma di visualizzazione;
  + l'amministratore pubblico seleziona la visualizzazione del dominio urbanistico.

#figure(
  image("assets/UML/UC3_Visualizzazione-dashboard-dati-urbanistici.png",width:60%),
  caption: [UC3 Visualizzazione dati urbanistici]
)

#pagebreak()
=== UC3.1: Visualizzazione #glossary("pannello") dati urbanistici
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'amministratore pubblico ha selezionato la visualizzazione relativa al dominio dei dati urbanistici.
- *Postcondizioni*: l'amministratore pubblico visualizza un #glossary("pannello") contenente dati relativi al dominio urbanistico.
- *Scenario Principale*:
  + l'amministratore pubblico accede alla piattaforma di visualizzazione;
  + l'amministratore pubblico seleziona la visualizzazione del dominio urbanistico.
- *Specializzazioni*: [UC3.2],[UC3.3],[UC3.4],[UC3.5],[UC3.6].
- *Estensioni*: [UC9].

#figure(
  image("assets/UML/UC3.1_Visualizzazione-pannello-dati-urbanistici.png",width:100%),
  caption: [UC3.1 Visualizzazione #glossary("pannello") dati urbanistici]
)

=== UC3.2: Visualizzazione grafico a mappa disponibilità parcheggi
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'amministratore pubblico ha selezionato la visualizzazione relativa al dominio dei dati urbanistici.
- *Postcondizioni*: l'amministratore pubblico visualizza un #glossary("pannello") contenente una mappa per indicare la disponibilità dei parcheggi, espressa in numero di parcheggi liberi, registrata da ciascun sensore, attraverso un indicatori numerici posti nelle coordinate dei corrispondenti sensori.
- *Scenario Principale*:
  + l'amministratore pubblico accede alla piattaforma di visualizzazione;
  + l'amministratore pubblico seleziona la visualizzazione del dominio urbanistico.

#figure(
  image("assets/UML/UC3.2_Visualizzazione-grafico-a-mappa-disponibilità-parcheggi.png",width:100%),
  caption: [UC3.2 Visualizzazione grafico a mappa disponibilità di parcheggi]
)

#pagebreak()
=== UC3.3: Visualizzazione informazioni delle colonne di ricarica
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'amministratore pubblico ha selezionato la visualizzazione relativa al dominio dei dati urbanistici.
- *Postcondizioni*: l'amministratore pubblico visualizza dei #glossary("pannelli"), adatti al reperimento di informazioni relative alle colonne di ricarica.
- *Scenario Principale*:
  + l'amministratore pubblico accede alla piattaforma di visualizzazione;
  + l'amministratore pubblico seleziona la visualizzazione del dominio urbanistico.

#figure(
  image("assets/UML/UC3.3_Visualizzazione-informazioni-delle-colonne-di-ricarica.png",width:100%),
  caption: [UC3.3 Visualizzazione posizione e stato colonne di ricarica]
)

=== UC3.3.1: Visualizzazione posizione e disponibilità delle colonne di ricarica
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'amministratore pubblico ha selezionato la visualizzazione relativa al dominio dei dati urbanistici.
- *Postcondizioni*: l'amministratore pubblico visualizza un #glossary("pannello") contenente una mappa indicante la posizione delle colonne di ricarica per auto, mediante indicatori booleani, i quali indicheranno la disponibilità della colonna corrisponente.
- *Scenario Principale*:
  + l'amministratore pubblico accede alla piattaforma di visualizzazione;
  + l'amministratore pubblico seleziona la visualizzazione del dominio urbanistico.

/* TODO: cambiare l'immagine con una creata apposta per il caso d'uso*/
#figure(
  image("assets/UML/UC3.3.1_Visualizzazione-posizione-e-disponibilità-delle-colonne-di-ricarica.png",width:70%),
  caption: [UC3.3.1 Visualizzazione posizione e disponibilità colonne di ricarica]
)

#pagebreak()
=== UC3.3.2: Visualizzazione tabella descrittiva delle colonne di ricarica
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'amministratore pubblico ha selezionato la visualizzazione relativa al dominio dei dati urbanistici.
- *Postcondizioni*: l'amministratore pubblico visualizza un #glossary("pannello") contenente una tabella, la quale esprime, per ciascuna colonna di ricarica per auto, l'erogazione in Watt per ora attuale, indicizzando la tabella in base al nome del sensore.
- *Scenario Principale*:
  + l'amministratore pubblico accede alla piattaforma di visualizzazione;
  + l'amministratore pubblico seleziona la visualizzazione del dominio urbanistico.

/* TODO: cambiare l'immagine con una creata apposta per il caso d'uso*/
#figure(
  image("assets/UML/UC3.3.2_Visualizzazione-tabella-descrittiva-delle-colonne-di-ricarica.png",width:70%),
  caption: [UC3.3.2 Visualizzazione tabella descrittiva delle colonne di ricarica]
)

=== UC3.4: Visualizzazione grafico a mappa congestione stradale
*Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'amministratore pubblico ha selezionato la visualizzazione relativa al dominio dei dati urbanistici.
- *Postcondizioni*: l'amministratore pubblico visualizza un #glossary("pannello") contenente una mappa indicante lo stato di congestione delle strade, mediante gli stati "LOW", "MEDIUM", "HIGH" e "BLOCKED", atto a mostrare il livello di congestione della strada corrispondente.
- *Scenario Principale*:
  + l'amministratore pubblico accede alla piattaforma di visualizzazione;
  + l'amministratore pubblico seleziona la visualizzazione del dominio urbanistico.

#figure(
  image("assets/UML/UC3.4_Visualizzazione-grafico-a-mappa-intensità-traffico.png",width:100%),
  caption: [UC3.4 Visualizzazione grafico a mappa congestione stradale]
)

#pagebreak()
=== UC3.5: Visualizzazione posizione real time delle biciclette elettriche e relativa percentuale batteria
*Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'amministratore pubblico ha selezionato la visualizzazione relativa al dominio dei dati urbanistici.
- *Postcondizioni*: l'amministratore pubblico visualizza un #glossary("pannello") contenente una mappa indicante la posizione in tempo reale delle biciclette elettriche, mediante degli indicatori numerici indicanti la percentuale della batteria posizionata nelle coordinate del mezzo, atto a mostrare la sua posizione.
- *Scenario Principale*:
  + l'amministratore pubblico accede alla piattaforma di visualizzazione;
  + l'amministratore pubblico seleziona la visualizzazione del dominio urbanistico.

#figure(
  image("assets/UML/UC3.5_Visualizzazione-posizione-real-time-delle-biciclette-elettriche-e-relativa-percentuale-batteria.png",width:100%),
  caption: [UC3.5 Visualizzazione posizione real time delle biciclette elettriche e relativa percentuale batteria]
)

/*TODO: cambiare nome nell'immagine*/
=== UC3.6: Visualizzazione indicatore percentuale su mappa riempimento zone ecologiche
*Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'amministratore pubblico ha selezionato la visualizzazione relativa al dominio dei dati urbanistici.
- *Postcondizioni*: l'amministratore pubblico visualizza un #glossary("pannello") contenente una mappa indicante lo stato di riempimento delle zone ecologiche, espresse in valori percentuali, posizionate nelle coordinate delle zone.
- *Scenario Principale*:
  + l'amministratore pubblico accede alla piattaforma di visualizzazione;
  + l'amministratore pubblico seleziona la visualizzazione del dominio urbanistico.

#figure(
  image("assets/UML/UC3.6_Visualizzazione-indicatore-percentuale-su-mappa-riempimento-zone-rifiuti.png",width:100%),
  caption: [UC3.6 Visualizzazione indicatore percentuale su mappa riempimento zone ecologiche]
)

/*TODO: cambiare immagine*/
#pagebreak()
=== UC4: Visualizzazione dashboard #glossary("dati anomali") e superamento soglie
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: nessuna.
- *Postcondizioni*: l'amministratore pubblico visualizza #glossary("pannelli") contenenti dati relativi al superamento delle soglie e alle anomalie rilevate.
- *Scenario Principale*:
  + l'amministratore pubblico seleziona la visualizzazione della deshboard delle anomalie.

#figure(
  image("assets/UML/UC4_Visualizzazione-dashboard-dati-anomali-e-superamento-soglie.png",width:60%),
  caption: [UC4 Visualizzazione dashboard #glossary("dati anomali") e superamento soglie]
)

/*TODO: realizzare immagine corrispondente*/
=== UC4.1: Visualizzazione tabella #glossary("dati anomali")
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: nessuna.
- *Postcondizioni*: l'amministratore pubblico visualizza, in forma tabellare, la lista ordinata di #glossary("dati anomali") rilevati dal sistema.
- *Postcondizioni*: l'amministratore pubblico visualizza un #glossary("pannello") contenente una tabella, la quale mostra tutte le anomalie rilevate, mostrando il valore dell'anomalia, il sensore che l'ha rilevata e il timestamp relativo.
- *Scenario Principale*:
  + l'amministratore pubblico seleziona la visualizzazione della deshboard delle anomalie.

#figure(
  image("assets/UML/UC4.1_Visualizzazione-tabella-dati-anomali.png",width:70%),
  caption: [UC4.1 Visualizzazione tabella #glossary("dati anomali")]
)

/*TODO: realizzare immagine corrispondente*/
#pagebreak()
=== UC4.2: Visualizzazione tabella superamento soglie
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: nessuna.
- *Postcondizioni*: l'amministratore pubblico visualizza un #glossary("pannello") contenente una tabella, la quale mostra tutti i dati superanti le soglie impostate nel sistema, mostrando il valore superante la soglia, il sensore che ha rilevato tale valore e il timestamp relativo.
- *Scenario Principale*:
  + l'amministratore pubblico seleziona la visualizzazione della deshboard delle anomalie.

#figure(
  image("assets/UML/UC4.2_Visualizzazione-tabella-superamento-soglie.png",width:70%),
  caption: [UC4.2 Visualizzazione tabella superamento soglie]
)

/*TODO: per gli UC5.X andare a capire se usano soglie fisse o tramite variabili per gli allert (sempre se possibile)*/
=== UC5: Visualizzazione allerte superamento soglie
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: nessuna.
- *Postcondizioni*: l'amministratore pubblico riceve una notifica di superamento di una soglia impostata.
- *Scenario Principale*:
  + il sistema rileva condizioni che richiedono l'invio di una notifica per segnalare il superamento di una soglia impostata.
#figure(
  image("assets/UML/UC5_Visualizzazione-allerte-superamento-soglie.png",width:70%),
  caption: [UC5 Visualizzazione allerte superamento soglie]
)

/*TODO: andare a fare l'immagine apposta*/
#pagebreak()
=== UC5.1: Visualizzazione allerte superamento soglia temperatura
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: nessuna.
- *Postcondizioni*: l'amministratore pubblico riceve un'allerta relativa alla temperatura che notifica il superamento dei 40° celsius.
- *Scenario Principale*:
  + il sistema rileva una temperatura nella media dei 5 minuti, superiore ai 40° celsius.
#figure(
  image("assets/UML/UC5.1_Visualizzazione-allerte-superamento-soglia-temperatura.png",width:70%),
  caption: [UC5.1 Visualizzazione allerte superamento soglia temperatura]
)

/*TODO: andare a fare l'immagine apposta*/
=== UC5.2: Visualizzazione allerte superamento soglia precipitazioni
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: nessuna.
- *Postcondizioni*: l'amministratore pubblico riceve un'allerta relativa alle precipitazioni che notifica il superamento dei 50 millimetri di pioggia all'ora.
- *Scenario Principale*:
  + il sistema rileva un livello di precipitazioni medie nell'ora, superiore ai 50 millimetri di pioggia all'ora.
#figure(
  image("assets/UML/UC5.2_Visualizzazione-allerte-superamento-soglia-precipitazioni.png",width:70%),
  caption: [UC5.2 Visualizzazione allerte superamento soglia precipitazioni]
)

/*TODO: andare a fare l'immagine apposta*/
#pagebreak()
=== UC5.3: Visualizzazione allerte superamento soglia inquinamento dell'aria
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: nessuna.
- *Postcondizioni*: l'amministratore pubblico riceve un'allerta relativa all'inquinamento dell'aria che notifica il superamento di 80#[#sym.mu]g su metro cubo.
- *Scenario Principale*:
  + il sistema rileva un coefficiente di inquinamento dell'aria (#glossary("PM10")), superiore ai 80#[#sym.mu]g su metro cubo.
#figure(
  image("assets/UML/UC5.3_Visualizzazione-allerte-superamento-soglia-inquinamento-dell'aria.png",width:70%),
  caption: [UC5.3 Visualizzazione allerte superamento soglia inquinamento dell'aria]
)

/*TODO: andare a fare l'immagine apposta*/
=== UC5.4: Visualizzazione allerte superamento soglia bacini idrici
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: nessuna.
- *Postcondizioni*: l'amministratore pubblico riceve un'allerta relativa ai bacini idrici che notifica il superamento del 70% della capienza di un particolare bacino.
- *Scenario Principale*:
  + il sistema rileva che il livello di un particolare bacino idrico è superiore al 70% della sua capienza.
#figure(
  image("assets/UML/UC5.4_Visualizzazione-allerte-superamento-soglia-bacini-idrici.png",width:70%),
  caption: [UC5.4 Visualizzazione allerte superamento soglia bacini idrici]
)

/*TODO: andare a fare l'immagine apposta*/
#pagebreak()
=== UC5.5: Visualizzazione allerte superamento soglia zone ecologiche
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: nessuna.
- *Postcondizioni*: l'amministratore pubblico riceve un'allerta relativa alle zone ecologiche che notifica il superamento dell'80% della capienza di una particolare zona ecologica.
- *Scenario Principale*:
  + il sistema rileva che il livello di una particolare zona ecologica è superiore all'80% della sua capienza.
#figure(
  image("assets/UML/UC5.5_Visualizzazione-allerte-superamento-soglia-zone-ecologiche.png",width:70%),
  caption: [UC5.5 Visualizzazione allerte superamento soglia zone ecologiche]
)

/*Cambiare il numero nell'immagine*/
=== UC6: Applicazione filtri
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: 
  + l'amministratore pubblico sta visualizzando uno o più #glossary("pannelli") con i dati.
- *Postcondizioni*: l'amministratore pubblico visualizza solamente i dati relativi al filtro applicato (oppure ai filtri applicati).
- *Scenario Principale*:
  + l'amministratore pubblico seleziona l'icona o il pulsante relativo al filtro dei dati;
  + l'amministratore pubblico seleziona secondo quali valori filtrare il #glossary("pannello") (o i #glossary("pannelli")).

#figure(
  image("assets/UML/UC6_Applicazione-filtri.png",width:70%),
  caption: [UC6 Applicazione filtri]
)

/*Cambiare il numero nell'immagine*/
#pagebreak()
=== UC6.1: Filtro sotto-insieme di sensori su grafici time series
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: 
  + l'amministratore pubblico sta visualizzando uno o più #glossary("pannelli") time series con i dati;
  + il #glossary("pannello") offre la funzionalità di filtro dei dati tramite selezione di uno o più sensori.
- *Postcondizioni*: l'amministratore pubblico visualizza solamente i dati relativi ai sensori selezionati, all'interno di tale #glossary("pannello").
- *Scenario Principale*:
  + l'amministratore pubblico seleziona il sensore (o i sensori) da visualizzare tramite la legenda.

#figure(
  image("assets/UML/UC6.1_Filtro-sotto-insieme-di-sensori-su-grafici-time-series.png",width:70%),
  caption: [UC6.1 Filtro sotto-insieme di sensori su grafici time series]
)

/*Cambiare il numero nell'immagine*/
=== UC6.2: Filtro per tipologia sensore su tabella
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: 
  + l'amministratore pubblico sta visualizzando uno o più #glossary("pannelli") tabellari con i dati;
  + il #glossary("pannello") offre la funzionalità di filtro dei dati tramite apposita icona o pulsante.
- *Postcondizioni*: l'amministratore pubblico visualizza solamente i dati relativi alle tipologie di sensore selezionate, all'interno di tale #glossary("pannello").
- *Scenario Principale*:
  + l'amministratore pubblico seleziona la funzionalità relativa al filtro dei dati;
  + l'amministratore pubblico seleziona i valori delle tipologie di sensore desiderati.
- *Inclusioni*: [UC6.5].
#figure(
  image("assets/UML/UC6.2_Filtro-per-tipologia-sensore-su-tabella.png",width:100%),
  caption: [UC6.2 Filtro per tipologia sensore su tabella]
)

/*Cambiare il numero nell'immagine*/
#pagebreak()
=== UC6.3: Filtro per nome sensore su tabella
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: 
  + l'amministratore pubblico ha scelto un #glossary("pannello") su cui effettuare l'operazione di filtro;
  + il #glossary("pannello") offre la funzionalità di filtro dei dati.
- *Postcondizioni*: l'amministratore pubblico visualizza solamente i dati relativi ai sensori selezionati, all'interno di tale #glossary("pannello").
- *Scenario Principale*:
  + l'amministratore pubblico seleziona la funzionalità relativa al filtro dei dati;
  + l'amministratore pubblico seleziona i valori dei nomi dei sensori desiderati.
- *Inclusioni*: [UC6.5].

#figure(
  image("assets/UML/UC6.3_Filtro-per-nome-sensore-su-tabella.png",width:100%),
  caption: [UC6.3 Filtro per nome sensore su tabella]
)

/*Cambiare il numero nell'immagine*/
=== UC6.4: Filtro per intervallo temporale
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'amministratore pubblico sta visualizzando uno o più #glossary("pannelli").
- *Postcondizioni*: l'amministratore pubblico visualizza solamente i dati relativi all'intervallo temporale selezionato, in tutti i #glossary("pannelli") della #glossary("dashboard") dove è stato applicato il filtro.
- *Scenario Principale*:
  + l'amministratore pubblico seleziona la funzionalità relativa al filtro dei dati per intervallo temporale;
  + l'amministratore pubblico seleziona l'intervallo temporale desiderato.
- *Inclusioni*: [UC6.5].

#figure(
  image("assets/UML/UC6.4_Filtro-per-intervallo-temporale.png",width:100%),
  caption: [UC6.4 Filtro per intervallo temporale]
)

/*Cambiare il numero nell'immagine*/
#pagebreak()
=== UC6.5: Filtro #glossary("pannelli") collegati
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: 
  + l'amministratore pubblico ha filtrato i dati in un #glossary("pannello");
  + altri #glossary("pannelli") sono collegati a quello filtrato.
- *Postcondizioni*: l'amministratore pubblico visualizza, in tutti i #glossary("pannelli") collegati, solamente i dati relativi al filtro applicato (o ai filtri applicati) al pannello sorgente, nel caso di #glossary("pannelli") che dipendono da altri #glossary("pannelli") per la visualizzazione di dati.
- *Scenario Principale*:
  + il sistema aggiorna tutti i #glossary("pannelli") collegati.

/*Cambiare il numero nell'immagine*/
=== UC7: Ordinamento #glossary("pannelli") tabellari
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'amministratore pubblico ha scelto e sta visualizzando un #glossary("pannello"), con all'interno una tabella, da ordinare per un suo campo.
- *Postcondizioni*: l'amministratore pubblico visualizza i dati ordinati nella tabella, secondo tale campo.
- *Scenario Principale*:
  + l'amministratore pubblico seleziona un campo, della tabella, secondo cui ordinare i dati;
  + in tale campo l'amministratore pubblico seglie tra l'ordinamento crescente e decrescente.

#figure(
  image("assets/UML/UC7_Ordinamento-pannelli-tabellari.png",width:70%),
  caption: [UC7 Ordinamento #glossary("pannelli") tabellari]
)

/*Cambiare il numero nell'immagine*/
#pagebreak()
=== UC8: Modifica layout #glossary("pannelli")
- *Attore Principale*: amministratore pubblico. 
- *Precondizioni*: l'amministratore pubblico sta visualizzando almeno un #glossary("pannello"). 
- *Postcondizioni*: l'amministratore pubblico visualizza il nuovo layout.
- *Scenario Principale*:
  + l'amministratore pubblico sposta o ridimensiona i #glossary("pannelli") a suo piacimento.

#figure(
  image("assets/UML/UC8_Modifica-layout-pannelli.png",width:70%),
  caption: [UC8 Modifica layout #glossary("pannelli")]
)

/*Cambiare il numero nell'immagine*/
=== UC9: Visualizzazione errore nessun dato
- *Attore Principale*: amministratore pubblico. 
- *Precondizioni*: il sistema di visualizzazione non ottiene alcun dato da mostrare all'interno di un #glossary("pannello"). 
- *Postcondizioni*: l'amministratore pubblico visualizza un messaggio di errore segnalante l'assenza di dati da mostrare.
- *Scenario Principale*:
  + l'amministratore pubblico vuole visualizzare qualche #glossary("pannello") [UC1.2] [UC1.1] [UC2.1] [UC3.1]; 
  + il sistema non ha i dati con cui popolare tale pannello.

/*Cambiare il numero nell'immagine*/
#pagebreak()
=== UC10: Inserimento dati temperatura
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persistito i dati inviati dal sensore.
- *Scenario Principale*:
  + il sensore effettua una rilevazione della temperatura;
  + il sensore formatta il messaggio da inviare al sistema, di modo da mandare la temperatura, espressa in gradi Celsius, il timestamp di rilevazione e le proprie coordinate;
  + il sensore invia il messaggio al sistema.
- *Inclusioni*: UC21.

#figure(
  image("assets/UML/UC10_Inserimento-dati-temperatura.png",width:100%),
  caption: [UC10 Inserimento dati temperatura]
)

/*Cambiare il numero nell'immagine*/
=== UC11: Inserimento dati umidità
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persistito i dati inviati dal sensore.
- *Scenario Principale*:
  + il sensore effettua una rilevazione dell'umidità;
  + il sensore formatta il messaggio da inviare al sistema, di modo da mandare la percentuale di umidità, il timestamp di rilevazione e le proprie coordinate;
  + il sensore invia il messaggio al sistema.
- *Inclusioni*: UC21.

#figure(
  image("assets/UML/UC11_Inserimento-dati-umidità.png",width:100%),
  caption: [UC11 Inserimento dati umidità]
)

/*Cambiare il numero nell'immagine*/
#pagebreak()
=== UC12: Inserimento dati velocità e direzione del vento
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persistito i dati inviati dal sensore.
- *Scenario Principale*:
  + il sensore effettua una rilevazione della velocità e della direzione del vento;
  + il sensore formatta il messaggio da inviare al sistema, di modo da mandare la direzione del vento, espressa in gradi (con gli 0° a Nord e i 180° a Sud), la velocità del vento, espressa in chilometri all'ora, il timestamp di rilevazione e le proprie coordinate;
  + il sensore invia il messaggio al sistema.
- *Inclusioni*: UC21.

#figure(
  image("assets/UML/UC12_Inserimento-dati-velocità-e-direzione-del-vento.png",width:100%),
  caption: [UC12 Inserimento dati velocità e direzione del vento]
)

/*Cambiare il numero nell'immagine*/
=== UC13: Inserimento dati precipitazioni
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persistito i dati inviati dal sensore.
- *Scenario Principale*:
  + il sensore effettua una rilevazione quantitativa delle precipitazioni;
  + il sensore formatta il messaggio da inviare al sistema, di modo da mandare la quantità di precipitazioni rilevate, espresse in millimetri all'ora, il timestamp di rilevazione e le proprie coordinate;
  + il sensore invia il messaggio al sistema.
- *Inclusioni*: UC21.

#figure(
  image("assets/UML/UC13_Inserimento-dati-precipitazioni.png",width:100%),
  caption: [UC13 Inserimento dati precipitazioni]
)

/*Cambiare il numero nell'immagine*/
#pagebreak()
=== UC14: Inserimento dati inquinamento dell'aria
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persistito i dati inviati dal sensore.
- *Scenario Principale*:
  + il sensore effettua una rilevazione quantitativa dell'inquinamento dell'aria;
  + il sensore formatta il messaggio da inviare al sistema, di modo da mandare rilevazioni #glossary("PM10") relative all'inquinamento dell'aria, espresse in $#sym.mu g\/m^3$, il timestamp di rilevazione e le proprie coordinate;
  + il sensore invia il messaggio al sistema.
- *Inclusioni*: UC21.

#figure(
  image("assets/UML/UC14_Inserimento-dati-inquinamento-dell-aria.png",width:100%),
  caption: [UC14 Inserimento dati inquinamento dell'aria]
)

/*Cambiare il numero nell'immagine*/
=== UC15: Inserimento dati livello bacini idrici
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persistito i dati inviati dal sensore.
- *Scenario Principale*:
  + il sensore effettua una rilevazione del livello del bacino idrico in cui è installato;
  + il sensore formatta il messaggio da inviare al sistema, di modo da mandare la percentuale di riempimento del bacino idrico controllato, il timestamp di rilevazione e le proprie coordinate;
  + il sensore invia il messaggio al sistema.
- *Inclusioni*: UC21.

#figure(
  image("assets/UML/UC15_Inserimento-dati-livello-bacini-idrici.png",width:100%),
  caption: [UC15 Inserimento dati livello bacini idrici]
)

#pagebreak()
=== UC16: Inserimento dati disponibilità parcheggi
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persistito i dati inviati dal sensore.
- *Scenario Principale*:
   + il sensore rileva gli ingressi e le uscite del parcheggio in cui è installato;
  + il sensore formatta il messaggio da inviare al sistema, di modo da mandare la quantità di parcheggi liberi rilevati nel parcheggio controllato, il timestamp di rilevazione e le proprie coordinate;
  + il sensore invia il messaggio al sistema.
- *Inclusioni*: UC21.

#figure(
  image("assets/UML/UC16_Inserimento-dati-disponibilità-parcheggi.png",width:100%),
  caption: [UC16 Inserimento dati disponibilità e occupazione parcheggi]
)

/*Cambiare il numero nell'immagine*/
=== UC17: Inserimento dati colonne di ricarica
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persistito i dati inviati dal sensore.
- *Scenario Principale*:
  + il sensore effettua una rilevazione del wattaggio erogato dalla colonna di ricarica;
  + il sensore formatta il messaggio da inviare al sistema, di modo da mandare la quantità di energia erogata, espressa in chilowatt all'ora, il timestamp di rilevazione e le proprie coordinate;
  + il sensore invia il messaggio al sistema.
- *Inclusioni*: UC21.

#figure(
  image("assets/UML/UC17_Inserimento-dati-colonne-di-ricarica.png",width:100%),
  caption: [UC17 Inserimento dati colonne di ricarica]
)

/*Cambiare il numero nell'immagine*/
#pagebreak()
=== UC18: Inserimento dati biciclette elettriche
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persistito i dati inviati dal sensore.
- *Scenario Principale*:
  + il sensore effettua una rilevazione della posizione e della percentuale della batteria della bicicletta elettrica su cui è installato;
  + il sensore formatta il messaggio da inviare al sistema, di modo da mandare il timestamp di rilevazione, la percentuale di batteria e le coordinate della bicicletta;
  + il sensore invia il messaggio al sistema.
- *Inclusioni*: UC21.

#figure(
  image("assets/UML/UC18_Inserimento-dati-biciclette-elettriche.png",width:100%),
  caption: [UC18 Inserimento dati biciclette elettriche]
)

/*Cambiare il numero nell'immagine*/
=== UC19: Inserimento dati riempimento zone ecologiche
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persistito i dati inviati dal sensore.
- *Scenario Principale*:
  + il sensore effettua una rilevazione del livello di riempimento del contenitore ecologico associato; 
  + il sensore formatta il messaggio da inviare al sistema, di modo da mandare la percentuale di riempimento della zona ecologica controllata, il timestamp di rilevazione e le proprie coordinate;
  + il sensore invia il messaggio al sistema.
- *Inclusioni*: UC21.

#figure(
  image("assets/UML/UC19_Inserimento-dati-riempimento-zone-ecologiche.png",width:100%),
  caption: [UC19 Inserimento dati riempimento zone ecologiche]
)

/*Cambiare il numero nell'immagine*/
#pagebreak()
=== UC20: Inserimento dati congestione stradale
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persistito i dati inviati dal sensore.
- *Scenario Principale*:
  + il sensore effettua una rilevazione del livello di congestione della strada su cui è installato; 
  + il sensore formatta il messaggio da inviare al sistema, di modo da mandare lo stato della congestione stradale nella strada controllata, espresso nei seguenti stati (ordinati per ordine di congestione crescente) "LOW", "MEDIUM", "HIGH", "BLOCKED", il timestamp di rilevazione e le proprie coordinate;
  + il sensore invia il messaggio al sistema.
- *Inclusioni*: UC21.

#figure(
  image("assets/UML/UC20_Inserimento-dati-congestione-stradale.png",width:100%),
  caption: [UC20 Inserimento dati congestione stradale]
)

/*Cambiare il numero nell'immagine*/
=== UC21: Inserimento dati relativi al sensore
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persistito i dati inviati dal sensore.
- *Scenario Principale*:
  + il sensore allega i dati relativi al proprio stato, ovvero la propria percentuale di batteria (costantemente a 100% nel caso di sensori senza batteria autonoma), la data di ultima manutenzione effettuata su di esso e la propria frequenza di inserimento dati, espressa in secondi, al messaggio da inviare al sistema.

#set heading(numbering: "1.1")

#pagebreak()
= Requisiti
#show figure: set block(breakable: true)

== Requisiti funzionali 
#let C = counter("UC_counter_req")
#let requisiti_funzionali = (
  (
     "Obbligatorio", "L'utente deve poter accedere all'applicazione senza dover effettuare l'autenticazione.", "Capitolato"
  ),
  /*TODO: andare a creare vincolo per la verifica del menù di selezione tra le dashboard*/
  (
     "Obbligatorio", [L'utente deve poter visualizzare un menù di selezione delle #glossary("dashboard"), che permetta di selezionare tra Sensori, Ambientale, Urbanistica e Dati anomali & superamento soglie.], [UC#C.display()]
  ),
  (
     "Obbligatorio", [L'utente deve poter visualizzare una #glossary("dashboard") generale relativa ai sensori.], [UC#C.step()#C.display()]
  ),
  (
     "Obbligatorio", [L'utente deve poter visualizzare le posizioni dei sensori come icone su una mappa, appartenente alla #glossary("dashboard") generale relativa ai sensori.], [#C.step(level:2)UC#C.display()]
  ),
  (
    "Obbligatorio", [L'utente deve poter visualizzare, in forma tabellare, l'elenco dei sensori con la relativa percentuale di batteria, un valore booleano che indica se il sensore va a batteria autonoma o meno e la data di ultima manutenzione effettuata su tale sensore, all'interno della #glossary("dashboard") generale relativa ai sensori.], [#C.step(level:2)UC#C.display()]
  ),
  (
    "Obbligatorio", [L'utente deve poter monitorare i dati provenienti dai sensori relativi ai dati ambientali in una #glossary("dashboard") apposita.], [#C.step()UC#C.display()]
  ),
  (
    "Obbligatorio", [L'utente deve poter visualizzare un #glossary("pannello") contenente un grafico in formato #glossary("time series") rappresentante la media aritmetica della temperatura, espressa in gradi celsius, per ciascun sensore, aggregando i dati per intervalli di 5 minuti, nella #glossary("dashboard") relativa ai dati ambientali.], [#C.step(level:2)#C.step(level:2)UC#C.display()]
  ),
  (
    "Obbligatorio", [L'utente deve poter visualizzare un #glossary("pannello") contenente un grafico in formato #glossary("time series") rappresentante la media aritmetica della percentuale d'umidità, per ciascun sensore, aggregando i dati per intervalli di 5 minuti, nella #glossary("dashboard") relativa ai dati ambientali.], [#C.step(level:2)UC#C.display()]
  ),
  (
    "Desiderabile", [L'utente deve poter visualizzare un #glossary("pannello") contenente una mappa che evidenzi la direzione del vento, mediante frecce aventi origine nelle coordinate del sensore, nella #glossary("dashboard") relativa ai dati ambientali.], [#C.step(level:2)UC#C.display()]
  ),
  (
    "Obbligatorio", [L'utente deve poter visualizzare un #glossary("pannello") contenente una tabella la quale riporta l'ultima velocità del vento, espressa in chilometri all'ora, per ciascun sensore, nella #glossary("dashboard") relativa ai dati ambientali.], [#C.step(level:2)UC#C.display()]
  ),
  (
    "Obbligatorio", [L'utente deve poter visualizzare un #glossary("pannello") contenente un grafico in formato #glossary("time series") rappresentante la media aritmetica dell'intensità delle precipitazioni, espresse in millimetri all'ora, per ciascun sensore, aggregando i dati per intervalli di 5 minuti, nella #glossary("dashboard") relativa ai dati ambientali.], [#C.step(level:2)UC#C.display()]
  ),
  (
    "Desiderabile", [L'utente deve poter visualizzare un #glossary("pannello") contenente un indice numerico, che esprime l'intensità media delle precipitazioni, espressa in millimetri all'ora, degli ultimi 5 minuti, facendo la media dei dati raccolti tra tutti i sensori, nella #glossary("dashboard") relativa ai dati ambientali.], [#C.step(level:2)UC#C.display()]
  ),
  (
    "Obbligatorio", [L'utente deve poter visualizzare un #glossary("pannello") contenente un grafico in formato #glossary("time series") rappresentante la media aritmetica del livello di polveri sottili nell'aria, espressi in $#sym.mu g\/m^3$ (#glossary("PM10")), per ciascun sensore, aggregando i dati per intervalli di 5 minuti, nella #glossary("dashboard") relativa ai dati ambientali.], [#C.step(level:2)UC#C.display()]
  ),
  (
    "Desiderabile", [L'utente deve poter visualizzare un #glossary("pannello") contenente un indice numerico, che esprime l'inquinamento dell'aria medio, espressa in $#sym.mu g\/m^3$ (#glossary("PM10")), degli ultimi 5 minuti, facendo la media dei dati raccolti tra tutti i sensori, nella #glossary("dashboard") relativa ai dati ambientali.], [#C.step(level:2)UC#C.display()]
  ),
  (
    "Obbligatorio", [L'utente deve poter visualizzare un #glossary("pannello") contenente un grafico in formato #glossary("time series") rappresentante la percentuale di riempimento dei bacini idrici, per ciascun sensore, aggregando i dati per intervalli di 5 minuti, nella #glossary("dashboard") relativa ai dati ambientali.], [#C.step(level:2)UC#C.display()]
  ),
  (
    "Desiderabile", [L'utente deve poter visualizzare un #glossary("pannello") contenente un indice numerico, che esprime la temperatura media, espressa in gradi celsius, degli ultimi 5 minuti, facendo la media dei dati raccolti tra tutti i sensori, nella #glossary("dashboard") relativa ai dati ambientali.], [#C.step(level:2)UC#C.display()]
  ),
  (
    "Desiderabile", [L'utente deve poter visualizzare un #glossary("pannello") contenente un indice numerico, che esprime l'inquinamento dell'aria massimo, espresso in $#sym.mu g\/m^3$ (#glossary("PM10")), degli ultimi 5 minuti, tra i dati registrati da tutti i sensori, nella #glossary("dashboard") relativa ai dati ambientali.], [#C.step(level:2)UC#C.display()]
  ),
  (
    "Obbligatorio", [L'utente deve poter monitorare i dati provenienti dai sensori relativi ai dati urbanistici in una #glossary("dashboard") apposita.], [#C.step()UC#C.display()]
  ),
  (
    "Obbligatorio", [L'utente deve poter visualizzare un #glossary("pannello") contenente una mappa che evidenzi il numero di posti liberi nei vari parcheggi, mediante indicatori numerici posti nelle coordinate del sensore, nella #glossary("dashboard") relativa ai dati urbanistici.], [#C.step(level: 2)#C.step(level: 2)UC#C.display()]
  ),
  (
    "Obbligatorio", [L'utente deve poter visualizzare un #glossary("pannello") contenente una mappa che evidenzi la posizione delle colonne di ricarica per auto, mediante indicatori booleani posti nelle coordinate dei sensori che indicheranno la disponibilità di queste, nella #glossary("dashboard") relativa ai dati urbanistici.], [#C.step(level:2)#C.step(level:3)UC#C.display()]
  ),
  (
    "Desiderabile", [L'utente deve poter visualizzare un #glossary("pannello") contenente una tabella la quale riporta l'erogazione delle colonne di ricarica per auto, espressa in Watt all'ora, controllata da ciascun sensore, nella #glossary("dashboard") relativa ai dati urbanistici.], [#C.step(level:3)UC#C.display()]
  ),
  (
    "Obbligatorio", [L'utente deve poter visualizzare un #glossary("pannello") contenente una mappa che evidenzi lo stato di congestione delle strade, mediante gli stati "LOW", "MEDIUM", "HIGH", "BLOCKED", posti nelle coordinate dei sensori controllano queste, nella #glossary("dashboard") relativa ai dati urbanistici.], [#C.step(level:2)UC#C.display()]
  ),
  (
    "Obbligatorio", [L'utente deve poter visualizzare un #glossary("pannello") contenente una mappa che mostri la posizione delle biciclette elettriche controllate, in tempo reale, mediante degli indicatori numerici, indicanti la percentuale della batteria, posizionati nelle coordinate del mezzo, nella #glossary("dashboard") relativa ai dati urbanistici.], [#C.step(level:2)UC#C.display()]
  ),
  (
    "Obbligatorio", [L'utente deve poter visualizzare un #glossary("pannello") contenente una mappa che mostri la percentuale di riempimento delle zone ecologiche, mediante degli indicatori percentuali, posizionati nelle coordinate della zona, nella #glossary("dashboard") relativa ai dati urbanistici.], [#C.step(level:2)UC#C.display()]
  ),
  (
    "Desiderabile", [L'utente deve poter monitorare i #glossary("dati anomali") e i dati superanti delle soglie, in una #glossary("dashboard") apposita.], [#C.step()UC#C.display()]
  ),
  (
    "Opzionale", [L'utente deve poter visualizzare un #glossary("pannello") contenente una tabella che mostri i #glossary("dati anomali"), il sensore che li ha rilevati e il timestamp del rilevamento, nella #glossary("dashboard") relativa ai #glossary("dati anomali") e superanti le soglie.], [#C.step(level:2)UC#C.display()]
  ),
  /*TODO: disambiguare relativamente alla citazione delle soglie*/
  (
    "Desiderabile", [L'utente deve poter visualizzare un #glossary("pannello") contenente una tabella che mostri i dati relativi a temperatura, precipitazioni, inquinamento dell'aria, bacini idrici e zone ecologiche, i cui valori superano una soglia fissata, il sensore che li ha rilevati e il timestamp del rilevamento, nella #glossary("dashboard") relativa ai #glossary("dati anomali") e superanti le soglie.], [#C.step(level:2)UC#C.display()]
  ),
  (
    "Desiderabile",  "L'utente deve poter visualizzare delle notifiche riguardo ad un valore di un dato di tipo temperatura, superante una soglia di 40° celsius.", [#C.step()#C.step(level:2)UC#C.display()]
  ),
  (
    "Desiderabile",  "L'utente deve poter visualizzare delle notifiche riguardo ad un valore di un dato di tipo precipitazioni, superante una soglia di 50 millimetri all'ora.", [#C.step(level:2)UC#C.display()]
  ),
  (
    "Desiderabile", [L'utente deve poter visualizzare delle notifiche riguardo ad un valore di un dato di tipo inquinamento dell'aria (#glossary("PM10")), superante una soglia di 80 microgrammi su metro cubo.], [#C.step(level:2)UC#C.display()]
  ),
  (
    "Desiderabile",  "L'utente deve poter visualizzare delle notifiche riguardo ad un valore di un dato di tipo percentuale riempimento bacini idrici, superante una soglia corrispondente al 70% della capienza di tale bacino.", [#C.step(level:2)UC#C.display()]
  ),
  (
    "Desiderabile",  "L'utente deve poter visualizzare delle notifiche riguardo ad un valore di un dato di tipo percentuale riempimento zone ecologiche, superante una soglia corrispondente all'80% della capienza di tale zona.", [#C.step(level:2)UC#C.display()]
  ),
  (
    "Obbligatorio", [L'utente deve poter filtrare i dati, visualizzati all'interno di un grafico di tipo #glossary("time series"), in base ad un sottoinsieme selezionato di sensori.], [#C.step()#C.step(level:2)UC#C.display()]
  ),
  (
    "Obbligatorio", [L'utente deve poter filtrare i dati, visualizzati all'interno di una tabella, in base ad un sotto-insieme di sensori, selezionandone la tipologia di interesse.], [#C.step(level:2)UC#C.display()]
  ),
  (
    "Obbligatorio", [L'utente deve poter filtrare i dati, visualizzati all'interno di una tabella, in base ad un sotto-insieme di sensori, selezionando i nomi dei sensori di interesse.], [#C.step(level:2)UC#C.display()]
  ),
  (
    "Obbligatorio", [L'utente deve poter filtrare i dati in base ad un intervallo temporale, mostrando quindi nella #glossary("dashboard") d'interesse, solamente i dati aventi un timestamp in tale intervallo.], [#C.step(level:2)UC#C.display()]
  ),
  (
    "Obbligatorio", [L'utente deve poter visualizzare l'applicazione dei filtri in determinati #glossary("pannelli"), riflessi anche sui #glossary("pannelli") collegati ai primi.], [#C.step(level:2)UC#C.display()]
  ),
  (
    "Desiderabile", [Nei #glossary("pannelli") con tabelle, l'utente deve poter ordinare i dati in base alle loro colonne, sia in ordine crescente che descrescente.], [#C.step()UC#C.display()]
  ),
  (
    "Desiderabile", [L'utente deve poter modificare il layout della #glossary("dashboard") visualizzata, agendo su posizione e dimensione dei #glossary("pannelli").], [#C.step()UC#C.display()]
  ),
  (
    "Obbligatorio", [L'utente deve poter visualizzare un messaggio di errore, qualora il sistema di visualizzazione non sia in grado di reperire o non abbia dati da mostrare all'utente per un determinato #glossary("pannello").], [#C.step()UC#C.display()]
  ),
  (
    "Obbligatorio", "Il sensore deve poter mandare e far persistere dati relativi alla temperatura, espressa in gradi Celsius, il timestamp di rilevazione e le proprie coordinate.", [#C.step()UC#C.display()]
  ),
  (
    "Obbligatorio", "Il sensore deve poter mandare e far persistere dati relativi all'umidità, espressa in percentuale, il timestamp di rilevazione e le proprie coordinate.", [#C.step()UC#C.display()]
  ),
  (
    "Obbligatorio", "Il sensore deve poter mandare e far persistere dati relativi alla velocità del vento, espressa in chilometri all'ora, alla direzione del vento, espressa in gradi (con gli 0° a Nord e i 180° a Sud), il timestamp di rilevazione e le proprie coordinate.", [#C.step()UC#C.display()]
  ),
  (
    "Obbligatorio", "Il sensore deve poter mandare e far persistere dati relativi alle precipitazioni, espresse in millimetri all'ora, il timestamp di rilevazione e le proprie coordinate.", [#C.step()UC#C.display()]
  ),
  (
    "Obbligatorio", [Il sensore deve poter mandare e far persistere dati relativi all'inquinamento dell'aria, espresso in microgrammi al metro cubo (#glossary("PM10")), il timestamp di rilevazione e le proprie coordinate.], [#C.step()UC#C.display()]
  ),
  (
    "Obbligatorio", "Il sensore deve poter mandare e far persistere dati relativi alla percentuale di riempimento del bacino idrico controllato, il timestamp di rilevazione e le proprie coordinate.", [#C.step()UC#C.display()]
  ),
  (
    "Obbligatorio", "Il sensore deve poter mandare e far persistere dati relativi al numero di parcheggi disponibili all'interno del parcheggio auto controllato, il timestamp di rilevazione e le proprie coordinate.", [#C.step()UC#C.display()]
  ),
  (
    "Obbligatorio", "Il sensore deve poter mandare e far persistere dati relativi alla quantità di energia erogata dalla colonna di ricarica controllata, espresse in chilowatt all'ora, il timestamp di rilevazione e le proprie coordinate.", [#C.step()UC#C.display()]
  ),
  (
    "Obbligatorio", "Il sensore deve poter mandare e far persistere dati relativi alle coordinate della bicicletta elettrica controllata, la percentuale di batteria della stessa e il timestamp di rilevazione.", [#C.step()UC#C.display()]
  ),
  (
    "Obbligatorio", "Il sensore deve poter mandare e far persistere dati relativi alla percentuale di riempimento della zona ecologica controllata, il timestamp di rilevazione e le proprie coordinate.", [#C.step()UC#C.display()]
  ),
  (
    "Obbligatorio", [Il sensore deve poter mandare e far persistere dati relativi allo stato della congestione stradale nella strada controllata, espresse in stati (in ordine di crescente congestione sono: "LOW", "MEDIUM", "HIGH", "BLOCKED"), il timestamp di rilevazione e le proprie coordinate.], [#C.step()UC#C.display()]
  ),
  (
    "Desiderabile", "Il sensore deve poter mandare e far persistere dati relativi al proprio stato, ovvero la propria percentuale di batteria (costantemente a 100% nel caso di sensori senza batteria autonoma), la data di ultima manutenzione effettuata su di esso, e la propria frequenza di inserimento dati espressa in secondi.", [#C.step()UC#C.display()]
  )
)

#let requisiti_funzionali_con_codice = generate_requirements_array("F", requisiti_funzionali)
#figure(
requirements_table(requisiti_funzionali_con_codice),
caption: "Requisiti funzionali")


#pagebreak()
== Requisiti di qualità
#let requisiti_qualita = (
  (
  "Obbligatorio","Il superamento di test che dimostrino il corretto funzionamento dei servizi utilizzati e delle funzionalità implementate. La copertura di test deve essere almeno dell'80% e deve essere dimostrata tramite report.","Capitolato",
  ),
  (
  "Obbligatorio",[Il sistema deve essere testato nella sua interezza tramite #glossary("test end-to-end")],"Capitolato",
  ),
  (
  "Obbligatorio", [Viene richiesta una #glossary("documentazione") sulle scelte implementative e progettuali, che dovranno essere accompagnate da motivazioni.],"Capitolato",
  ),
  (
  "Obbligatorio","La documentazione dovrà riguardare anche problemi aperti ed eventuali possibili soluzioni da approfondire in futuro.","Capitolato"
  )
)

#let requisiti_qualita_con_codice = generate_requirements_array("Q", requisiti_qualita)
#figure(
requirements_table(requisiti_qualita_con_codice),
caption: "Requisiti di qualità")

#pagebreak()
== Requisiti di vincolo
#let requisiti_vincolo = (
  (
  "Obbligatorio",[Il sistema deve gestire un carico di #glossary("dati in entrata") tra i 50 e i 100 dati al secondo],"Verbale esterno",
  ),
  (
  "Obbligatorio","La creazione di un simulatore di almeno una sorgente dati","Capitolato",
  ),
  (
  "Obbligatorio","La simulazione deve produrre dati realistici","Capitolato",
  ),
  (
  "Obbligatorio","I dati vanno raccolti in un database OLAP","Capitolato",
  ),
  (
  "Obbligatorio","I dati vanno passati ad un sistema di stream processing","Capitolato",
  ),
  (
  "Obbligatorio",[Deve esistere una #glossary("dashboard") che riporti almeno i dati di un sensore],"Capitolato",
  ),
  (
  "Desiderabile","La simulazione di più sorgenti dati","Capitolato",
  ),
  (
  "Opzionale","Messa in evidenza di relazioni tra dati provenienti da sorgenti diverse","Capitolato",
  ),
  (
  "Opzionale","Un sistema di allerta che notifichi l'utente in caso di anomalie o eventi critici","Verbale esterno",
  ),
  (
  "Opzionale","La previsione di eventi futuri, basata su dati storici e attuali","Capitolato",
  ),
  (
  "Desiderabile",[Deve esistere una #glossary("dashboard") avanzata contenente: una mappa della città, widget e informazioni sui sensori (ad esempio il tipo di sensore, il modello, ecc.).],"Capitolato"
  )
)

#let requisiti_vincolo_con_codice = generate_requirements_array("V", requisiti_vincolo)
#figure(
requirements_table(requisiti_vincolo_con_codice),
caption: "Requisiti di vincolo")

#pagebreak()
== Tracciamento
=== Requisiti funzionali - Fonti
#figure(
table(
  columns: (auto, auto),
  inset: 10pt,
  align: horizon,
  [*Requisiti*], [*Fonti*],
  ..requisiti_funzionali_con_codice.map(content => (content.at(0),content.at(3))).flatten().map(content => [#content])
),
caption: "Requisiti funzionali - Fonti")

=== Requisiti qualità - Fonti
#figure(
table(
  columns: (auto, auto),
  inset: 10pt,
  align: horizon,
  [*Requisiti*], [*Fonti*],
  ..requisiti_qualita_con_codice.map(content => (content.at(0),content.at(3))).flatten().map(content => [#content])
),
caption: "Requisiti qualità - Fonti")

=== Requisiti vincolo - Fonti
#figure(
table(
  columns: (auto, auto),
  inset: 10pt,
  align: horizon,
  [*Requisiti*], [*Fonti*],
  ..requisiti_vincolo_con_codice.map(content => (content.at(0),content.at(3))).flatten().map(content => [#content])
),
caption: "Requisiti vincolo - Fonti")

#pagebreak()
== Riepilogo
#let funzionale_obb = requisiti_funzionali.filter(content => content.at(0) == "Obbligatorio").len()
#let funzionale_des = requisiti_funzionali.filter(content => content.at(0) == "Desiderabile").len()
#let funzionale_opz = requisiti_funzionali.filter(content => content.at(0) == "Opzionale").len()
#let funzionale_tot = funzionale_des + funzionale_obb + funzionale_opz

#let qualità_obb = requisiti_qualita.filter(content => content.at(0) == "Obbligatorio").len()
#let qualità_des = requisiti_qualita.filter(content => content.at(0) == "Desiderabile").len()
#let qualità_opz = requisiti_qualita.filter(content => content.at(0) == "Opzionale").len()
#let qualità_tot = qualità_des + qualità_obb + qualità_opz

#let vincolo_obb = requisiti_vincolo.filter(content => content.at(0) == "Obbligatorio").len()
#let vincolo_des = requisiti_vincolo.filter(content => content.at(0) == "Desiderabile").len()
#let vincolo_opz = requisiti_vincolo.filter(content => content.at(0) == "Opzionale").len()
#let vincolo_tot = vincolo_des + vincolo_obb + vincolo_opz

#figure(
table(
  columns: (auto, auto, auto, auto, auto),
  inset: 10pt,
  align: horizon,
  [*Tipologia*], [*Obbligatori*], [*Desiderabili*], [*Opzionali*], [*Totale*],
  [funzionali], [#funzionale_obb], [#funzionale_des], [#funzionale_opz], [#funzionale_tot],
  [di qualità], [#qualità_obb], [#qualità_des], [#qualità_opz], [#qualità_tot],
  [di vincolo], [#vincolo_obb], [#vincolo_des], [#vincolo_opz], [#vincolo_tot]
),
caption: "Tabella di riepilogo dei vincoli")