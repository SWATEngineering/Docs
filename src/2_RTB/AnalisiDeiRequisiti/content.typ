#import "meta.typ" : title
#import "functions.typ" : glossary, team

#set list(marker: ([•], [--]))
#set enum(numbering: "1.a.")

= Introduzione

== Scopo del documento
Il presente documento ha lo scopo di fornire una descrizione dettagliata dei casi d'uso e dei requisiti del progetto _InnovaCity_. Questi risultano dall'analisi del capitolato C6 presentato dalla Proponente _Sync_ Lab e dalla successiva interazione diretta con essa attraverso gli incontri svolti.

== Scopo del prodotto
Lo scopo del prodotto è la realizzazione di una piattaforma di monitoraggio, che metta insieme i dati prodotti da dispositivi (IoT e non) e sensori di una città. Questa piattaforma permetterà all'#glossary("amministratore pubblico") di ottenere una visione d'insieme della condizione della città e, in base a questo, prendere decisioni informate e tempestive sulla gestione delle risorse e sull'implementazione di servizi. I dati visualizzati da questa piattaforma dovranno venire prodotti con una simulazione randomica che sia verosimile. In alternativa, potranno essere utilizzati dati reali accessibili liberamente.

== Riferimenti

=== Riferimenti normativi
- Capitolato C6 - InnovaCity: Smart city monitoring platform:
https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C6.pdf \
https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C6p.pdf

- Norme di Progetto

- Regolamento progetto didattico:
https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/PD2.pdf

=== Riferimenti informativi
Analisi dei requisiti - corso di Ingegneria del Software a.a. 2023/2024: \
https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T5.pdf \
Cardin	Analisi e descrizione delle funzionalità: Use Case e relativi diagammi (UML) - corso di Ingegneria del Software a.a. 2023/2024: \
https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20di%20Attivit%C3%A0.pdf

= Descrizione

== Obbiettivi del prodotto
L'obbiettivo del prodotto è la creazione di una piattaforma che funga da monitor ad un utente, che in questo caso è rappresentato da un amministratore pubblico di una #glossary("smart city"). L'utente sarà in grado di controllare, attraverso la consultazione di una dashboard, lo stato della città, sotto i punti di vista ambientali, logistici e di sicurezza. In questo cruscotto contterrà delle visualizzazioni grafiche basate sui dati, che per il progetto in questione saranno prodotti da una simulazione realistica.

== Funzionalità del prodotto
Il prodotto si compone di due parti principali:
- *Un simulatore* che produce dei dati realistici, di svariate tipologie. Con realistici si intende verosimili in base al tipo di dato, ad es. un #glossary("sensore") della temperatura avrà un andamento di dati rilevati approssimabile ad una sinusoide.
  - Questi dati che vengono raccolti e archiviati in un database #glossary("OLAP") e vengono passati ad un sistema di stream processing che permette di disaccoppiare lo stream di informazioni raccolto.
- *Una dashboard* che permette di visualizzare i dati accumulati, sottoforma di grafici.

La piattaforma prevede fondamentalmente una tipologia di utente: l'amministratore pubblico. Questo utente avrà accesso alla dashboard e visualizzerà il sommario di diverse metriche e indicatori sullo stato della città, sottoforma di grafici.

== Tecnologie consigliate
La Proponente consiglia l'utilizzo delle seguenti tecnologie per la realizzazione del progetto:
- Implementazione dei simulatori. Tecnologia consigliata: *Python*;
- Database OLAP utilizzato per lo storage dei dati.  Tecnologia consigliata: *ClickHouse*;
- Piattaforma di stream processing. Tecnologia consigliata: *Kafka*.
- Dashboard di visualizzazione. Tecnologia consigliata: Grafana.

== Utenti e caratteristiche
Il prodotto è destinato ad amministratori pubblici, consentendo loro di ottenere una panoramica sulle condizioni della città. Questo permetterà loro di prendere decisioni ben informate sulla gestione delle risorse e sull'implementazione dei servizi, inclusa la possibilità di rispondere prontamente in situazioni di emergenza e di identificare opportunità di miglioramento che potrebbero altrimenti passare inosservate. L'utente finale potrebbe anche essere un dirigente aziendale interessato a ottenere informazioni rilevanti per gli obiettivi e gli interessi dell'azienda, come riduzione dei costi, miglioramento dell'efficienza e della produttività.

= Casi d'uso
== Scopo
La presente sezione ha come obbiettivo la descrizione di tutti i casi d'uso individuati dall'analisi effettuata dal gruppo, basandosi sul capitolato e sulle interazioni con la Proponente. In particolare, si individuano gli #glossary("attori") e le funzionalità che questi possono svolgere. Ogni caso d'uso possiede un codice, la cui struttura è descritta nelle Norme di Progetto.
e
== Attori
L'applicativo si interfaccerà con un solo tipo di attore:
- *Utente generico*: è un utente che ha accesso alla dashboard in tutte le sue funzionalità e può visualizzare i dati raccolti dai sensori.
La motivazione della mancanza di altri attori è dovuta al fatto che, per il momento, non sono state individuate altre figure che possano interagire con il sistema e non sono previste interfacce differenti per utenti con altri ruoli.
#figure(
  image("assets/UtenteUC.png", width: 12%),
  caption: [Gerarchia degli attori]
)

/ UC1 : - Visualizzazione della dashboard sullo stato della città
  - *Attore Principale*: utente generico.
  - *Precondizioni*: almeno uno dei sensori è attivo e trasmette dati.
  - *Postcondizioni*: L'utente ha un'istantanea chiara e aggiornata dello stato generale della città attraverso dati e informazioni presentati sulla dashboard.
  - *Scenario Principale*:
    - L'utente:
      + accede alla piattaforma per la visualizzazione dello stato attuale della città;
      + i dati provenienti da sensori e dispositivi installati in varie zone della città vengono visualizzati istantaneamente sulla dashboard.

/ UC2 : - Visualizzazione dello stato di una #glossary("cella")
  - *Attore Principale*: utente generico.
  - *Precondizioni*:
    - almeno uno dei sensori all'interno della cella è attivo e trasmette dati;
    - la piattaforma contiene dati aggiornati e in tempo reale dei sensori nella cella selezionata.
  - *Postcondizioni*: L'utente ha visualizzato lo stato attuale della cella selezionata attraverso la piattaforma, basandosi sui dati forniti dai sensori e dispositivi all'interno della stessa.
  - *Scenario Principale*:
    - L'utente:
      + seleziona una cella specifica della città;
      + visualizza i dati aggregati provenienti dai sensori e dai dispositivi all'interno della cella selezionata.

/ UC3 : - Visualizzazione del complesso di sensori
  - *Attore Principale*: utente generico.
  - *Precondizioni*: la rete dei sensori contiene almeno un sensore.
  - *Postcondizioni*: L'utente ha una visione complessiva dei sensori e della loro distribuzione all'interno della città.
  - *Scenario Principale*:
    - L'utente:
      + seleziona un pulsante che permette di visualizzare tutti i sensori, accedendo alla sezione dedicata;
      + visualizza sottoforma di mappa o di rappresentazione grafica la distribuzione dei sensori all'interno della città e il loro elenco.

/ UC4 : - Selezione di un sensore
  - *Attore Principale*: utente generico.
  - *Precondizioni*: almeno un sensore è attivo e ha trasmesso dati.
  - *Postcondizioni*: l'utente ottiene informazioni dettagliate sul sensore selezionato per una valutazione più approfondita.
  - *Scenario Principale*:
    - L'utente:
      + naviga attraverso la dashboard e seleziona un sensore specifico;
      + Visualizza i dettagli del sensore selezionato, compresi grafici temporali, statistiche diagnosticate e valori attuali;

/ UC5 : - Modifica dello #glossary("stato di un sensore")
  - *Attore Principale*: utente generico.
  - *Precondizioni*: il sensore è già registrato nella piattaforma.
  - *Postcondizioni*: le modifiche apportate allo stato del sensore sono state applicate con successo e il sensore riflette le nuove informazioni nello stato operativo.
  - *Scenario Principale*:
    - L'utente:
      + accede alla sezione relativa alla gestione dei sensori [UC3];
      + seleziona il sensore il cui stato desidera modificare [UC4];
      + modifica le informazioni dello stato come la funzionalità, la posizione o altre caratteristiche rilevanti.
        - Se la piattaforma riscontra problemi nell'applicare le modifiche allo stato del sensore:
          + le modifiche non vengono salvate;
          + viene restituita all'utente un messaggio di errore.

/ UC6 : - Visualizzazione dei dati storici di un sensore
  - *Attore Principale*: utente generico.
  - *Precondizioni*: la piattaforma ha archiviato e conservato dati storici dei sensori.
  - *Postcondizioni*: l'utente ha visualizzato e analizzato i dati storici del sensore selezionato. La piattaforma ha fornito una rappresentazione chiara e utile dei dati storici per supportare l'analisi retrospettiva.
  - *Scenario Principale*:
    - L'utente:
      + naviga attraverso la dashboard e seleziona il sensore di interesse per l'analisi storica [UC4];
      + imposta il periodo temporale desiderato per visualizzare i dati storici;
      + esamina grafici o tabelle contenenti i dati storici del sensore selezionato.

/ UC7 : - Allarmi e notifiche del sistema
  - *Attore Principale*: utente generico.
  - *Precondizioni*: il sistema è operativo e raccoglie attivamente i dati dai sensori. Soglie e condizioni per la rilevazione delle anomalie sono definite e configurate.
  - *Postcondizioni*: gli #glossary("interessati") sono notificati in modo appropriato quando vengono attivati gli allarmi. Gli allarmi sono accompagnati da dati pertinenti e informazioni contestuali per ulteriori azioni o analisi.
  - *Scenario Principale*:
    - Il sistema:
      + monitora continuamente i dati dei sensori;
      + quando viene rilevata un'anomalia, un evento critico o viene superata una soglia, il sistema attiva un allarme;
      + gli allarmi vengono inviati attraverso canali designati all’utente, tramite dashboard, ed eventualmente ad altri interessati, tramite email.
    - Generalizzazioni:
      + Allarmi per Rilevazione Anomalie [UC7.1]
      + Allarmi per Superamento Soglie [UC7.2]

/ UC7.1 : - Allarmi per rilevazione anomalie
  - *Attore Principale*: utente generico.
  - *Precondizioni*: il sistema è operativo e raccoglie attivamente i dati dai sensori. Soglie e condizioni per la rilevazione delle anomalie sono definite e configurate [UC7].
  - *Postcondizioni*: gli interessati sono notificati in modo appropriato quando vengono attivati gli allarmi per rilevazioni anomale.
  - *Scenario Principale*:
    - Il sistema:
      + analizza costantemente i dati provenienti dai sensori per rilevare deviazioni o pattern insoliti;
      + quando viene identificata un'anomalia significativa, il sistema genera automaticamente una notifica di allarme;
      + gli interessati ricevono le notifiche di allarme per le anomalie.
      - Estensioni:
        + Il sistema registra e mantiene un log delle anomalie rilevate per analisi e archiviazione.

/ UC7.2 : - Allarmi per superamento soglie
  - *Attore Principale*: utente generico.
  - *Precondizioni*: il sistema è operativo e raccoglie attivamente i dati dai sensori. Soglie e condizioni per la rilevazione delle anomalie sono definite e configurate [UC7].
  - *Postcondizioni*: gli interessati sono notificati in modo appropriato quando vengono attivati gli allarmi per superamento delle soglie.
  - *Scenario Principale*:
    - Il sistema:
      + monitora continuamente i dati dei sensori;
      + quando i dati del sensore superano le soglie predefinite, il sistema genera automaticamente una notifica di allarme;
      + gli interessati ricevono le notifiche di allarme per il superamento delle soglie e prendono misure opportune di conseguenza.
      - Estensioni:
        + Il sistema consente agli utenti di modificare o aggiornare le soglie in base alle esigenze in qualsiasi momento.

/ UC8 : - Analisi dei trend
  - *Attore Principale*: utente generico.
  - *Precondizioni*: dati storici disponibili per il periodo specificato.
  - *Postcondizioni*: l'utente ottiene una rappresentazione visuale dei trend dei dati sensoriali durante il periodo selezionato.
  - *Scenario Principale*:
    - L'utente:
      + seleziona il sensore di interesse [UC4];
      + specifica il periodo di tempo da analizzare;
      + il sistema genera grafici, sottoforma di linee temporali e grafici,  mostrando i trend dei dati sensoriali durante il periodo selezionato.

/ UC9 : Analisi di correlazione
  - *Attore Principale*: utente generico.
  - *Precondizioni*: dati disponibili per i sensori selezionati.
  - *Postcondizioni*: l'utente ottiene una visualizzazione grafica delle correlazioni tra i dati dei sensori selezionati.
  - *Scenario Principale*:
    - L'utente:
      + seleziona due o più sensori di tipologie diverse;
      + il sistema genera matrici di correlazione o grafici di dispersione per mostrare le relazioni tra i dati dei sensori selezionati.

/ UC10 : - Filtraggio dei sensori
  - *Attore Principale*: utente generico.
  - *Precondizioni*: la rete di sensori contiene almeno un sensore.
  - *Postcondizioni*: l'utente ha una visualizzazione dei sensori filtrati in base ai criteri selezionati.
  - *Scenario Principale*:
    - L'utente:
      + accede alla sezione di gestione dei sensori [UC3];
      + seleziona le caratteristiche per il filtraggio dei sensori:
        - tipologia;
        - stato attivo o inattivo dei sensori;
        - posizione geografica o zona specifica;
        - produttore o specifiche tecniche;
      + applica i filtri e visualizza solo i sensori che soddisfano i criteri selezionati.

/ UC11 : - Confronto tra celle della città
  - *Attore Principale*: utente generico.
  - *Precondizioni*: la piattaforma contiene dati sensoriali di almeno due celle della città.
  - *Postcondizioni*: l'utente ha accesso ai dati confrontati o alle statistiche relative alle celle selezionate.
  - *Scenario Principale*:
    - L'utente:
      + accede all'area di confronto tra celle della città;
      + seleziona le celle specifiche che desidera confrontare;
      + visualizza i dati o le statistiche comparate per le celle selezionate.
      - Estensioni:
        + Se l'utente seleziona celle non esistenti o non valide, riceve una notifica di errore.

/ UC12 : - Aggiunta di un sensore reale
  - *Attore Principale*: utente generico.
  - *Precondizioni*: il sensore fisico è disponibile e pronto per l'installazione.
  - *Postcondizioni*: il nuovo sensore reale è stato correttamente aggiunto alla rete e i suoi dati sono ora disponibili nella piattaforma per l'analisi e la visualizzazione.
  - *Scenario Principale*:
    - L'utente:
      + ha un nuovo sensore fisico pronto per l'installazione;
      + accede alla sezione di gestione dei sensori [UC3];
      + registra il nuovo sensore specificando le informazioni necessarie;
      + collega il sensore alla rete esistente o al gateway per la raccolta dati;
      + il sistema verifica e riconosce il nuovo sensore nella rete.
      - Estensioni:
        + Se il sistema non riesce a riconoscere o integrare correttamente il nuovo sensore, l'utente riceve una notifica di errore.

= Requisiti

== Requisiti funzionali (obbligatori e desiderabili)
#table(
  columns: (auto, auto, 2fr),
  inset: 10pt,
  align: horizon,
  [*Codice*], [*Importanza*], [*Descrizione*],
  [*ROF1*],[Obbligatorio],[L’utente deve poter accedere all’applicazione senza dover effettuare l’autenticazione.],
  [*ROF2*],[Obbligatorio],[L’utente deve poter monitorare i dati provenienti dai sensori distribuiti nella città in tempo reale tramite una dashboard.],
  [*ROF3*],[Obbligatorio],[L’utente deve poter monitorare i dati provenienti dai sensori distribuiti in una cella in tempo reale tramite una dashboard.],
  [*ROF4*],[Obbligatorio],[L’utente deve poter visualizzare una panoramica di tutti i sensori all’interno della rete.],
  [*ROF5*],[Obbligatorio],[L’utente deve poter visualizzare le informazioni pertinenti a un singolo sensore.],
  [*ROF6*],[Obbligatorio],[L’utente deve poter visualizzare i dati provenienti da un singolo sensore.],
  [*ROF7*],[Obbligatorio],[L’utente deve poter modificare lo stato operativo di un sensore.],
  [*RPF8*],[Obbligatorio],[Il sistema notifica l’utente in caso di errore nell’applicare modifiche allo stato di un sensore.],
  [*ROF9*],[Obbligatorio],[L’utente deve poter visualizzare i dati storici di un sensore.],
  [*ROF10*],[Obbligatorio],[Il sistema notifica l’utente quando i dati sensoriali superano soglie predefinite.],
  [*RDF11*],[Desiderabile],[Il sistema registra le anomalie rilevate nei dati sensoriali all’interno di un log.],
  [*ROF12*],[Obbligatorio],[Il sistema notifica l’utente quando i dati sensoriali superano soglie predefinite.],
  [*RDF13*],[Desiderabile],[L’utente deve poter configurare le soglie di monitoraggio dei dati sensoriali.],
  [*ROF14*],[Obbligatorio],[L’utente deve poter visualizzare i trend temporali dei dati sensoriali.],
  [*RPF15*],[Desiderabile],[L’utente deve poter analizzare la correlazione tra dati provenienti da tipi diversi di sensori.],
  [*RPF16*],[Obbligatorio],[L’utente deve poter filtrare i sensori in base alle loro caratteristiche.],
  [*RPF17*],[Desiderabile],[L’utente deve poter confrontare i dati provenienti da celle diverse della città.],
  [*RDF18*],[Desiderabile],[L’utente deve poter aggiungere sensori reali alla rete di sensori esistenti]
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
  [*RDV6*],[Obbligatorio],[La simulazione di più sorgenti dati],
  [*RPV7*],[Obbligatorio],[L'evidenziazione di relazioni tra dati provenienti da sorgenti diverse],
  [*RPV8*],[Obbligatorio],[Un sistema di allerta che notifichi l'utente in caso di anomalie o eventi critici],
  [*RPV9*],[Obbligatorio],[La previsione di eventi futuri, basata su dati storici e attuali],
  [*RDV10*],[Obbligatorio],[Una dashboard avanzata contenente: una mappa della città, widget e informazioni sui sensori (ad esempio il tipo di sensore, il modello, ecc.).]
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
  [ROF3], [UC2],
  [ROF4], [UC3],
  [ROF5], [UC4],
  [ROF6], [UC4],
  [ROF7], [UC5],
  [RPF8], [UC5],
  [ROF9], [UC6],
  [ROF10], [UC7, UC7.1],
  [RDF11], [estensione di UC7.1],
  [ROF12], [UC7, UC7.2],
  [RDF13], [estensione di UC7.2],
  [ROF14], [UC8],
  [RPF15], [UC9],
  [ROF16], [UC10],
  [RPF17], [UC11],
  [RDF18], [UC12],
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
  [funzionali], [11], [4], [3], [18],
  [di qualità], [4], [0], [0], [4],
  [di vincolo], [5], [3], [2], [10]
)