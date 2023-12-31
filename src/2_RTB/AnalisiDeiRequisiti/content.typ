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
L'obiettivo consiste nella creazione di una piattaforma di monitoraggio e gestione di una #glossary("Smart City"). L'utente, individuato nell'amministratore pubblico, potrà farne impiego per migliorare la qualità generale della vita e l'efficienza dei servizi nel contesto di un'area urbana. L'utente sarà in grado di monitorare, attraverso la consultazione di una dashboard, lo stato della città, esaminando aspetti ambientali, logistici e di sicurezza. Questo cruscotto includerà rappresentazioni grafiche basate su dati provenienti da dei sensori installati all'interno dell'area geografica della città.

== Funzionalità del prodotto
Il prodotto si compone di due parti principali:
- *Una #glossary("data pipeline")* in grado di raccogliere, persistere e processare dati provenienti da più sorgenti (ovvero i #glossary("sensori")) in #glossary("real-time");
- *Una dashboard* che permette di visualizzare i dati raccolti.

La piattaforma prevede fondamentalmente una tipologia di utente: l'amministratore pubblico. Questo utente avrà accesso alla dashboard e prenderà visione di diverse metriche e indicatori sullo stato della città, mediante diversi strumenti di visualizzazione.

== Utenti e caratteristiche
Il prodotto, destinato ad amministratori pubblici, consente loro di ottenere una panoramica sulle condizioni della città. Ciò fornisce loro una base solida per prendere decisioni ponderate riguardo la gestione delle risorse e sull'implementazione dei servizi, risultando cruciale per il miglioramento dell'efficienza complessiva della gestione urbana. Si presuppone che l'amministratore pubblico abbia conoscenze di analisi e di interpretazione dei dati, tali da poter trarre un concreto beneficio dal controllo della dashboard.

= Casi d'uso
== Scopo
In questa sezione si vogliono elencare e descrivere tutti i casi d'uso individuati dall'analisi del capitolato e dalle interazioni avute con la Proponente. In particolare, si individuano gli #glossary("attori") e le funzionalità che questi possono svolgere. Ogni caso d'uso possiede un codice, la cui struttura è descritta nelle _Norme di Progetto v1.0_.

== Attori
Il sistema si interfaccerà con due attori diversi:
- *Amministratore pubblico*: è un utente che ha accesso alla dashboard in tutte le sue funzionalità e può visualizzare i dati raccolti dai sensori, mediante quest'ultima;
- *#glossary("Sensore")*: è un dispositivo in grado di effettuare misurazioni relative al proprio dominio di interesse. Questi dati possono essere letti ed utilizzati dal sistema.

Relativamente all'utilizzo della dashboard, viene definito un unico attore con accesso completo alle funzionalità, in quanto per sua natura l' amministratore pubblico possiede le competenze tecniche necessarie per poter interagire con essa in tutte le sue parti.

#figure(
  image("assets/attori.png", width: 40%),
  caption: [Gerarchia degli attori]
)

== Elenco dei casi d'uso

#set heading(numbering: none)

=== UC1: Visualizzazione dashboard generale sensori
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: nessuna.
- *Postcondizioni*: l'attore visualizza i grafici relativi ai dati prodotti dai sensori, all'interno di un unica dashboard. 
- *Scenario Principale*:
  + l'attore accede al sistema; 
  + l'attore seleziona la visualizzazione della dashboard generale relativa ai sensori;
  + l'attore visualizza la dashboard contenente i grafici.

#figure(
  image("assets/UML/UC1_Visualizzazione-panoramica-generale-sensori.png",width:70%),
  caption: [UC1 Visualizzazione dashboard generale sensori]
)

=== UC1.1: Visualizzazione posizione sensori su mappa
- *Attore Principale*: amministratore pubblico. 
- *Precondizioni*: nessuna.
- *Postcondizioni*: l'attore visualizza le posizioni dei sensori come icone su una mappa. 
- *Scenario Principale*:
  + l'attore accede al sistema; 
  + l'attore seleziona la visualizzazione della dashboard generale relativa ai sensori;
  + l'attore visualizza il pannello.
- *Estensioni*: [UC9].

#figure(
  image("assets/UML/UC1.1_Visualizzazione-posizione-sensori-su-mappa.png",width:100%),
  caption: [UC1.1 Visualizzazione posizione sensori su mappa]
)

=== UC1.2: Visualizzazione tabella sensori
- *Attore Principale*: amministratore pubblico. 
- *Precondizioni*: nessuna.
- *Postcondizioni*: l'attore visualizza il pannello relativo ai dati sensori, in forma tabellare.
- *Scenario Principale*:
  + l'attore accede al sistema; 
  + l'attore seleziona la visualizzazione della dashboard generale relativa ai sensori;
- *Estensioni*: [UC9].

#figure(
  image("assets/UML/UC1.2_Visualizzazione-tabella-sensori.png",width:100%),
  caption: [UC1.2 Visualizzazione tabella sensori]
)

=== UC2: Visualizzazione dati ambientali
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: nessuna.
- *Postcondizioni*: l'attore visualizza pannelli contenenti dati relativi al dominio ambientale.
- *Scenario Principale*:
  + l'attore accede al sistema;
  + l'attore seleziona la visualizzazione del dominio ambientale.

#figure(
  image("assets/UML/UC2_Visualizzazione-dati-ambientali.png",width:70%),
  caption: [UC2 Visualizzazione dati ambientali]
)

=== UC2.1: Visualizzazione pannello dati ambientali
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'attore ha selezionato la visualizzazione relativa al dominio dei dati ambientali.
- *Postcondizioni*: l'attore visualizza un pannello contenente dati relativi al dominio ambientale.
- *Scenario Principale*:
  + l'attore accede al sistema;
  + l'attore seleziona la visualizzazione del dominio ambientale.
- *Specializzazioni*: [UC2.2],[UC2.3],[UC2.4],[UC2.5],[UC2.6],[UC2.7],[UC2.8],[UC2.9],[UC2.10],[UC2.11].
- *Estensioni*: [UC9].

#figure(
  image("assets/UML/UC2.1_Visualizzazione-pannello-dati-ambientali.png",width:100%),
  caption: [UC2.1 Visualizzazione pannello dati ambientali]
)

=== UC2.2: Visualizzazione pannello #glossary("time series") per temperatura
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'attore ha selezionato la visualizzazione relativa al dominio dei dati ambientali.
- *Postcondizioni*: l'attore visualizza un pannello contenente dati relativi alla temperatura, in gradi celsius, in formato time series.
- *Scenario Principale*:
  + l'attore accede al sistema;
  + l'attore seleziona la visualizzazione del dominio ambientale.

#figure(
  image("assets/UML/UC2.2_Visualizzazion-pannello-time-series-per-temperatura.png",width:100%),
  caption: [UC2.2 Visualizzazione pannello time series per temperatura]
)

=== UC2.3: Visualizzazione pannello time series per umidità
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'attore ha selezionato la visualizzazione relativa al dominio dei dati ambientali.
- *Postcondizioni*: l'attore visualizza un pannello contenente un grafico, in formato time series, con indicazioni percentuali, relative a misurazioni di umidità.
- *Scenario Principale*:
  + l'attore accede al sistema;
  + l'attore seleziona la visualizzazione del dominio ambientale.
#figure(
  image("assets/UML/UC2.3_Visualizzazione-pannello-time-series-umidità.png",width:100%),
  caption: [UC2.3 Visualizzazione pannello time series per umidità]
)

=== UC2.4: Visualizzazione grafico a mappa velocità e direzione del vento
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'attore ha selezionato la visualizzazione relativa al dominio dei dati ambientali.
- *Postcondizioni*: l'attore visualizza un pannello contenente dati relativi alla velocità, espressa in chilometri orari, e alla direzione del vento, su di una mappa che mostra delle frecce direzionate e colorate in base alla velocità.
- *Scenario Principale*:
  + l'attore accede al sistema;
  + l'attore seleziona la visualizzazione del dominio ambientale.

#figure(
  image("assets/UML/UC2.4_Visualizzazione-grafico-a-mappa-velocità-e-direzione-del-vento.png",width:100%),
  caption: [UC2.4 Visualizzazione grafico a mappa velocità e direzione del vento]
)

=== UC2.5: Visualizzazione pannello time series per precipitazioni
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'attore ha selezionato la visualizzazione relativa al dominio dei dati ambientali.
- *Postcondizioni*: l'attore visualizza un pannello in formato time series, relativo all'intensità 
delle precipitazioni, in millimetri orari di pioggia.
- *Scenario Principale*:
  + l'attore accede al sistema;
  + l'attore seleziona la visualizzazione del dominio ambientale.

#figure(
  image("assets/UML/UC2.5_Visualizzazione-pannello-time-series-per-precipitazioni.png",width:100%),
  caption: [UC2.5 Visualizzazione pannello time series per precipitazioni]
)

=== UC2.6: Visualizzazione pannello precipitazioni medie
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'attore ha selezionato la visualizzazione relativa al dominio dei dati ambientali.
- *Postcondizioni*: l'attore visualizza un pannello contenente dati relativi alle precipitazioni medie, espressi in formato numerico (millimetri di pioggia), provenienti dai sensori attivi negli ultimi cinque minuti.
- *Scenario Principale*:
  + l'attore accede al sistema;
  + l'attore seleziona la visualizzazione del dominio ambientale.

#figure(
  image("assets/UML/UC2.6_Visualizzazione-pannello-precipitazioni-medie.png",width:100%),
  caption: [UC2.6 Visualizzazione pannello precipitazioni medie]
)

=== UC2.7: Visualizzazione pannello time series per inquinamento dell'aria
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'attore ha selezionato la visualizzazione relativa al dominio dei dati ambientali.
- *Postcondizioni*: l'attore visualizza un pannello contenente dati relativi al livello di polveri sottili nell'aria, in $#sym.mu g\/m^3$, in formato time series.
- *Scenario Principale*:
  + l'attore accede al sistema;
  + l'attore seleziona la visualizzazione del dominio ambientale.

#figure(
  image("assets/UML/UC2.7_Visualizzazione-pannello-time-series-per-inquinamento-dell-aria.png",width:100%),
  caption: [UC2.7 Visualizzazione pannello time series per inquinamento dell'aria]
)

=== UC2.8: Visualizzazione pannello inquinamento dell'aria medio
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'attore ha selezionato la visualizzazione relativa al dominio dei dati ambientali.
- *Postcondizioni*: l'attore visualizza un pannello contenente la media della concentrazione di inquinanti dell'aria, in $#sym.mu g\/m^3$, considerando tutti i sensori attivi negli ultimi 5 minuti, e presentata in formato numerico.
- *Scenario Principale*:
  + l'attore accede al sistema;
  + l'attore seleziona la visualizzazione del dominio ambientale.

#figure(
  image("assets/UML/UC2.8_Visualizzazione-pannello-inquinamento-dell-aria-medio.png",width:100%),
  caption: [UC2.8 Visualizzazione pannello inquinamento dell'aria medio]
)

=== UC2.9: Visualizzazione pannello time series per livello dei bacini idrici
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'attore ha selezionato la visualizzazione relativa al dominio dei dati ambientali.
- *Postcondizioni*: l'attore visualizza un pannello in formato time series, relativo alle misurazioni del livello di riempimento dei bacini idrici, indicate in valori percentuale.
- *Scenario Principale*:
  + l'attore accede al sistema;
  + l'attore seleziona la visualizzazione del dominio ambientale.

#figure(
  image("assets/UML/UC2.9_Visualizzazione-pannello-time-series-per-livello-dei-bacini-idrici.png",width:100%),
  caption: [UC2.9 Visualizzazione pannello time series per livello dei bacini idrici]
)

=== UC2.10: Visualizzazione pannello temperatura media
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'attore ha selezionato la visualizzazione relativa al dominio dei dati ambientali.
- *Postcondizioni*: l'attore visualizza un pannello contenente dati relativi alla temperatura media, in gradi celsius, tra tutti i sensori attivi negli ultimi 5 minuti, in formato numerico.
- *Scenario Principale*:
  + l'attore accede al sistema;
  + l'attore seleziona la visualizzazione del dominio ambientale.

#figure(
  image("assets/UML/UC2.10_Visualizzazione-pannello-temperatura-media.png",width:100%),
  caption: [UC2.10 Visualizzazione pannello temperatura media]
)

=== UC2.11: Visualizzazione pannello inquinamento dell'aria massimo
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'attore ha selezionato la visualizzazione relativa al dominio dei dati ambientali.
- *Postcondizioni*: l'attore visualizza un pannello contenente dati relativi all'inquinamento dell'aria, in $#sym.mu g\/m^3$, massimo tra tutti i sensori attivi negli ultimi 5 minuti, in formato numerico.
- *Scenario Principale*:
  + l'attore accede al sistema;
  + l'attore seleziona la visualizzazione del dominio ambientale.

#figure(
  image("assets/UML/UC2.11_Visualizzazione-pannello-inquinamento-dell-aria-massimo.png",width:100%),
  caption: [UC2.11 Visualizzazione pannello inquinamento dell'aria massimo]
)

=== UC3: Visualizzazione dati urbanistici
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: nessuna.
- *Postcondizioni*: l'attore visualizza pannelli contenenti dati relativi al dominio urbanistico.
- *Scenario Principale*:
  + l'attore accede al sistema;
  + l'attore seleziona la visualizzazione del dominio urbanistico.

#figure(
  image("assets/UML/UC3_Visualizzazione-dati-urbanistici.png",width:70%),
  caption: [UC3 Visualizzazione dati urbanistici]
)

=== UC3.1: Visualizzazione pannello dati urbanistici
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'attore ha selezionato la visualizzazione relativa al dominio dei dati urbanistici.
- *Postcondizioni*: l'attore visualizza un pannello contenente dati relativi al dominio urbanistico.
- *Scenario Principale*:
  + l'attore accede al sistema;
  + l'attore seleziona la visualizzazione del dominio urbanistico.
- *Specializzazioni*: [UC3.2],[UC3.3],[UC3.4],[UC3.5],[UC3.6].
- *Estensioni*: [UC9].

#figure(
  image("assets/UML/UC3.1_Visualizzazione-pannello-dati-urbanistici.png",width:100%),
  caption: [UC3.1 Visualizzazione pannello dati urbanistici]
)

=== UC3.2: Visualizzazione grafico a mappa disponibilità  parcheggi
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'attore ha selezionato la visualizzazione relativa al dominio dei dati urbanistici.
- *Postcondizioni*: l'attore visualizza un grafico a mappa atto ad indicare la disponibilità di parcheggi nella zona visualizzata e la loro occupazione, in termini di parcheggi liberi.
- *Scenario Principale*:
  + l'attore accede al sistema;
  + l'attore seleziona la visualizzazione del dominio urbanistico.

#figure(
  image("assets/UML/UC3.2_Visualizzazione-grafico-a-mappa-disponibilità-dei-parcheggi.png",width:100%),
  caption: [UC3.2 Visualizzazione grafico a mappa disponibilità di parcheggi]
)

=== UC3.3: Visualizzazione posizione e stato colonne ricarica
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'attore ha selezionato la visualizzazione relativa al dominio dei dati urbanistici.
- *Postcondizioni*: l'attore visualizza un grafico a mappa relativo alle colonne, atto ad indicarne la posizione ,il tipo, in termini di rapidità di ricarica, e la disponibilità.  
- *Scenario Principale*:
  + l'attore accede al sistema;
  + l'attore seleziona la visualizzazione del dominio urbanistico.

#figure(
  image("assets/UML/UC3.3_Visualizzazione-posizione-e-stato-colonne-ricarica.png",width:100%),
  caption: [UC3.3 Visualizzazione posizione e stato colonne ricarica]
)

=== UC3.4: Visualizzazione grafico a mappa intensità traffico
*Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'attore ha selezionato la visualizzazione relativa al dominio dei dati urbanistici.
- *Postcondizioni*: l'attore visualizza un grafico a mappa atto ad illustrare il flusso del traffico ed eventuali congestioni.
- *Scenario Principale*:
  + l'attore accede al sistema;
  + l'attore seleziona la visualizzazione del dominio urbanistico.

#figure(
  image("assets/UML/UC3.4_Visualizzazione-grafico-a-mappa-intensità-traffico.png",width:100%),
  caption: [UC3.4 Visualizzazione grafico a mappa intensità traffico]
)

=== UC3.5: Visualizzazione posizione real time delle biciclette elettriche e relativa percentuale batteria
*Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'attore ha selezionato la visualizzazione relativa al dominio dei dati urbanistici.
- *Postcondizioni*: l'attore visualizza un grafico a mappa atto ad indicare la posizione e la percentuale delle batterie delle biciclette elettriche. 
- *Scenario Principale*:
  + l'attore accede al sistema;
  + l'attore seleziona la visualizzazione del dominio urbanistico.

#figure(
  image("assets/UML/UC3.5_Visualizzazione-posizione-real-time-delle-biciclette-elettriche-e-relativa-percentuale-batteria.png",width:100%),
  caption: [UC3.5 Visualizzazione posizione real time delle biciclette elettriche e relativa percentuale batteria]
)

=== UC3.6: Visualizzazione indicatore percentuale su mappa riempimento zone rifiuti
*Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'attore ha selezionato la visualizzazione relativa al dominio dei dati urbanistici.
- *Postcondizioni*: l'attore visualizza un grafico a mappa atto ad indicare lo stato di riempimento, in percentuale, delle zone rifiuti. 
  + l'attore accede al sistema;
  + l'attore seleziona la visualizzazione del dominio urbanistico.

#figure(
  image("assets/UML/UC3.6_Visualizzazione-indicatore-percentuale-su-mappa-riempimento-zone-rifiuti.png",width:100%),
  caption: [UC3.6 Visualizzazione indicatore percentuale su mappa riempimento zone rifiuti]
)

=== UC4: Visualizzazione dati anomali rilevati
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'attore sta usando il sistema.
- *Postcondizioni*: l'attore visualizza, in forma tabellare, la lista ordinata di anomalie nei dati rilevati dal sistema.
- *Scenario Principale*:
  + l'attore seleziona la visualizzazione delle anomalie.

#figure(
  image("assets/UML/UC4_Visualizzazione-dati-anomali-rilevati.png",width:70%),
  caption: [UC4 Visualizzazione dati anomali rilevati]
)

=== UC5: Visualizzazione allerte superamento soglie
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: nessuna.
- *Postcondizioni*: l'attore riceve una notifica di superamento di una soglia impostata.
- *Scenario Principale*:
  + il sistema rileva condizioni che richiedono l'invio di una notifica per segnalare il superamento di una soglia impostata.
#figure(
  image("assets/UML/UC5_Visualizzazione-allerte-superamento-soglie.png",width:70%),
  caption: [UC5 Visualizzazione allerte superamento soglie]
)

=== UC6: Applicazione filtri
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: 
  + l'attore sta visualizzando uno o più pannelli con i dati.
- *Postcondizioni*: l'attore visualizza solamente i dati relativi al filtro applicato (oppure ai filtri applicati).
- *Scenario Principale*:
  + l'attore seleziona l'icona o il pulsante relativo al filtro dei dati;
  + l'attore seleziona secondo quali valori filtrare il pannello (o i pannelli).

#figure(
  image("assets/UML/UC6_Applicazione-filtri.png",width:70%),
  caption: [UC6 Applicazione filtri]
)

=== UC6.1: Filtro sotto-insieme di sensori su grafici time series
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: 
  + l'attore sta visualizzando uno o più pannelli time series con i dati;
  + il pannello offre la funzionalità di filtro dei dati tramite selezione di uno o più sensori.
- *Postcondizioni*: l'attore visualizza solamente i dati relativi al filtro applicato.
- *Scenario Principale*:
  + l'attore seleziona il sensore (o i sensori) da visualizzare tramite la legenda.

#figure(
  image("assets/UML/UC6.1_Filtro-sotto-insieme-di-sensori-su-grafici-time-series.png",width:70%),
  caption: [UC6.1 Filtro sotto-insieme di sensori su grafici time series]
)

=== UC6.2: Filtro per tipologia sensore su tabella
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: 
  + l'attore sta visualizzando uno o più pannelli tabellari con i dati;
  + il pannello offre la funzionalità di filtro dei dati tramite apposita icona o pulsante.
- *Postcondizioni*: l'attore visualizza solamente i dati relativi al filtro applicato.
- *Scenario Principale*:
  + l'attore seleziona la funzionalità relativa al filtro dei dati;
  + l'attore seleziona i valori delle tipologie di sensore desiderati.
- *Inclusioni*: [UC6.5].
#figure(
  image("assets/UML/UC6.2_Filtro-per-tipologia-sensore-su-tabella.png",width:100%),
  caption: [UC6.2 Filtro per tipologia sensore su tabella]
)

=== UC6.3: Filtro per nome sensore su tabella
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: 
  + l'attore ha scelto un pannello su cui effettuare l'operazione di filtro;
  + il pannello offre la funzionalità di filtro dei dati.
- *Postcondizioni*: l'attore visualizza solamente i dati relativi al filtro applicato.
- *Scenario Principale*:
  + l'attore seleziona la funzionalità relativa al filtro dei dati;
  + l'attore seleziona i valori dei nomi dei sensori desiderati.
- *Inclusioni*: [UC6.5].

#figure(
  image("assets/UML/UC6.3_Filtro-per-nome-sensore-su-tabella.png",width:100%),
  caption: [UC6.3 Filtro per nome sensore su tabella]
)

=== UC6.4: Filtro per intervallo temporale
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'attore sta visualizzando uno o più pannelli.
- *Postcondizioni*: l'attore visualizza solamente i dati relativi all'intervallo temporale selezionato.
- *Scenario Principale*:
  + l'attore seleziona la funzionalità relativa al filtro dei dati per intervallo temporale;
  + l'attore seleziona l'intervallo temporale desiderato.
- *Inclusioni*: [UC6.5].

#figure(
  image("assets/UML/UC6.4_Filtro-per-intervallo-temporale.png",width:100%),
  caption: [UC6.4 Filtro per intervallo temporale]
)

=== UC6.5: Filtro pannelli collegati
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: 
  + l'attore ha filtrato i dati in un pannello;
  + altri pannelli sono collegati a quello filtrato.
- *Postcondizioni*: l'attore visualizza, in tutti i pannelli collegati, solamente i dati relativi al filtro applicato (o ai filtri applicati).
- *Scenario Principale*:
  + il sistema aggiorna tutti i pannelli collegati.

=== UC7: Ordinamento pannelli tabellari
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'attore ha scelto e sta visualizzando un pannello da ordinare.
- *Postcondizioni*: l'attore visualizza i dati ordinati.
- *Scenario Principale*:
  + l'attore seleziona i campi secondo cui ordinare i dati, in modo ascendente o discendente.

#figure(
  image("assets/UML/UC7_Ordinamento-pannelli-tabellari.png",width:70%),
  caption: [UC7 Ordinamento pannelli tabellari]
)

=== UC8: Modifica layout pannelli
- *Attore Principale*: amministratore pubblico. 
- *Precondizioni*: l'attore sta visualizzando almeno un pannello. 
- *Postcondizioni*: l'attore visualizza il nuovo layout.
- *Scenario Principale*:
  + l'attore sposta o ridimensiona i pannelli a suo piacimento.

#figure(
  image("assets/UML/UC8_Modifica-layout-pannelli.png",width:70%),
  caption: [UC8 Modifica layout pannelli]
)

=== UC9: Visualizzazione errore nessun dato
- *Attore Principale*: amministratore pubblico. 
- *Precondizioni*: il sistema non ha i dati necessari alla renderizzazione di un pannello. 
- *Postcondizioni*: l'attore visualizza il messaggio di errore.
- *Scenario Principale*:
  + l'attore vuole visualizzare qualche pannello [UC1.2] [UC1.1] [UC2.1] [UC3.1]; 
  + il sistema non ha i dati per renderizzarlo e mostra un messaggio di errore.

=== UC10: Inserimento dati temperatura
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persistito i dati inviati dal sensore.
- *Scenario Principale*:
  + il sensore effettua una rilevazione della temperatura;
  + il sensore formatta il messaggio da inviare al sistema;
  + il sensore invia il messaggio al sistema.
- *Inclusioni*: UC21.

#figure(
  image("assets/UML/UC10_Inserimento-dati-temperatura.png",width:100%),
  caption: [UC10 Inserimento dati temperatura]
)

=== UC11: Inserimento dati umidità
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persistito i dati inviati dal sensore.
- *Scenario Principale*:
  + il sensore effettua una rilevazione dell'umidità;
  + il sensore formatta il messaggio da inviare al sistema;
  + il sensore invia il messaggio al sistema.
- *Inclusioni*: UC21.

#figure(
  image("assets/UML/UC11_Inserimento-dati-umidità.png",width:100%),
  caption: [UC11 Inserimento dati umidità]
)

=== UC12: Inserimento dati velocità e direzione del vento
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persistito i dati inviati dal sensore.
- *Scenario Principale*:
  + il sensore effettua una rilevazione della velocità e della direzione del vento;
  + il sensore formatta il messaggio da inviare al sistema;
  + il sensore invia il messaggio al sistema.
- *Inclusioni*: UC21.

#figure(
  image("assets/UML/UC12_Inserimento-dati-velocità-e-direzione-del-vento.png",width:120%),
  caption: [UC12 Inserimento dati velocità e direzione del vento]
)

=== UC13: Inserimento dati precipitazioni
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persistito i dati inviati dal sensore.
- *Scenario Principale*:
  + il sensore effettua una rilevazione quantitativa delle precipitazioni;
  + il sensore formatta il messaggio da inviare al sistema;
  + il sensore invia il messaggio al sistema.
- *Inclusioni*: UC21.

#figure(
  image("assets/UML/UC13_Inserimento-dati-precipitazioni.png",width:100%),
  caption: [UC13 Inserimento dati precipitazioni]
)

=== UC14: Inserimento dati inquinamento dell'aria
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persistito i dati inviati dal sensore.
- *Scenario Principale*:
  + il sensore effettua una rilevazione quantitativa dell'inquinamento dell'aria;
  + il sensore formatta il messaggio da inviare al sistema;
  + il sensore invia il messaggio al sistema.
- *Inclusioni*: UC21.

#figure(
  image("assets/UML/UC14_Inserimento-dati-inquinamento-dell-aria.png",width:100%),
  caption: [UC14 Inserimento dati inquinamento dell'aria]
)

=== UC15: Inserimento dati livello bacini idrici
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persistito i dati inviati dal sensore.
- *Scenario Principale*:
  + il sensore effettua una rilevazione del livello del bacino idrico in cui è installato;
  + il sensore formatta il messaggio da inviare al sistema;
  + il sensore invia il messaggio al sistema.
- *Inclusioni*: UC21.

#figure(
  image("assets/UML/UC15_Inserimento-dati-livello-bacini-idrici.png",width:100%),
  caption: [UC15 Inserimento dati livello bacini idrici]
)

=== UC16: Inserimento dati disponibilità e occupazione parcheggi
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persistito i dati inviati dal sensore.
- *Scenario Principale*:
   + il sensore rileva gli ingressi e le uscite del parcheggio in cui è installato;
  + il sensore formatta il messaggio da inviare al sistema;
  + il sensore invia il messaggio al sistema.
- *Inclusioni*: UC21.

#figure(
  image("assets/UML/UC16_Inserimento-dati-disponibilità-parcheggi.png",width:100%),
  caption: [UC16 Inserimento dati disponibilità e occupazione parcheggi]
)

=== UC17: Inserimento dati colonne di ricarica
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persistito i dati inviati dal sensore.
- *Scenario Principale*:
  + il sensore effettua una rilevazione del wattaggio erogato dalla colonna di ricarica;
  + il sensore formatta il messaggio da inviare al sistema;
  + il sensore invia il messaggio al sistema.
- *Inclusioni*: UC21.

#figure(
  image("assets/UML/UC17_Inserimento-dati-colonne-di-ricarica.png",width:100%),
  caption: [UC17 Inserimento dati colonne di ricarica]
)

=== UC18: Inserimento dati biciclette elettriche
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persistito i dati inviati dal sensore.
- *Scenario Principale*:
  + il sensore effettua una rilevazione della posizione e della percentuale della batteria della bicicletta elettrica su cui è installato;
  + il sensore formatta il messaggio da inviare al sistema;
  + il sensore invia il messaggio al sistema.
- *Inclusioni*: UC21.

#figure(
  image("assets/UML/UC18_Inserimento-dati-biciclette-elettriche.png",width:100%),
  caption: [UC18 Inserimento dati biciclette elettriche]
)

=== UC19: Inserimento dati riempimento zone ecologiche
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persistito i dati inviati dal sensore.
- *Scenario Principale*:
  + il sensore effettua una rilevazione del livello di riempimento del contenitore ecologico associato; 
  + il sensore formatta il messaggio da inviare al sistema;
  + il sensore invia il messaggio al sistema.
- *Inclusioni*: UC21.

#figure(
  image("assets/UML/UC19_Inserimento-dati-riempimento-zone-ecologiche.png",width:100%),
  caption: [UC19 Inserimento dati riempimento zone ecologiche]
)

=== UC20: Inserimento dati congestione stradale
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persistito i dati inviati dal sensore.
- *Scenario Principale*:
  + il sensore effettua una rilevazione del livello di congestione della strada su cui è installato; 
  + il sensore formatta il messaggio da inviare al sistema;
  + il sensore invia il messaggio al sistema.
- *Inclusioni*: UC21.

#figure(
  image("assets/UML/UC20_Inserimento-dati-congestione-stradale.png",width:100%),
  caption: [UC20 Inserimento dati congestione stradale]
)

=== UC21: Inserimento dati relativi al sensore
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sensore allega i dati relativi al proprio stato al messaggio da inviare al sistema.
- *Scenario Principale*:
  + il sensore prende i dati relativi al proprio stato.

#set heading(numbering: "1.1")
#pagebreak()

= Requisiti

== Requisiti funzionali (obbligatori e desiderabili)
#let requisiti_funzionali = (
  (
     "Obbligatorio", "L'utente deve poter accedere all'applicazione senza dover effettuare l'autenticazione.", "Capitolato"
  ),
  (
     "Obbligatorio", "L'utente deve poter visualizzare una dashboard generale relativa ai sensori.", "UC1"
  ),
  (
     "Obbligatorio", "L'utente deve poter visualizzare le posizioni dei sensori come icone su una mappa.", "UC1.1"
  ),
  (
    "Obbligatorio", "L'utente deve poter visualizzare, in forma tabellare, l'elenco dei sensori", "UC1.2"
  ),
  (
    "Obbligatorio", "L'utente deve poter monitorare i dati provenienti dai sensori relativi ai dati ambientali.", "UC2"
  ),
  (
    "Obbligatorio", "L'utente deve poter visualizzare un pannello in formato time series con dati relativi alla temperatura.", "UC2.2"
  ),
  (
    "Obbligatorio", "L'utente deve poter visualizzare un pannello in formato time series con misurazioni in percentuale sull'umidità.", "UC2.3"
  ),
  (
    "Opzionale", "L'utente deve poter visualizzare un grafico a mappa che evidenzi velocità e direzione del vento.", "UC2.4"
  ),
  (
    "Obbligatorio", "L'utente deve poter visualizzare un pannello in formato time series relativo all'intensità delle precipitazioni.", "UC2.5"
  ),
  (
    "Desiderabile", "L'utente deve poter visualizzare un pannello che evidenzi le precipitazioni medie negli ultimi 5 minuti.", "UC2.6"
  ),
  (
    "Obbligatorio", "L'utente deve poter visualizzare un pannello in formato time series con dati relativi all'inquinamento dell'aria. ", "UC2.7"
  ),
  (
    "Desiderabile", "L'utente deve poter visualizzare un pannello che evidenzi l'inquinamento dell'aria medio negli ultimi 5 minuti.", "2.8"
  ),
  (
    "Obbligatorio", "L'utente deve poter visualizzare un pannello in formato time series con dati relativi al livello dei bacini idrici.", "2.9"
  ),
  (
    "Desiderabile", "L'utente deve poter visualizzare un pannello che evidenzi la temperatura media negli ultimi 5 minuti.", "2.10"
  ),
  (
    "Desiderabile", "L'utente deve poter visualizzare un pannello che evidenzi l'inquinamento dell'aria massimo negli ultimi 5 minuti.", "2.11"
  ),
  (
    "Obbligatorio", "L'utente deve poter monitorare i dati provenienti dai sensori relativi ai dati urbanistici.", "UC3"
  ),
  (
    "Desiderabile", "L'utente deve poter visualizzare un grafico a mappa che evidenzi la disponibilità e l'occupazione dei parcheggi, in termini di posti liberi.", "UC3.2"
  ),
  (
    "Desiderabile", "L'utente deve poter visualizzare un grafico a mappa che evidenzi la posizione e lo stato delle colonne di ricarica.", "UC3.3"
  ),
  (
    "Opzionale", "L'utente deve poter visualizzare un grafico a mappa che evidenzi l'intensità del traffico.", "UC3.4"
  ),
  (
    "Opzionale", "L'utente deve poter visualizzare un grafico a mappa che evidenzi la posizione real time delle biciclette elettriche e relativa percentuale della batteria.", "UC3.5"
  ),
  (
    "Desiderabile", "L'utente deve poter visualizzare un grafico a mappa che riporti un indicatore percentuale di riempimento delle zone rifiuti.", "UC3.6"
  ),
  (
    "Desiderabile", "L'utente deve poter visualizzare i dati anomali rilevati, in forma tabellare.", "UC4"
  ),
  (
    "Obbligatorio",  "L'utente deve poter visualizzare le allerte di superamento delle soglie.", "UC5"
  ),
  (
    "Obbligatorio", "L'utente deve poter filtrare un sottoinsieme di sensori in grafici di tipo time series.", "UC6.1"
  ),
  (
    "Obbligatorio", "L'utente deve poter filtrare un sotto-insieme di sensori in base alla tipologia in pannelli di tipo tabellare.", "UC6.2"
  ),
  (
    "Obbligatorio", "L'utente deve poter filtrare un sotto-insieme di sensori in base al nome in pannelli di tipo tabellare.", "UC6.3"
  ),
  (
    "Obbligatorio", "L'utente deve poter filtrare i dati in base ad un intervallo temporale.", "UC6.4"
  ),
  (
    "Desiderabile", "Nei pannelli con tabelle, l'utente deve poter ordinare i dati in base alle loro colonne.", "UC7"
  ),
  (
    "Desiderabile", "L'utente deve poter modificare il layout della dashboard visualizzata, agendo su posizione e dimensione dei pannelli.", "UC8"
  ),
  (
    "Obbligatorio", "L'utente deve poter visualizzare un messaggio di errore qualora non vi siano dati a disposizione.", "UC9"
  ),
  (
    "Obbligatorio", "Il sistema deve poter gestire dati relativi alla temperatura.", "UC10"
  ),
  (
    "Obbligatorio", "Il sistema deve poter gestire dati relativi all'umidità.", "UC11"
  ),
  (
    "Obbligatorio", "Il sistema deve poter gestire dati relativi alla velocità e alla direzione del vento.", "UC12"
  ),
  (
    "Obbligatorio", "Il sistema deve poter gestire dati relativi alle precipitazioni.", "UC13"
  ),
  (
    "Obbligatorio", "Il sistema deve poter gestire dati relativi all'inquinamento dell'aria.", "UC14"
  ),
  (
    "Obbligatorio", "Il sistema deve poter gestire dati relativi al livello dei bacini idrici.", "UC15"
  ),
  (
    "Obbligatorio", "Il sistema deve poter gestire dati relativi alla disponibilità e l'occupazione dei parcheggi.", "UC16"
  ),
  (
    "Obbligatorio", "Il sistema deve poter gestire dati relativi alle colonne di ricarica.", "UC17"
  ),
  (
    "Obbligatorio", "Il sistema deve poter gestire dati relativi alle biciclette elettriche.", "UC18"
  ),
  (
    "Obbligatorio", "Il sistema deve poter gestire dati relativi al riempimento delle zone ecologiche.", "UC19"
  ),
  (
    "Obbligatorio", "Il sistema deve poter gestire dati relativi alla congestione stradale.", "UC20"
  ),
  (
    "Desiderabile", "Ogni sensore insieme ai dati invia al sistema anche le informazioni relative al proprio stato, queste comprendono il livello della batteria, nel caso ne abbia una e l'utilizzo del processore.", "UC21"
  )
)

#let requisiti_funzionali_con_codice = generate_requirements_array("F", requisiti_funzionali)
#requirements_table(requisiti_funzionali_con_codice)


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
#requirements_table(requisiti_qualita_con_codice)

== Requisiti di vincolo
#let requisiti_vincolo = (
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
  "Obbligatorio","Una dashboard che riporti almeno i dati di un sensore","Capitolato",
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
  "Desiderabile","Una dashboard avanzata contenente: una mappa della città, widget e informazioni sui sensori (ad esempio il tipo di sensore, il modello, ecc.).","Capitolato"
  )
)

#let requisiti_vincolo_con_codice = generate_requirements_array("V", requisiti_vincolo)
#requirements_table(requisiti_vincolo_con_codice)

#pagebreak()
== Tracciamento
=== Requisiti funzionali - Fonti
#table(
  columns: (auto, auto),
  inset: 10pt,
  align: horizon,
  [*Requisiti*], [*Fonti*],
  ..requisiti_funzionali_con_codice.map(content => (content.at(0),content.at(3))).flatten().map(content => [#content])
)

=== Requisiti qualità - Fonti
#table(
  columns: (auto, auto),
  inset: 10pt,
  align: horizon,
  [*Requisiti*], [*Fonti*],
  ..requisiti_qualita_con_codice.map(content => (content.at(0),content.at(3))).flatten().map(content => [#content])
)

=== Requisiti vincolo - Fonti
#table(
  columns: (auto, auto),
  inset: 10pt,
  align: horizon,
  [*Requisiti*], [*Fonti*],
  ..requisiti_vincolo_con_codice.map(content => (content.at(0),content.at(3))).flatten().map(content => [#content])
)

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

#table(
  columns: (auto, auto, auto, auto, auto),
  inset: 10pt,
  align: horizon,
  [*Tipologia*], [*Obbligatori*], [*Desiderabili*], [*Opzionali*], [*Totale*],
  [funzionali], [#funzionale_obb], [#funzionale_des], [#funzionale_opz], [#funzionale_tot],
  [di qualità], [#qualità_obb], [#qualità_des], [#qualità_opz], [#qualità_tot],
  [di vincolo], [#vincolo_obb], [#vincolo_des], [#vincolo_opz], [#vincolo_tot]
)