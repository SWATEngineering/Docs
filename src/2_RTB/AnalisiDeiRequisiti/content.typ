#import "meta.typ" : title
#import "functions.typ" : glossary, team

#set list(marker: ([•], [--]))
#set enum(numbering: "1.a.")

= Introduzione

== Scopo del documento
Il presente documento ha lo scopo di fornire una descrizione dettagliata dei casi d'uso e dei requisiti del progetto _InnovaCity_. Questi risultano dall'analisi del capitolato C6 presentato dalla Proponente _Sync_ Lab e dalla successiva interazione diretta con essa attraverso gli incontri svolti.

== Scopo del prodotto
Lo scopo del prodotto è la realizzazione di un sistema di persistenza dati e successiva visualizzazione di questi, provenienti da sensori dislocati geograficamente. Tale piattaforma consentirà all'#glossary("amministratore pubblico") di acquisire una panoramica completa delle condizioni della città, facilitando così la presa di decisioni informate e tempestive riguardo alla gestione delle risorse e all'implementazione di servizi.

== Riferimenti

=== Riferimenti normativi
- Capitolato C6 - InnovaCity: Smart city monitoring platform:
#link("https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C6.pdf")\
#link("https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C6p.pdf")

- Norme di Progetto

- Regolamento progetto didattico:
#link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/PD2.pdf")

=== Riferimenti informativi
Analisi dei requisiti - corso di Ingegneria del Software a.a. 2023/2024: \
#link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T5.pdf") \
Cardin	Analisi e descrizione delle funzionalità: Use Case e relativi diagammi (UML) - corso di Ingegneria del Software a.a. 2023/2024: \
#link("https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20di%20Attivit%C3%A0.pdf")

= Descrizione

== Obiettivi del prodotto
L'obbiettivo consiste nella creazione di una piattaforma di monitoraggio e gestione di una #glossary("Smart City"). L'utente, individuato nell'#glossary("amministratore pubblico"), potrà farne impiego per migliorare la qualità generale della vita e l'efficienza dei servizi nel contesto di un'area urbana. L'utente sarà in grado di monitorare, attraverso la consultazione di una dashboard, lo stato della città, sotto i punti di vista ambientali, logistici e di sicurezza. Questo cruscotto includerà rappresentazioni grafiche basate su dati provenienti da dei sensori installati all'interno dell'area geografica della città.

== Funzionalità del prodotto
Il prodotto si compone di due parti principali:
- *Una #glossary("data pipeline")* in grado di raccogliere, persistere e processare dati provenienti da più sorgenti (ovvero i #glossary("sensori")) in #glossary("real-time");
- *Una dashboard* che permette di visualizzare i dati raccolti.

La piattaforma prevede fondamentalmente una tipologia di utente: l'#glossary("amministratore pubblico"). Questo utente avrà accesso alla dashboard e prenderà visione di diverse metriche e indicatori sullo stato della città, mediante diversi strumenti di visualizzazione.

== Utenti e caratteristiche
Il prodotto, destinato ad #glossary("amministratori pubblici"), consente loro di ottenere una panoramica sulle condizioni della città. Ciò fornisce loro una base solida per prendere decisioni ponderate sulla gestione delle risorse e sull'implementazione dei servizi, il che risulta cruciale nel miglioramento dell'efficienza complessiva della gestione urbana. Si presuppone che l' #glossary("amministratore pubblico") abbia conoscenze di analisi e di interpretazione dei dati, tali da poter trarre un concreto beneficio dal controllo della dashboard.

= Casi d'uso
== Scopo
In questa sezione si vogliono elencare e descrivere tutti i casi d'uso individuati dall'analisi del capitolato e dalle interazioni avute con la Proponente. In particolare, si individuano gli #glossary("attori") e le funzionalità che questi possono svolgere. Ogni caso d'uso possiede un codice, la cui struttura è descritta nelle Norme di Progetto.

== Attori
Il sistema si interfaccerà con due attori diveri:
- *#glossary("Amministratore pubblico")*: è un utente che ha accesso alla dashboard in tutte le sue funzionalità e può visualizzare i dati raccolti dai sensori, mediante quest'ultima;
- *#glossary("Sensore")*: è un dispositivo in grado di raccogliere dati relativi al proprio dominio di interesse e di inserirli all'interno del sistema per far si che vengano persistiti.

Relativamente all'utilizzo della dashboard, viene definito un unico attore con accesso completo alle funzionalità, in quanto per sua natura l' #glossary("amministratore pubblico") possiede le competenze tecniche necessarie per poter interagire con essa in tutte le sue parti.

#figure(
  image("assets/attori.png", width: 40%),
  caption: [Gerarchia degli attori]
)

#figure(
  image("assets/USECASES.png",width:130%),
  caption: [USECASE]
)

== Elenco dei casi d'uso

#set heading(numbering: none)

/ UC1 : - Visualizzazione Panoramica Generale Sensori

  - *Attore Principale*: amministrato pubblico. 
  - *Precondizioni*: nessuna.
  - *Postcondizioni*: l'attore visualizza i panelli relativi ai dati dati propri dei sensori. 
  - *Scenario Principale*:
    + l'attore accede al sistema; 
    + l'attore seleziona la visualizzazione della panoramica generale dei sensori;
    + il sistema elabora i dati e renderizza i pannelli; 
    + l'attore visualizza i panelli.
  - *Specializzazioni*: nessuna; 
  - *Inclusioni*: nessuno; 
  - *Estensioni*: nessuna; 



/ UC1.1 : Visualizzazione posizione sensori su mappa

- *Attore Principale*: amministratore pubblico. 
  - *Precondizioni*: nessuna.
  - *Postcondizioni*: l'attore visualizza le posizioni dei sensori come icone su una mappa. 
  - *Scenario Principale*:
    + l'attore accede al sistema; 
    + l'attore seleziona la visualizzazione della panoramica generale dei sensori;
    + il sistema elabora i dati e renderizza il pannello; 
    + l'attore visualizza il pannelo.
  - *Specializzazioni*: nessuna; 
  - *Inclusioni*: nessuna; 
  - *Estensioni*:  UC9 Visualizzazione errore nessun dato; 


/ UC1.2 : Visualizzazione tabella sensori

- *Attore Principale*: amministratore pubblico. 
  - *Precondizioni*: nessuna.
  - *Postcondizioni*: l'attore visualizza le posizioni dei sensori come icone su una mappa. 
  - *Scenario Principale*:
    + l'attore accede al sistema; 
    + l'attore seleziona la visualizzazione della panoramica generale dei sensori;
    + il sistema elabora i dati e renderizza la tabella; 
    + l'attore visualizza il pannelo.
  - *Specializzazioni*: nessuna; 
  - *Inclusioni*: nessuna; 
  - *Estensioni*:  UC9 Visualizzazione errore nessun dato; 


/UC9 :  Visualizzazione errore nessun dato
- *Attore Principale*: amministratore pubblico. 
  - *Precondizioni*: il sistema non ha i dati necessari alla renderizzazione di un pannello. 
  - *Postcondizioni*: l'attore visualizza il messaggio di errore.
  - *Scenario Principale*:
    + l'attore vuole visualizzare qualche pannello [UC1.2] [UC1.1] [UC]; 
    + il sistema non ha i dati per renderizzarlo e mostra un messaggio di errore; . 
  - *Specializzazioni*: nessuna; 
  - *Inclusioni*: nessuna; 
  - *Estensioni*: nessuna; 


#set heading(numbering: "1.1")

= Requisiti

== Requisiti funzionali (obbligatori e desiderabili)
#table(
  columns: (auto, auto, 2fr),
  inset: 10pt,
  align: horizon,
  [*Codice*], [*Importanza*], [*Descrizione*],
  [*ROF1*],[Obbligatorio],[L’utente deve poter accedere all’applicazione senza dover effettuare l’autenticazione.],
  [*ROF2*],[Obbligatorio],[L’utente deve poter monitorare i dati provenienti dai sensori distribuiti nella città in tempo reale tramite una dashboard.],
  [*ROF3*],[Obbligatorio],[L’utente deve poter visualizzare una mappa della città con evidenziati la suddivisione in celle e il posizionamento dei sensori.],
  [*ROF4*],[Obbligatorio],[L’utente deve poter visualizzare indicatori numerici che rappresentano i dati correnti dei sensori nella città.],
  [*ROF5*],[Obbligatorio],[L’utente deve poter monitorare i dati provenienti dai sensori distribuiti in una cella in tempo reale tramite una dashboard.],
  [*ROF6*],[Obbligatorio],[L’utente deve poter visualizzare una mappa della cella con evidenziato il posizionamento dei sensori.],
  [*ROF7*],[Obbligatorio],[L’utente deve poter visualizzare indicatori numerici che rappresentano i dati correnti dei sensori nella cella.],
  [*ROF8*],[Obbligatorio],[L’utente deve poter visualizzare un registro di tutti i sensori all’interno della rete.],
  [*ROF9*],[Obbligatorio],[L’utente deve poter selezionare un singolo sensore.],
  [*ROF10*],[Obbligatorio],[L’utente deve poter visualizzare le informazioni pertinenti al sensore selezionato.],
  [*ROF11*],[Desiderabile],[L’utente deve poter modificare lo stato operativo del sensore selezionato.],
  [*ROF12*],[Obbligatorio],[L’utente deve poter impostare il periodo temporale per visualizzare i dati storici del sensore.],
  [*ROF13*],[Obbligatorio],[Il sistema notifica l’utente in caso di inserimento di date non valide.],
  [*ROF14*],[Obbligatorio],[L’utente deve poter visualizzare i dati storici del sensore selezionato.],
  [*ROF15*],[Obbligatorio],[Il sistema notifica l’utente in caso di rilevazione di anomalie nei dati sensoriali.],
  [*RDF16*],[Desiderabile],[Il sistema registra le anomalie rilevate nei dati sensoriali all’interno di un log.],
  [*ROF17*],[Obbligatorio],[Il sistema notifica l’utente quando i dati sensoriali superano soglie predefinite.],
  [*RDF18*],[Desiderabile],[L’utente deve poter configurare le soglie di monitoraggio dei dati sensoriali.],
  [*ROF19*],[Desiderabile],[L’utente deve poter visualizzare i trend temporali dei dati sensoriali.],
  [*RDF20*],[Desiderabile],[L’utente deve poter analizzare la correlazione tra dati provenienti da tipi diversi di sensori.],
  [*RDF21*],[Desiderabile],[L’utente deve poter confrontare dati provenienti da celle diverse.],
  [*RDF22*],[Desiderabile],[Il sistema notifica l’utente in caso di selezione di celle non comparabili.],
  [*ROF23*],[Obbligatorio],[L’utente deve poter filtrare i sensori in base alle loro caratteristiche.],
  [*RDF24*],[Desiderabile],[L’utente deve poter aggiungere un sensore reale alla rete di sensori esistenti.]
)

== Requisiti di qualità
#table(
  columns: (auto, auto, 2fr),
  inset: 10pt,
  align: horizon,
  [*Codice*], [*Importanza*], [*Descrizione*],
  [*ROQ1*],[Obbligatorio],[Il superamento di test che dimostrino il corretto funzionamento dei servizi utilizzati e delle funzionalità implementate. La copertura di test deve essere almeno dell'80% e deve essere dimostrata tramite report.],
  [*ROQ2*],[Obbligatorio],[Il sistema deve essere testato nella sua interezza tramite #glossary("test end-to-end")],
  [*ROQ3*],[Obbligatorio], [Viene richiesta una #glossary("documentazione") sulle scelte implementative e progettuali, che dovranno essere accompagnate da motivazioni.],
  [*ROQ4*],[Obbligatorio],[La documentazione dovrà riguardare anche problemi aperti ed eventuali possibili soluzioni da approfondire in futuro.]
)

== Requisiti di vincolo
#table(
  columns: (auto, auto, 2fr),
  inset: 10pt,
  align: horizon,
  [*Codice*], [*Importanza*], [*Descrizione*],
  [*ROV1*],[Obbligatorio],[La creazione di un simulatore di almeno una sorgente dati],
  [*ROV2*],[Obbligatorio],[La simulazione deve produrre dati realistici],
  [*ROV3*],[Obbligatorio],[I dati vanno raccolti in un database OLAP],
  [*ROV4*],[Obbligatorio],[I dati vanno passati ad un sistema di stream processing],
  [*ROV5*],[Obbligatorio],[Una dashboard che riporti almeno i dati di un sensore],
  [*RDV6*],[Desiderabile],[La simulazione di più sorgenti dati],
  [*RPV7*],[Opzionale],[Messa in evidenza di relazioni tra dati provenienti da sorgenti diverse],
  [*RPV8*],[Opzionale],[Un sistema di allerta che notifichi l'utente in caso di anomalie o eventi critici],
  [*RPV9*],[Opzionale],[La previsione di eventi futuri, basata su dati storici e attuali],
  [*RDV10*],[Desiderabile],[Una dashboard avanzata contenente: una mappa della città, widget e informazioni sui sensori (ad esempio il tipo di sensore, il modello, ecc.).]
)

== Tracciamento
=== Requisiti - Fonti
#table(
  columns: (auto, auto),
  inset: 10pt,
  align: horizon,
  [*Requisiti*], [*Fonti*],
  [ROF1], [Capitolato],
  [ROF2], [UC1],
  [ROF3], [UC1.1],
  [ROF4], [UC1.2],
  [ROF5], [UC2],
  [ROF6], [UC2.2],
  [ROF7], [UC2.2],
  [RPF8], [UC3],
  [ROF9], [UC4],
  [ROF10], [UC4],
  [RDF11], [UC5],
  [ROF12], [UC6],
  [RDF13], [UC6],
  [ROF14], [UC6],
  [RPF15], [UC7, UC7.1],
  [ROF16], [UC7.1],
  [RPF17], [UC7, UC7.2],
  [RDF18], [UC9],
  [ROF19], [UC10],
  [RDF20], [UC11, UC11.1],
  [RDF21], [UC11, UC11.2],
  [RDF22], [UC11.2],
  [ROF23], [UC13],
  [RDF24], [UC14],
  [ROQ1], [Capitolato],
  [ROQ2], [Capitolato],
  [ROQ3], [Capitolato],
  [ROQ4], [Capitolato],
  [ROV1], [Capitolato],
  [ROV2], [Capitolato],
  [ROV3], [Capitolato],
  [ROV4], [Capitolato],
  [RDV5], [Capitolato],
  [RPV6], [Capitolato],
  [RPV7], [Capitolato],
  [RPV8], [Verbale esterno],
  [RPV9], [Capitolato]
)

== Riepilogo
#table(
  columns: (auto, auto, auto, auto, auto),
  inset: 10pt,
  align: horizon,
  [*Tipologia*], [*Obbligatori*], [*Desiderabili*], [*Opzionali*], [*Totale*],
  [funzionali], [16], [8], [0], [24],
  [di qualità], [4], [0], [0], [4],
  [di vincolo], [5], [3], [2], [10]
)
