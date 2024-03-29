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
L'obiettivo principale del presente documento è triplice: innanzitutto, motivare le scelte di sviluppo adottate; in secondo luogo, fungere da guida fondamentale per l'attività di codifica; infine, garantire una completa copertura dei requisiti identificati nel documento _Analisi dei Requisiti v2.0_.
Alla luce del modello di sviluppo agile individuato dal team, la redazione del documento segue un approccio iterativo. L'adeguatezza del documento e dell'architettura individuata viene costantemente monitorata e modificata sulla base dei requisiti e dei feedback ricevuti da parte della Proponente.

== Scopo del prodotto
Lo scopo del prodotto è la realizzazione di un sistema di persistenza dati e successiva visualizzazione di questi, provenienti da sensori dislocati geograficamente. Tale piattaforma consentirà all'#glossary("amministratore pubblico") di acquisire una panoramica completa delle condizioni della città, facilitando così la presa di decisioni informate e tempestive riguardo alla gestione delle risorse e all'implementazione di servizi.

== Glossario
Al ﬁne di evitare possibili ambiguità relative al linguaggio utilizzato nei documenti, viene fornito il _Glossario v1.0_, nel quale sono presenti tutte le definizioni di termini aventi uno specifico significato che vuole essere disambiguato. Tali termini, sono scritti in  corsivo e marcati con una G a pedice.

== Riferimenti

=== Riferimenti normativi 
- Capitolato C6 - InnovaCity: Smart city monitoring platform:
#link("https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C6.pdf") (20/02/2024) \
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
 #link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T6.pdf") (4/03/2024) \
- Architetture #[#sym.kappa] & #[#sym.lambda]:
  - #link("https://imply.io/blog/building-event-analytics-pipeline-with-confluent-cloud-and-imply-real-time-database-polaris/") (28/02/2024)
  - #link("https://medium.com/sysco-labs/real-time-sales-analytics-using-kappa-architecture-852dc84bfe7b") (28/02/2024)

=== riferimenti tecnici
- *#glossary[Python]*: #link("https://docs.python.org/3/"); (4/03/2024)
- *#glossary[Grafana]*: #link("https://grafana.com/docs/grafana/latest/"); (20/02/2024)
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
      [Pydantic], [Libreria #glossary[Python] per la serializzazione degli oggetti e per la validazione dei dati, inoltre si caratterizza dalla capacità di forzare i tipi garantendo che i dati siano coerenti durante l'elaborazione.], [2.6], 
      [Confluent Kafka], [Libreria #glossary[Python] che fornisce gli strumenti necessari per produrre e consumare messaggi da Apache #glossary("Kafka"). ], [1.9]), 
caption: [Tabella tecnologie per la Codifica: #glossary[Framework] e librerie])
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
    + Wattaggio delle colonne di ricarica;
    + Riempimento delle zone ecologiche;
    + Livelli di congestione stradale;
    + Batteria delle biciclette elettriche. 
- *Invio al #glossary[broker] dei dati*:  i dati generati dai sensori vengono inviati al #glossary[broker] dati, in questo contesto #glossary[Kafka]. #glossary[Kafka] offre un meccanismo di messaggistica distribuita in grado di gestire grandi volumi di dati in tempo reale;
- *Engine interno(archiviatore)*: l'archiviatore, rappresentato dal motore interno "Kafka" di #glossary[ClickHouse], agisce direttamente come consumatore dei dati provenienti dal broker dei dati (#glossary[Kafka]). Questo avviene tramite la connessione a specifici topic nel broker dati, ognuno associato a un tipo di sensore distinto. Successivamente, i dati corrispondenti vengono archiviati nelle rispettive tabelle del database;
- *Materializzazione*: i dati corrispondenti la temperatura, umidità, precipitazioni, inquinamento atmosferico e livello dei bacini idrici vengono aggregati in tabelle apposite attraverso l'utilizzo di #glossary[materialized views]. Queste aggregazioni avvengono su intervalli di 5 minuti, consentendo così l'applicazione delle medie mobili;
- *Interrogazioni (query)*: vengono effettuate varie interrogazioni e analisi sui dati memorizzati all'interno delle tabelle;
- *Visualizzazione*: l'#glossary[amministratore pubblico] visualizza i dati, ritornati in output dalle query, su una piattaforma apposita (nel nostro caso Grafana).




== Architettura dei simulatori
Nonostante i simulatori non siano ufficialmente considerati parte integrante del prodotto dalla proponente, il nostro team, nell'ambito del progetto didattico, ha scelto di dedicare alcune risorse alla progettazione di questa componente.

Nei paragrafi successivi viene mostrata l'architettura individuata, tramite l'utilizzo di Diagrammi delle Classi e relative rapide descrizioni. Inoltre verranno motivati i design pattern individuati e le decisione progettuali rilevanti. Successivamente per ogni classe verranno illustrati metodi e attributi.

=== Struttura generale 

#figure(
  image("diagrammiclassi/struttura.png",width:100%),
  caption: [Diagramma delle classi 2]
)

La classe _SimulatorExecutorFactory_ è implementazione del design pattern _Factory_, si occupa prima della costruzione dei singoli simulatori a partire da un file di configurazione che gli viene passato tramite la costruzione, per poi restituire un SimulatorExecutor che avrà il compito di orchestrarli.
I simulatori sono istanze delle classe _SimulatorThread_: tale classe eredita dalla classe _Thread_ della Standard Library, in modo tale che l'esecuzione dei simulatori possa essere parallela. 

#figure(
  image("diagrammiclassi/simulator.png",width:100%),
  caption: [Diagramma delle classi 2]
)
La classe _SensorSimulatorStrategy_ è realizzazione del design pattern _Strategy_, dove ogni strategia rappresenta una tipologia di sensore simulato differente. Al fine di garantire la possibilità di effettuare unit-testing sul comportamento dei simulatori di sensori tale classe riceve tramite costruttore un oggetto di tipo _Random_ e un oggetto di tipo _Datetime_. 
Tali strategie verranno poi assegnate ad un _SimulatorThread_.

#figure(
  image("diagrammiclassi/writer.png",width:100%),
  caption: [Diagramma delle classi 3]
)
Anche la classe _Writer_ realizza il design pattern _Strategy_. Sono state progettate due strategie, la prima, (_KafkaWriter_), atta a permettere al simulatore di inviare i messaggi contenenti i dati della rilevazione a #glossary("Kafka"), mentre la seconda atta a permettere al simulatore di stampare i risultati su terminale al fine di poterne testare il comportamento. Inoltre l'applicazione del Design Pattern potrebbe consentire di realizzare il componente di scrittura anche per eventuali ulteriori broker dati, nel momento in cui ce ne sia il bisogno.
Nello specifico la classe _KafkaWriter_ realizza il suo scopo tramite l'impiego del design pattern _Adapter_, nella sua variante _Object Adapter_. Viene infatti fatto utilizzo della classe _Producer_ della liberia _confluent_kafka_. Dato che tale classe potrebbe essere soggetta a variazioni non controllabili da noi, si è deciso di utilizzare tale pattern per permettere di rispondere prontamente a tali cambiamenti, spostando la complessità di tali proprio nell'adapter.

=== Classi: metodi e attributi
Si procede alla descrizione  di classi e interfacce progettate dal team.
Non vengono menzionati i costruttori. 
==== SimulatorExecutorFactory (Classe)
//TODO: da rivedere perchè dobbiamo descrivere anche come funziona nel caso in cui la porta e l'host non devono essere passate (tipo per l'StdOutWriter ad esempio).
//Secondo me (Kara) qui potremmo utilizzare un'altro strategy.
===== Attributi
- *config_file_name: String [Privato]*: Percorso relativo del file di configurazione dei simulatori; 
- *data_broker_host: String [Privato]*: indirizzo ip della macchina che ospita il message broker; 
- *data_broker_port: String [Privato]*: porta della macchina che ospita il message broker; 
- *io_module: FileIO [Privato]*: modulo per interagire con il file system.
===== Metodi
- *create(): SimulatorExecutor [Pubblico]*: a partire dal file che viene passato tramite costruttore si occupa di costruire un oggetto della classe _SimulatorExecutor_.

==== SimulatorExecutor (Classe)
===== Attributi
- *simulators:SimulatorThread[\*] [Privato]*: Collezione di oggetti _SimulatorThread_.
===== Metodi
- *stop_all(): void [Pubblico]*: Metodo  che arresta la simulazione di tutti i _SimulatorThread_; 
- *run_all(): void [Pubblico]*: Metodo  che avvia la simulazione di tutti i _SimulatorThread_. 

==== SimulatorThread (Classe)
===== Attributi
- *is_running: bool [Privato]*: Attributo  che indica se al momento il simulatore sta producendo dati.
- *Se*
===== Metodi
- *stop(): void[Pubblico]*: Metodo che arresta la simulazione del singolo  _SimulatorThread_; 
- *run(): void[Pubblico]*: Metodo che avvia la simulazione del singolo  _SimulatorThread_.

==== SensorSimulatorStrategy (Classe)
===== Attributi
- *wait_time_in_seconds: int [Protetto]*: intervallo temporale tra due simulazioni.
- *sensor_name: String [Protetto]*: nome identificativo del sensore; 
- *random_obj: Random [Privato]*: oggetto della classe Random della libreria Standard di #glossary("Python"); 
- *datetime_obj: Datetime [Privato]*: oggetto della classe Datetime della libreria Standard di #glossary("Python"); 
- *coordinates : Coordinates [Protetto]*: oggetto della classe Coordinates. 
===== Metodi 
- *simulate(): String [Pubblico]*: metodo che produce una stringa contenente il messaggio contenente la rilevazione simulata effettuata.

==== Coordinates (Classe)
===== Attributi
- *longitude: float [Privato]*: longitudine geografica. 
- *latitude: float [Privato]*: latitudine geografica.
===== Metodi
- *getGeoJSON(): string [Pubblico]* : ritorna le coordinate geografiche nel formato GeoJSON.

==== WriterStrategy (interfaccia)
===== Metodi
- *write(in to_write:String): void [Pubblico]*: pubblica il messaggio contenuto nella stringa passata come parametro.

==== StdOutWriter (Classe)
===== Metodi
- *write(in to_write:String): void [Pubblico]*: Scrive il messaggio contenuto nella stringa passata come parametro tramite standard output.

==== KafkaWriter (Classe)
===== Attributi 
//qui ho un dubbio su fatto che port e ip debbano essere attributi. nel caso non lo siano vanno aggiornati anche nel grafico
- *ip: String [Privato]* : indirizzo ip della macchina che ospita il message broker; 
- *port: String [Privato]* : porta della macchina che ospita il message broker; 
- *topic: String [Privato]*: indica il topic sul message Broker in cui il messaggio sarà scritto.
===== Metodi
- *write(in to_write:String): void [Pubblico]*: Scrive il messaggio contenuto nella stringa passata come parametro sul topic corrispondente nel broker.

==== TargetProducer (Interfaccia)
===== Metodi
- *producer(in topic:Sting, in value:String, in callback:Function): void [Pubblico]*: Metodo che il client usa per inviare il messaggio a Kafka.

==== AdapterProducer (Interfaccia)
===== Attributi 
- *adaptee: Producer (Privato)*
===== Metodi
- *producer(in topic:Sting, in value:String, in callback:Function): void [Pubblico]*: Metodo che richiama il metodo _produce()_ dell'oggetto _adaptee_ di tipo  _Producer_ della libreria _Confluent Kafka_.


#pagebreak()
= Tracciamento dei requisiti
In questa sezione si va a mostrare, secondo quanto riportato dal documento  _Norme di Progetto v2.0_, la soddisfazione dei singoli requisiti funzionali presenti, in base al tipo previsto e opportunamente classificato sotto.

== Tabella dei requisiti soddisfatti
Si vuole riportare ciascun requisito mediante il corrispondente codice, utilizzando le seguenti sigle, le quali indicano:
- ROF - Requisito Obbligatorio Funzionale;
- RDF - Requisito Desiderabile Funzionale;
- RPF - Requisito Opzionale Funzionale.

Rispetto alla stessa tabella ritrovabile nel documento _Analisi dei Requisiti v2.0_, qui è presente una colonna _Stato_ indicante la soddisfazione di tale requisito.

/*L'array deve contenere i numeri dei requisiti da soddisfare, espressi come stringa*/
/*Esempio: #let satisfied = ("1","5","18")*/
#let satisfied_funz = (
  "1","2"
)
#let satisfied_vinc = (
  "1","2"
)
#let satisfied_qual = (
  "1","2"
)
#let requisiti_funz = requisiti_funzionali_con_codice.map(req => {
  if(satisfied_funz.contains(req.at(0).slice(3))){
    return (req.at(0),req.at(2),"Soddisfatto") 
  }
  return (req.at(0),req.at(2),"Non soddisfatto")
})
#let requisiti_vinc = requisiti_vincolo_con_codice.map(req => {
  if(satisfied_funz.contains(req.at(0).slice(3))){
    return (req.at(0),req.at(2),"Soddisfatto") 
  }
  return (req.at(0),req.at(2),"Non soddisfatto")
})
#let requisiti_qual = requisiti_qualita_con_codice.map(req => {
  if(satisfied_funz.contains(req.at(0).slice(3))){
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
#let numRequisitiSoddisfatti = requisiti_funz.filter(el => el.at(2).contains("Soddisfatto")).len()
#let numTotaleRequisiti = requisiti_funz.len()

#pagebreak()
== Grafici requisiti soddisfatti
Riguardo alla soddisfazione dei vari requisiti funzionali, il gruppo SWAT Engineering ha soddisfatto #numRequisitiSoddisfatti su #numTotaleRequisiti requisiti, arrivando ad una copertura del #int(numRequisitiSoddisfatti/numTotaleRequisiti*100+0.50)%.

#let data = (
  /* CONTEGGIO REQUISITI FUNZIONALI SODDISFATTI */
  ("Soddisfatti",requisiti_funz.filter(el => el.at(2).contains("Soddisfatto")).len()),
  /* CONTEGGIO REQUISITI FUNZIONALI NON SODDISFATTI*/
  ("Non soddisfatti",requisiti_funz.len()-satisfied_funz.len()),
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
caption: "Requisiti funzionali soddisfatti rispetto al totale.",
kind: "chart",
supplement: "Grafico")


#let req_obbligatori = requisiti_funz.filter(el => el.at(0).contains("RO")).len() +requisiti_vinc.filter(el => el.at(0).contains("RO")).len() + requisiti_qual.filter(el => el.at(0).contains("RO")).len()
#let req_obbligatori_soddisfatti = requisiti_funz.filter(el => el.at(0).contains("RO")).filter(el => el.at(0).slice(3) in satisfied_funz).len() +requisiti_vinc.filter(el => el.at(0).contains("RO")).filter(el => el.at(0).slice(3) in satisfied_funz).len() + requisiti_qual.filter(el => el.at(0).contains("RO")).filter(el => el.at(0).slice(3) in satisfied_funz).len()



#let data = (
  /* CONTEGGIO REQUISITI OBBLIGATORI SODDISFATTI*/
  ("Soddisfatti",req_obbligatori_soddisfatti),
  /* CONTEGGIO REQUISITI OBBLIGATORI NON SODDISFATTI */
  ("Non soddisfatti",req_obbligatori - req_obbligatori_soddisfatti),
)



Invece per quanto riguarda la copertura dei requisiti obbligatori, la copertura rilevata è di #req_obbligatori_soddisfatti su #req_obbligatori requisiti, arrivando quindi ad un #int(req_obbligatori_soddisfatti / req_obbligatori * 100 + 0.5)% sul totale.
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
caption: "Requisiti obbligatori soddisfatti rispetto al totale.",
kind: "chart",
supplement: "Grafico")