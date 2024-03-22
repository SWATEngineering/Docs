#import "functions.typ": glossary, team
#import "../AnalisiDeiRequisiti/content.typ": requisiti_funzionali_con_codice, requisiti_qualita_con_codice, requisiti_vincolo_con_codice
#import "@preview/cetz:0.2.0": *
#import chart

/*************************************/
/*    INSERIRE SOTTO IL CONTENUTO    */
/*************************************/
= Introduzione

== Scopo del documento
Il presente documento si propone come risorsa esaustiva per la comprensione degli aspetti tecnici chiave del progetto "InnovaCity".
La sua finalità primaria è fornire una descrizione dettagliata e approfondita di due aspetti centrali: l'architettura implementativa e l'architettura di deployment.
Nel contesto dell'architettura implementativa, si prevede un'analisi approfondita che si estenda anche al livello di design più basso. Ciò include la definizione e la spiegazione dettagliata dei design pattern e degli idiomi utilizzati nel contesto del progetto.
L'obiettivo principale del presente documento è triplice: innanzitutto, motivare le scelte di sviluppo adottate; in secondo luogo, fungere da guida fondamentale per l'attività di codifica; infine, monitorare la copertura dei requisiti identificati nel documento _Analisi dei Requisiti v2.0_.
Alla luce del modello di sviluppo agile individuato dal team, la redazione del documento segue un approccio iterativo. L'adeguatezza del documento e dell'architettura individuata viene costantemente monitorata e modificata sulla base dei requisiti e dei feedback ricevuti da parte della Proponente.

== Scopo del prodotto
Lo scopo del prodotto è la realizzazione di un sistema di persistenza dati e successiva visualizzazione di questi, provenienti da sensori dislocati geograficamente. Tale piattaforma consentirà all'#glossary("amministratore pubblico") di acquisire una panoramica completa delle condizioni della città, facilitando così la presa di decisioni informate e tempestive riguardo alla gestione delle risorse e all'implementazione di servizi.

== Glossario
Al ﬁne di evitare possibili ambiguità relative al linguaggio utilizzato nei documenti, viene fornito il _Glossario v1.0_, nel quale sono presenti tutte le definizioni di termini aventi uno specifico significato che vuole essere disambiguato. Tali termini, sono scritti in  corsivo e marcati con una G a pedice.

== Riferimenti

=== Riferimenti normativi
- Capitolato C6 - InnovaCity: Smart city monitoring platform:
#link("https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C6.pdf") (21/03/2024) \
 #link("https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C6p.pdf") (20/02/2024)

- _Norme di Progetto v1.0_
- _Analisi dei Requisiti v1.0_

- Regolamento progetto didattico:
#link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/PD2.pdf") (20/02/2024)

=== Riferimenti informativi

- Gamma, E., Helm, R., Johnson, R., & Vlissides, J. (1994). *Design Patterns: Elements of Reusable Object-Oriented Software.* Addison-Wesley.
/*in caso aggiungere qualche riferimento sui dataflow diagram*/
- Diagrammi delle classi (UML) - corso di Ingegneria del Software a.a. 2023/2024: \
 #link("https://www.math.unipd.it/~rcardin/swea/2023/Diagrammi%20delle%20Classi.pdf") (4/03/2024) \
- Diagrammi di Sequenza (UML) - corso di Ingegneria del Software a.a. 2023/2024: \
 #link("https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20di%20Sequenza.pdf") (20/02/2024) \ /*se non li mettiamo si possono anche togliere*/
- Progettazione - corso di Ingegneria del Software a.a. 2023/2024: \
 #link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T6.pdf") (21/03/2024) \
- Architetture #[#sym.kappa] & #[#sym.lambda]:
  - #link("https://imply.io/blog/building-event-analytics-pipeline-with-confluent-cloud-and-imply-real-time-database-polaris/") (28/02/2024)
  - #link("https://medium.com/sysco-labs/real-time-sales-analytics-using-kappa-architecture-852dc84bfe7b") (28/02/2024)

=== riferimenti tecnici
- *#glossary[Python]*: #link("https://docs.python.org/3/"); (4/03/2024)
- *#glossary[Grafana]*: #link("https://grafana.com/docs/grafana/latest/"); (21/03/2024)
- *Apache #glossary[Kafka]*: #link("https://kafka.apache.org/20/documentation.html"); (4/03/2024)
- *#glossary[Clickhouse]*: #link("https://clickhouse.com/docs");  (4/03/2024)
- *Confluent Kafka*:#link("https://docs.confluent.io/kafka-clients/python/current/overview.html"); (20/02/2024)
- *Docker*: #link("https://docs.docker.com/"); (4/03/2024)

#pagebreak()
= Tecnologie
Questa sezione si propone di offrire una panoramica sintetica delle tecnologie adottate. Questo breve paragrafo introduttivo fornisce un quadro generale delle piattaforme, dei linguaggi di programmazione, dei #glossary[framework] e di altre risorse tecnologiche che costituiscono le basi del nostro progetto.

== Codifica
=== Linguaggi e formati dati
#figure(
table(
      columns:(auto,auto,110pt,auto),
      align: (x, y) => (center, center, center,center).at(x),
      fill:(_,row) => if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      /* TODO: piuttosto che mettere una descrizione generica, dovremmo andare a mettere come questa tecnologia ci viene incontro / ci è utile per sviluppare le funzionalità che dobbiamo sviluppare.*/
      /*Giacomo D'Ovidio commenta: io sinceramente non so se andrei a specificare, credo poi ce ne sarà abbondantemente modo di parlarne nella parte relativa di design (Sezione 4), però bon come volete*/
      [*Tecnologia*],[*Descrizione*],[*Uso*],[*Versione/Standard*],
      [#glossary[Python]], [Linguaggio di programmazione ad alto livello, interpretato, multi paradigma.],[Creazione dei simulatori di dati.], [3.11],
      [SQL], [Linguaggio standard per la gestione e la manipolazione dei database che lo supportano.],[Gestione e manipolazione del database ClickHouseDB.], [ANSI SQL],
      [YAML], [Formato di serializzazione dei dati leggibile dall'uomo comunemente utilizzato per la configurazione dei servizi e lo scambio di dati tra programmi.],[Configurazione di docker compose.], [1.2.2],
      [JSON], [Formato leggero per lo scambio di dati, facile da leggere e scrivere per gli esseri umani e facile da analizzare e generare per le macchine.],[Configurazione dei simulatori di dati e formato dei messaggi spediti dai simulatori/sensori al broker dati.], [2020-12]),
caption: [Tabella tecnologie per la Codifica: Linguaggi e formati dati.])
=== #glossary[Framework] e librerie
#figure(
table(
      columns:(70pt,auto,auto),
      align: (x, y) => (center, center, center).at(x),
      fill:(_,row) => if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Tecnologia*],[*Descrizione*],[*Versione*],
      [Confluent Kafka], [Libreria #glossary[Python] che fornisce gli strumenti necessari per produrre e consumare messaggi da Apache #glossary("Kafka"). ], [1.9]),
caption: [Tabella tecnologie per la Codifica: #glossary[Framework] e librerie])

#pagebreak()
=== Database e servizi
#figure(
table(
      columns:(70pt,auto,auto),
      align: (x, y) => (center, center, center).at(x),
      fill:(_,row) => if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Tecnologia*],[*Descrizione*],[*Versione*],
      [#glossary[Clickhouse]], [Sistema di gestione dei database colonnari, progettato per l'analisi dei dati in tempo reale. È ottimizzato nei casi d'uso OLAP per eseguire query analitiche su grandi volumi di dati in modo efficiente.], [24.1.5.6],
      [_Apache_ #glossary[Kafka]], [Piattaforma di streaming di dati distribuita e scalabile, progettata per la gestione di flussi di dati in tempo reale. È ampiamente utilizzato per l'elaborazione di eventi, la messaggistica asincrona e la creazione di pipeline dati #glossary[real-time].], [3.7.0],
      [#glossary[Grafana]], [Piattaforma open source per il monitoraggio e l'analisi dei dati. Fornisce strumenti per la visualizzazione di metriche e log, la creazione di #glossary[dashboard] interattive e la generazione di avvisi in tempo reale.], [10.3],
      [#glossary[Grafana]\ #glossary[ClickHouse]\ Data Source], [Plugin per #glossary[Grafana] che consente di interrogare e visualizzare i dati di #glossary[ClickHouse] in #glossary[Grafana]], [4.0.3],
      [Docker], [Piattaforma open-source che permette di creare, distribuire e gestire applicazioni in contenitori virtuali.], [25.0.3],
      [Docker Compose], [Strumento per definire e gestire applicazioni multi-container Docker attraverso file YAML.], [2.24.6]
      ),
caption: [Tabella tecnologie per la Codifica: Database e servizi.])


== Per l'analisi del codice
#figure(
table(
      columns:(70pt,auto,auto),
      align: (x, y) => (center, center, center).at(x),
      fill:(_,row) => if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Tecnologia*],[*Descrizione*],[*Versione*],
      [PEP8], [Stile di codifica per il codice #glossary[Python] che definisce le linee guida per la formattazione del codice, rendendolo più leggibile e uniforme.], [1.7.1]),
caption: [Tabella tecnologie per l'analisi del codice.])


#pagebreak()
= Architettura del sistema
== Architettura di implementazione
Il sistema richiede la capacità di processare dati provenienti da varie fonti, in tempo reale, e di offrire una visualizzazione immediata e continua di tali dati, consentendo di monitorarne gli andamenti.
Per questo tipo di scopo le due architetture consigliate sono la:
- *#[#sym.lambda]-architecture*: che prevede di elaborare i dati in due flussi separati, uno per i dati in tempo reale e uno per i dati storici. I dati in tempo reale vengono elaborati immediatamente per fornire risposte rapide, mentre i dati storici vengono elaborati in batch per fornire risposte più complete o elaborate nel tempo. Alla fine, i risultati dei due flussi vengono combinati per fornire una visione completa dei dati;
- *#[#sym.kappa]-architecture*: semplifica la struttura della #[#sym.lambda]-architecture, eliminando il flusso batch. Tutti i dati vengono quindi elaborati in tempo reale utilizzando un sistema di elaborazione dei dati in streaming. Questo fa si che i dati vengono elaborati una sola volta, riducendo la complessità complessiva del sitema.

Per quanto appena descritto, la #[#sym.kappa]-architecture è la soluzione più adatta, in quanto specifica per il nostro caso d'uso.
Si ha appunto bisogno di lavorare con dati in tempo reale, evitando di gestire la lavorazione dei dati in due posti diversi con diverse tecnologie, che ci porterebbe ad una complessità di manutenzione maggiore, logica di computazione duplicata e complessità di gestione del sistema in generale.

Possiamo quindi compartimentalizzare le varie componenti del sistema in questo modo:
#figure(
  image("Schema Componenti Sistema.png"),
  caption: "Schema delle componenti del sistema."
)

- *Data source*: le sorgenti dati sono i sensori IoT sparsi nella città, capaci di inviare messaggi contenenti misurazioni, ad intervalli regolari, mediante protocollo #glossary("Kafka"), allo streaming layer;
- *Streaming layer*: lo streaming layer si occupa di gestire i dati in arrivo in tempo reale, per andarli sistematicamente a persisterli nello storage layer. Questo layer è composto da:
  - *Apache Kafka*: che svolgerà il ruolo di broker dati;
  - *ClickHouse Kafka table engine*: che svolgerà il ruolo di consumatore, al fine di leggere i dati dal server Kafka per poi persisterli nello storage layer.
- *Storage layer*: si occupa della persistenza dei dati e, grazie alle funzionalità OLAP offerte dal database ClickHouse, di effettuare analisi in tempo reale;
- *Visualization Layer*: composto unicamente da Grafana, questo layer si occupa di visualizzare i dati elaborati, in tempo reale.


== Diagramma del flusso di dati (data-flow)

Per illustrare il funzionamento del sistema, abbiamo utilizzato un diagramma di flusso dei dati. Questo diagramma ha permesso di rappresentare in modo chiaro e intuitivo il percorso dei dati attraverso il sistema e le relative elaborazioni su di essi. Abbiamo quindi identificato le diverse entità coinvolte nel processo e le relazioni tra di esse, fornendo una panoramica dettagliata di come i dati vengono acquisiti, elaborati, archiviati e visualizzati.


#figure(
  image("DFDDiagram1.jpg",width: 120%),
  caption: "Diagramma data-flow relativo al percorso dei dati."
)

- *Generazione dei dati*: Una varietà di simulatori di sensori di dati ambientali e urbanistici (entità esterne) sono utilizzati per misurare una vasta gamma di parametri. Questi simulatori forniscono dati, in modalità continua, relativi a:
    + Temperatura;
    + Umidità;
    + Vento;
    + Precipitazioni atmosferiche;
    + Inquinamento atmosferico;
    + Livello dei bacini idrici;
    + Disponibilità di parcheggi;
    + Erogazione delle colonne di ricarica;
    + Riempimento delle zone ecologiche;
    + Livelli di congestione stradale;
    + Batteria delle biciclette elettriche.
- *Invio al #glossary[broker] dei dati*:  i dati generati dai sensori vengono inviati al #glossary[broker] dati, in questo contesto #glossary[Kafka]. #glossary[Kafka] offre un meccanismo di messaggistica distribuita in grado di gestire grandi volumi di dati in tempo reale;
- *Engine interno (archiviatore)*: l'archiviatore, rappresentato dal motore interno "Kafka" di #glossary[ClickHouse], agisce direttamente come consumatore dei dati provenienti dal broker dei dati (#glossary[Kafka]). Questo avviene tramite la connessione a specifici topic nel broker dati, ognuno associato a un tipo di sensore distinto. Successivamente, i dati corrispondenti vengono archiviati nelle rispettive tabelle del database;
- *Aggregazione*: i dati corrispondenti la temperatura, umidità, precipitazioni, inquinamento atmosferico e livello dei bacini idrici vengono aggregati in tabelle apposite attraverso l'utilizzo di #glossary[materialized views]. Queste aggregazioni avvengono su intervalli di 1 minuto, consentendo così l'applicazione delle medie mobili;
- *Interrogazioni (query)*: vengono effettuate varie interrogazioni e analisi sui dati memorizzati all'interno delle tabelle;
- *Visualizzazione*: l'#glossary[amministratore pubblico] visualizza i dati, ritornati in output dalle query, su una piattaforma apposita (nel nostro caso Grafana).

== Database
Lo scopo del database è quello di memorizzare i dati provenienti dai sensori, in modo da poterli analizzare e visualizzare in seguito. I dati di un #glossary[sensore] vengono acquisiti tramite un #glossary[topic] #glossary[Kafka], associato ad un tipo di #glossary[sensore], e poi memorizzati in apposite tabelle.

=== Struttura

==== Tabella di accodamento
 Ad ogni tipo di #glossary[sensore] viene assegnata una tabella con il nome definito come: \*tipo\*+topic+kafka. Questa conterrà una stringa con all'interno tutti i dati grezzi provenienti dai sensori di quel tipo, che sono in formato #glossary[JSON] e contengono, oltre alla rilevazione con relativo timestamp, anche il nome e la tipologia del #glossary[sensore] e le sue coordinate geografiche. Le tabelle di questo tipo vengono popolate tramite il "ClickHouse Kafka table engine", che si occupa di leggere la stringa di dati, dal #glossary[topic] di #glossary[Kafka] e di "iniettarla" all'interno della tabella; per compiere quest'operazione è necessario specificare il motore di archiviazione "Kafka".

==== Tabella #glossary[time series]
Per ogni tipo di #glossary[sensore] viene creata una tabella #glossary[time series], con il nome definito come: \*tipo\*. Il suo scopo è gestire in modo efficiente i dati di tipo #glossary[time series], tramite il motore di archiviazione MergeTree. Queste tabelle vengono popolate tramite delle #glossary[materialized views] a partire dalle tabelle di accodamento; vengono inoltre ordinate per #glossary[sensore] e per timestamp.

==== Tabella dati aggregati
Questo tipo di tabelle aggrega i dati provenienti dalle tabelle #glossary[time series] in modo da poter effettuare analisi su intervalli temporali specifici. Ad esempio:
- Media con frequenza di un minuto;
- Media mobile.
Per il loro popolamento si utilizzano le #glossary[materialized views], che permettono di inserire i dati risultanti da una query.

==== Motori di archiviazione
#glossary[ClickHouse] offre diversi motori di archiviazione, ognuno con caratteristiche specifiche. Per il nostro caso d'uso, facciamo uso dei seguenti:
- *Kafka*: permette di leggere la stringa contenente i dati in formato #glossary[JSON] dal broker dati, e di iniettarla all'interno delle tabelle di accodamento;
- *MergeTree*: particolarmente adatto per la gestione di dati di tipo #glossary[time series], in quanto permette di effettuare operazioni di inserimento ed eliminazione in modo efficiente, e di effettuare query su intervalli di tempo specifici;
- *AggregatingMergeTree*: consente di effettuare operazioni efficienti di aggregazione sui dati, in particolar modo per le aggregazioni incrementali; nello specifico, sostituisce tutte le righe con la stessa chiave di ordinamento all'interno di una parte di dati, con una singola riga che memorizza una combinazione di stati di funzioni aggregate. Questo motore elabora tutte le colonne con i tipi: AggregateFunction e SimpleAggregateFunction. AggregateFunction è una funzione che consente di eseguire aggregazioni sui dati in modo efficiente, mantenendo uno stato intermedio, noto come avgState, che include sia la somma cumulativa che il conteggio dei valori.

=== Schema
Il database è caratterizzato da un determinato schema per ogni tipo di #glossary[sensore]\; di seguito vengono illustrate, tramite un esempio, le due tipologie di schema, che possono essere presenti per ogni tipo di #glossary[sensore].

==== Sensore per il vento
#figure(
  image("DBscheme/DB_Wind.svg",width:100%),
  caption: [Schema delle tabelle per il sensore del vento]
)

==== Sensore pluviometrico
#figure(
  image("DBscheme/DB_Rain.svg",width:100%),
  caption: [Schema delle tabelle per il sensore pluviometrico]
)
Questo tipo di schema presenta in più, rispetto a quello precedente due tabelle per dati aggregati. La tabella "rain1m" contiene la media aritmetica, ottenuta aggregando i dati della pioggia ogni minuto per ciascun #glossary[sensore]. Inoltre è presente la tabella "rain_1m_mov_avg" contenente la media mobile, ottenuta aggregando i dati della pioggia, utilizzando finestre mobili di tre minuti. Queste due tipi di tabelle vengono popolate tramite delle #glossary[materialized views].

== #glossary[Architettura] dei simulatori
Nonostante i simulatori non siano ufficialmente considerati parte integrante del prodotto dalla Proponente, il nostro team, nell'ambito del progetto didattico, ha scelto di dedicare alcune risorse alla progettazione di questa componente.

Nei paragrafi successivi viene mostrata l'architettura individuata, tramite l'utilizzo di Diagrammi delle Classi e relative rapide descrizioni. Inoltre vengono motivati i #glossary[design pattern] individuati e le decisioni progettuali rilevanti. Successivamente, per ogni classe vengono illustrati metodi e attributi.

=== Struttura generale

#figure(
  image("diagrammiclassi/struttura.jpg",width:100%),
  caption: [Diagramma delle classi 2]
)

La classe _SimulatorExecutorFactoryTemplate_ è implementazione del #glossary[design pattern] _Template_, si occupa di invocare la creazione dei singoli simulatori per poi restituire un _SimulatorExecutor_ che avrà il compito di orchestrarli. Il metodo utilizzato per la creazione del singolo simulatore viene ereditato ed implementato diversamente, a seconda del tipo di _Writer_ che si vuole utilizzare, da parte delle classi _KafkaSimulatorExecutorFactory_ e _StdoutSimulatorExecutorFactory_; entrambe sono implementazioni del #glossary[design pattern] _Factory_, in quanto si occupano della creazione vera e propria dei simulatori a partire da un file di configurazione che viene passato tramite costruzione.
I simulatori sono istanze delle classe _SimulatorThread_: tale classe eredita dalla classe _Thread_ della Standard Library, in modo tale che l'esecuzione dei simulatori possa essere parallela.

#figure(
  image("diagrammiclassi/simulator.jpg",width:95%),
  caption: [Diagramma delle classi 2]
)
La classe _SensorSimulatorStrategy_ è realizzazione del design pattern _Strategy_, dove ogni strategia rappresenta una tipologia di sensore simulato differente. Al fine di garantire la possibilità di effettuare unit-testing sul comportamento dei simulatori di sensori tale classe riceve tramite costruttore un oggetto di tipo _Random_ e un oggetto di tipo _Datetime_.
Tali strategie verranno poi assegnate ad un _SimulatorThread_.

#figure(
  image("diagrammiclassi/writer.jpg",width:100%),
  caption: [Diagramma delle classi 3]
)
Anche la classe _Writer_ realizza il design pattern _Strategy_. Sono state progettate due strategie, la prima, (_KafkaWriter_), atta a permettere al simulatore di inviare i messaggi contenenti i dati della rilevazione a #glossary("Kafka"), mentre la seconda atta a permettere al simulatore di stampare i risultati su terminale al fine di poterne testare il comportamento. Inoltre l'applicazione di tale #glossary[design pattern] potrebbe consentire di realizzare il componente di scrittura anche per eventuali broker dati alternativi, nel momento in cui ce ne sia il bisogno.
Nello specifico, la classe _KafkaWriter_ realizza il suo scopo tramite l'impiego del #glossary[design pattern] _Adapter_, nella sua variante _Object Adapter_. Viene infatti fatto utilizzo della classe _Producer_ della liberia _confluent_kafka_. Dato che tale classe potrebbe essere soggetta a variazioni non controllabili da noi, si è deciso di utilizzare tale pattern per permettere di rispondere prontamente a tali cambiamenti, spostandone la complessità proprio nell'adapter.

=== Classi: metodi e attributi
Si procede alla descrizione  di classi e interfacce progettate dal team.
Non vengono menzionati i costruttori.
==== SimulatorExecutorFactoryTemplate (Classe)
===== Attributi
- *configs: String [Protetto]*: contenuto del file di configurazione dei simulatori;
- *simulators: SimulatorThread[\*] [Protetto]*: lista di oggetti _SimulatorThread_.
===== Metodi
- *create_simulator(config: Dict, simulator_type: SensorTypes, cls: «type» SensorSimulatorStrategy): void [Protetto]*: metodo astratto, implementato dalle classi _KafkaSimulatorExecutorFactory_ e _StdoutSimulatorExecutorFactory_;
- *create(): SimulatorExecutor [Pubblico]*: dopo aver invocato la creazione dei singoli simulatori, si occupa di costruire un oggetto della classe _SimulatorExecutor_ inserendoli al suo interno.

==== KafkaSimulatorExecutorFactory (Classe)
===== Attributi
- *data_broker_host: String [Privato]*: indirizzo ip della macchina che ospita il message broker;
- *data_broker_port: int [Privato]*: porta della macchina che ospita il message broker;
- *writers: Dict<\key -> String, value -> KafkaWriter> [Privato]*: dizionario con chiavi di tipo String e valori di tipo _KafkaWriter_;
- *simulators_counter: Dict<\key -> String, value -> int> [Privato]*: dizionario con chiavi di tipo String e valori di tipo int, per fare in modo che al nome del simulatore sia associato un valore numerico.
===== Metodi
- *create_simulator(in config: Dict, in simulator_type: SensorTypes, in cls: «type» SensorSimulatorStrategy): void [Protetto]*: utilizza il contenuto del file di configurazione passato tramite costruzione per costruire gli oggetti di tipo _SimulatorThread_ che rappresentano i simulatori richiesti.

==== StdoutSimulatorExecutorFactory (Classe)
===== Attributi
- *simulators_counter: Dict<\key -> String, value -> int> [Privato]*: dizionario per fare in modo che al nome del simulatore sia associato un valore numerico;
- *writer: StdoutWriter [Privato]*: oggetto della classe _StdoutWriter_.
===== Metodi
- *create_simulator(in config: Dict, in simulator_type: SensorTypes, in cls: «type» SensorSimulatorStrategy): void [Protetto]*: utilizza il contenuto del file di configurazione passato tramite costruzione per costruire gli oggetti di tipo _SimulatorThread_ che rappresentano i simulatori richiesti.

==== SimulatorExecutor (Classe)
===== Attributi
- *simulators: SimulatorThread[\*] [Privato]*: lista di oggetti _SimulatorThread_.
===== Metodi
- *run_all(): void [Pubblico]*: metodo che avvia la simulazione di tutti i _SimulatorThread_;
- *stop_all(): void [Pubblico]*: metodo che arresta la simulazione di tutti i _SimulatorThread_.

==== SimulatorThread (Classe)
===== Attributi
- *wait_time_in_seconds: int [Privato]*: intervallo di tempo (in secondi) che trascorre tra una simulazione e quella successiva;
- *is_running: bool [Privato]*: attributo che indica se al momento il simulatore sta producendo dati;
- *simulator: SensorSimulatorStrategy [Privato]*: oggetto della classe _SensorSimulatorStrategy_;
- *writer: WriterStrategy [Privato]*: oggetto della classe _WriterStrategy_.
===== Metodi
- *run(): void[Pubblico]*: metodo che avvia la simulazione del singolo _SimulatorThread_;
- *stop(): void[Pubblico]*: metodo che arresta la simulazione del singolo _SimulatorThread_.

==== SensorSimulatorStrategy (Classe)
===== Attributi
- *sensor_name: String [Protetto]*: nome identificativo del sensore;
- *random_obj: Random [Protetto]*: oggetto della classe Random della libreria Standard di #glossary("Python")\;
- *datetime_obj: Datetime [Protetto]*: oggetto della classe Datetime della libreria Standard di #glossary("Python")\;
- *coordinates: Coordinates [Protetto]*: oggetto della classe Coordinates.
===== Metodi
- *simulate(): String [Pubblico]*: metodo astratto, implementato dalle classi che definiscono il comportamento dei singoli simulatori.

/*TODO: da completare la descrizione con attributi e metodi come da diagramma UML*/
==== TemperatureSensorSimulator (Classe)

==== RainSensorSimulator (Classe)

==== HumiditySensorSimulator (Classe)

==== WindSensorSimulator (Classe)

==== ReservoirSensorSimulator (Classe)
===== Attributi
- *reservoir_percentage: float [Privato]*: la percentuale del livello di riempimento del bacino idrico;
===== Metodi
- *simulate(): String [Pubblico]*;
- *set_reservoir_percentage(): void [Privato]*: imposta la percentuale di riempimento iniziale del bacino monitorato a seconda della stagione dell'anno;
- *calculate_evaporation_rate(): float [Privato]*: calcola il tasso di evaporazione a seconda dell'ora del giorno e della stagione dell'anno;
- *measure_reservoir_level(): float [Privato]*: calcola la variazione nella percentuale di riempimento.

==== ParkingSensorSimulator (Classe)

==== ChargingStationSensorSimulator (Classe)

==== EBikeSensorSimulator (Classe)
===== Attributi
- *bike_percentage: float [Privato]*: percentuale di batteria della bicicletta elettrica; 
- *last_coordinate_index: int [Privato]*: indice numerico per tenere traccia delle coordinate raggiunte all'interno del percorso stabilito per arrivare a destinazione;
- *source [Privato]*: punto di partenza del percorso;
- *destination [Privato]*: punto di arrivo del percorso;
- *route_coordinates [Privato]*: coordinate che compongono il percorso;
- *last_timestamp: Datetime [Privato]*: timestamp dell'ultima segnalazione del sensore;
- *is_charging: bool [Privato]*: indica se la batteria è attualmente in fase di ricarica o meno.
===== Metodi
- *charge_battery(): void [Privato]*: gestisce la fase di ricarica della batteria;
- *pick_destination() [Privato]*: sceglie una nuovo punto di arrivo inizialmente e quando la bicicletta arriva a destinazione;
- *get_route_coordinates() [Privato]*: ottiene le coordinate corrispondenti alle tappe da percorrere per far arrivare la bicicletta al punto di arrivo;
- *calculate_movement(): void [Privato]*: gestisce lo spostamento della bicicletta da una tappa a quella successiva del percorso;
- *calculate_distance(): float [Privato]*: calcola la distanza che intercorre tra una tappa e l'altra;
- *measure_battery_level(): float [Privato]*: calcoal la variazione nella batteria della bicicletta.

==== EcoZoneSensorSimulator (Classe)

==== TrafficSensorSimulator (Classe)

==== Coordinates (Classe)
===== Attributi
- *longitude: float [Privato]*: longitudine geografica,
- *latitude: float [Privato]*: latitudine geografica.
===== Metodi
- *getGeoJSON(): String [Pubblico]*: restituisce le coordinate geografiche nel formato GeoJSON.

==== SensorTypes (Class)
===== Attributi
    - TEMPERATURE: String [Public];
    - HUMIDITY: String [Public];
    - WIND: String [Public];
    - RAIN: String [Public];
    - RESERVOIR: String [Public];
    - AIR_POLLUTION: String [Public];
    - PARKING: String [Public];
    - CHARGING_STATION: String [Public];
    - ECO_ZONE: String [Public];
    - TRAFFIC: String [Public];
    - ELECTRIC_BICYCLE: String [Public].

==== WriterStrategy (interfaccia)
===== Metodi
- *write(to_write: String): void [Pubblico]*: metodo astratto, implementato dalle classi _StdoutWriter_ e _KafkaWriter_.

==== StdOutWriter (Classe)
===== Metodi
- *write(in to_write: String): void [Pubblico]*: scrive il messaggio contenuto nella stringa passata come parametro su standard output.

==== KafkaWriter (Classe)
===== Attributi
- *producer: TargetProducer [Privato]*: oggetto della classe _TargetProducer_.
===== Metodi
- *write(in to_write: String): void [Pubblico]*: invoca la scrittura del messaggio contenuto nella stringa passata come parametro sul topic corrispondente alla tipologia del simulatore nel broker.

==== TargetProducer (Interfaccia)
===== Metodi
- *produce(message: String, callback: Function): void [Pubblico]*: metodo astratto, utilizzato dal client per inviare il messaggio a #glossary[Kafka].

==== AdapterProducer (Interfaccia)
===== Attributi
- *adaptee: Producer [Privato]*: oggetto della classe _Producer_ della libreria _Confluent Kafka_;
- *topic: SensorTypes [Privato]*: oggetto della classe _SensorTypes_, rappresenta il topic all'interno del broker nel quale viene inserito il messaggio da scrivere.
===== Metodi
- *produce(in message: String in callback: Function): void [Pubblico]*: metodo che richiama il metodo _produce()_ dell'oggetto _adaptee_ di tipo _Producer_ della libreria _Confluent Kafka_.

== Messaggi ed Eventi
=== Kafka Topics
I _topic_ in #glossary[Kafka] possono essere viste come le tabelle di un database, servono per separare logicamente diversi tipi di messaggi o eventi che vengono inseriti nel #glossary[sistema].
Noi li usiamo per separare i messaggi provenienti dai diversi tipi di #glossary[sensore]; questo ci permette poi di andare a creare all'interno di ClickHouse delle "tabelle consumatrici" che prendono i dati in automatico, grazie al fatto che avendo separati logicamente i topic, i messaggi all'interno di ognuno di essi hanno tutti lo stesso formato.
=== Struttura dei messaggi
La struttura di un messaggio o evento, descritta in JSON sarà la seguente:
```json
{
    "type": "SomethingSimulator",
    "timestamp": "2024-01-10 00:00:00",
    "readings":[
        {
            "type": "Speed",
            "value": "00.00"
        },
        {
            "type": "Direction",
            "value": "270"
        }
    ],
    "nome": "Significant Name",
    "location":{
        "type": "Point",
        "coordinates": [00.000000, 00.000000]
    }
}
```
Gli oggetti all'interno di "readings" sono solamente esempi, è possibile inserirne uno solo, come ad esempio per i sensori di temperatura, che avranno solamente la lettura omonima, oppure, come nel caso del #glossary[sensore] del vento averne due: la velocità e la direzione.


#pagebreak()
= Tracciamento dei requisiti
In questa sezione si va a mostrare, secondo quanto riportato dal documento  _Norme di Progetto v2.0_, la soddisfazione dei singoli requisiti funzionali presenti, in base al tipo previsto e opportunamente classificato sotto.

== Tabella dei requisiti soddisfatti
Si vuole riportare ciascun requisito mediante il corrispondente codice, utilizzando le seguenti sigle, le quali indicano:
- RO - Requisito Obbligatorio;
- RD - Requisito Desiderabile;
- RP - Requisito Opzionale.

Rispetto alla stessa tabella ritrovabile nel documento _Analisi dei Requisiti v2.0_, qui è presente una colonna _Stato_ indicante la soddisfazione di tale requisito.

/*L'array deve contenere i numeri dei requisiti da soddisfare, espressi come stringa*/
/*Esempio: #let satisfied = ("1","5","18")*/
#let satisfied_funz = (
  "1","2", "3", "4", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "33", "34", "35", "36", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "53", "54"
)
#let satisfied_vinc = (
  "1","2", "3", "4", "5", "6", "7"
)
#let satisfied_qual = (
  "1","2", "3", "4", "6", "7", "8", "9"
)
#let requisiti_funz = requisiti_funzionali_con_codice.map(req => {
  if(satisfied_funz.contains(req.at(0).slice(3))){
    return (req.at(0),req.at(2),"Soddisfatto")
  }
  return (req.at(0),req.at(2),"Non soddisfatto")
})
#let requisiti_vinc = requisiti_vincolo_con_codice.map(req => {
  if(satisfied_vinc.contains(req.at(0).slice(3))){
    return (req.at(0),req.at(2),"Soddisfatto")
  }
  return (req.at(0),req.at(2),"Non soddisfatto")
})
#let requisiti_qual = requisiti_qualita_con_codice.map(req => {
  if(satisfied_qual.contains(req.at(0).slice(3))){
    return (req.at(0),req.at(2),"Soddisfatto")
  }
  return (req.at(0),req.at(2),"Non soddisfatto")
})

#show figure: set block(breakable: true)
#figure(
table(
      columns: (1fr,7fr,auto),
      align: (center,left,center),
      fill:(_,row) =>if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Codice*],[*Descrizione*],[*Stato*],
      ..requisiti_funz.map(item => (item.at(0),item.at(1),item.at(2))).flatten().map(item => [#item])
),caption: "Tabella dei requisiti funzionali con annesso stato di soddisfacimento.")

#show figure: set block(breakable: true)
#figure(
table(
      columns: (1fr,7fr,auto),
      align: (center,left,center),
      fill:(_,row) =>if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Codice*],[*Descrizione*],[*Stato*],
      ..requisiti_vinc.map(item => (item.at(0),item.at(1),item.at(2))).flatten().map(item => [#item])
),caption: "Tabella dei requisiti di vincolo con annesso stato di soddisfacimento.")

#show figure: set block(breakable: true)
#figure(
table(
      columns: (1fr,7fr,auto),
      align: (center,left,center),
      fill:(_,row) =>if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Codice*],[*Descrizione*],[*Stato*],
      ..requisiti_qual.map(item => (item.at(0),item.at(1),item.at(2))).flatten().map(item => [#item])
),caption: "Tabella dei requisiti di qualità con annesso stato di soddisfacimento.")

#let numRequisitiSoddisfatti = requisiti_funz.filter(el => el.at(2).contains("Soddisfatto")).len() + requisiti_vinc.filter(el => el.at(2).contains("Soddisfatto")).len() + requisiti_qual.filter(el => el.at(2).contains("Soddisfatto")).len()
#let numTotaleRequisiti = requisiti_funz.len() + requisiti_vinc.len() + requisiti_qual.len()

#pagebreak()
== Grafici requisiti soddisfatti
Riguardo alla soddisfazione dei requisiti il gruppo SWAT Engineering ha soddisfatto #numRequisitiSoddisfatti su #numTotaleRequisiti, arrivando ad una copertura del #int(numRequisitiSoddisfatti/numTotaleRequisiti*100+0.50)%.
#let data = (
  /* CONTEGGIO REQUISITI SODDISFATTI */
  ("Soddisfatti",numRequisitiSoddisfatti),
  /* CONTEGGIO REQUISITI NON SODDISFATTI*/
  ("Non soddisfatti",numTotaleRequisiti - numRequisitiSoddisfatti),
)
#let piechart-config = (
  radius: 3,
  gap: 0deg,
  slice-style: palette.new(colors: (rgb(153, 255, 153), rgb(255, 128, 128))),
  label-key: (0),
  value-key: (1),
  outer-label: (content: "%"),
)
#let colors = (rgb(153, 255, 153), rgb(255, 128, 128))
#let types = ("Soddisfatti","Non soddisfatti")
#let types-legend = rect(stroke: 0.5pt + luma(140))[
  #let tuples = types.zip(colors)
  #stack(
    spacing: 0.75em,
    dir: ltr,
    ..tuples.map(tuple => stack(
      dir: ltr,
      spacing: 0.25em,
      rect(stroke: 0.75pt, fill: tuple.at(1), width: 0.75em, height: 0.75em), tuple.at(0)
    ))
  )
]

#figure({
  types-legend
  canvas({
    import draw: *

    chart.piechart(
      data,
      ..piechart-config
    )
  })
},
caption: "Requisiti soddisfatti rispetto al totale.",
kind: "chart",
supplement: "Grafico")

/* REQUISITI OBBLIGATORI */
#let req_obbligatori = requisiti_funz.filter(el => el.at(0).contains("RO")).len() +requisiti_vinc.filter(el => el.at(0).contains("RO")).len() + requisiti_qual.filter(el => el.at(0).contains("RO")).len()
#let req_obbligatori_soddisfatti = requisiti_funz.filter(el => el.at(0).contains("RO")).filter(el => el.at(0).slice(3) in satisfied_funz).len() +requisiti_vinc.filter(el => el.at(0).contains("RO")).filter(el => el.at(0).slice(3) in satisfied_funz).len() + requisiti_qual.filter(el => el.at(0).contains("RO")).filter(el => el.at(0).slice(3) in satisfied_funz).len()
/* REQUISITI DESIDERABILI */
#let req_desiderabili = requisiti_funz.filter(el => el.at(0).contains("RD")).len() +requisiti_vinc.filter(el => el.at(0).contains("RD")).len() + requisiti_qual.filter(el => el.at(0).contains("RD")).len()
#let req_desiderabili_soddisfatti = requisiti_funz.filter(el => el.at(0).contains("RD")).filter(el => el.at(0).slice(3) in satisfied_funz).len() +requisiti_vinc.filter(el => el.at(0).contains("RD")).filter(el => el.at(0).slice(3) in satisfied_funz).len() + requisiti_qual.filter(el => el.at(0).contains("RD")).filter(el => el.at(0).slice(3) in satisfied_funz).len()
/* REQUISITI OPZIONALI */
#let req_opzionali = requisiti_funz.filter(el => el.at(0).contains("RP")).len() +requisiti_vinc.filter(el => el.at(0).contains("RP")).len() + requisiti_qual.filter(el => el.at(0).contains("RP")).len()
#let req_opzionali_soddisfatti = requisiti_funz.filter(el => el.at(0).contains("RP")).filter(el => el.at(0).slice(3) in satisfied_funz).len() +requisiti_vinc.filter(el => el.at(0).contains("RP")).filter(el => el.at(0).slice(3) in satisfied_funz).len() + requisiti_qual.filter(el => el.at(0).contains("RP")).filter(el => el.at(0).slice(3) in satisfied_funz).len()

#let data_obb = (
  /* CONTEGGIO REQUISITI OBBLIGATORI SODDISFATTI*/
  ("Soddisfatti",req_obbligatori_soddisfatti),
  /* CONTEGGIO REQUISITI OBBLIGATORI NON SODDISFATTI */
  ("Non soddisfatti",req_obbligatori - req_obbligatori_soddisfatti),
)

#let data_des = (
  /* CONTEGGIO REQUISITI DESIDERABILI SODDISFATTI*/
  ("Soddisfatti",req_desiderabili_soddisfatti),
  /* CONTEGGIO REQUISITI DESIDERABILI NON SODDISFATTI */
  ("Non soddisfatti",req_desiderabili - req_desiderabili_soddisfatti),
)

#let data_opz = (
  /* CONTEGGIO REQUISITI OPZIONALI SODDISFATTI*/
  ("Soddisfatti",req_opzionali_soddisfatti),
  /* CONTEGGIO REQUISITI OPZIONALI NON SODDISFATTI */
  ("Non soddisfatti",req_opzionali - req_opzionali_soddisfatti),
)

Per quanto riguarda la copertura dei requisiti obbligatori, la copertura rilevata è di #req_obbligatori_soddisfatti su #req_obbligatori requisiti, arrivando quindi ad un #int(req_obbligatori_soddisfatti / req_obbligatori * 100 + 0.5)% sul totale.
#figure({
  types-legend
  canvas({
    import draw: *

    chart.piechart(
      data_obb,
      ..piechart-config
    )
  })
},
caption: "Requisiti obbligatori soddisfatti rispetto al totale.",
kind: "chart",
supplement: "Grafico")

#pagebreak()

In termini di soddisfacimento dei requisiti desiderabili, è stata raggiunta una copertura del #int(req_desiderabili_soddisfatti / req_desiderabili * 100 + 0.5)%, con #req_desiderabili_soddisfatti su #req_desiderabili.
#figure({
  types-legend
  canvas({
    import draw: *

    chart.piechart(
      data_des,
      ..piechart-config
    )
  })
},
caption: "Requisiti desiderabili soddisfatti rispetto al totale.",
kind: "chart",
supplement: "Grafico")

Per quanto concerne l'adempimento dei requisiti opzionali, abbiamo conseguito una percentuale del #int(req_opzionali_soddisfatti / req_opzionali * 100 + 0.5)% sul totale, con #req_opzionali_soddisfatti su #req_opzionali requisiti considerati.
#figure({
  types-legend
  canvas({
    import draw: *

    chart.piechart(
      data_opz,
      ..piechart-config
    )
  })
},
caption: "Requisiti opzionali soddisfatti rispetto al totale.",
kind: "chart",
supplement: "Grafico")