#import "meta.typ" : title
#import "functions.typ" : glossary, team

#set list(marker: ([•], [--]))
#set enum(numbering: "1.a.")

= Introduzione

== Scopo del documento
Il presente documento ha lo scopo di fornire una descrizione dettagliata dei casi d'uso e dei requisiti del progetto _InnovaCity_. Questi risultano dall'analisi del capitolato C6 presentato dalla Proponente _Sync_ Lab e dalla successiva interazione diretta con essa attraverso gli incontri svolti.

== Scopo del prodotto
Lo scopo del prodotto è la realizzazione di una piattaforma di monitoraggio,che generi dati provenienti da varie tipologie di dispositivi IoT e sensori dislocati nella città. Tale piattaforma consentirà all'#glossary("amministratore pubblico") di acquisire una panoramica completa delle condizioni della città, facilitando così la presa di decisioni informate e tempestive riguardo alla gestione delle risorse e all'implementazione di servizi. I dati visualizzati tramite questa piattaforma saranno generati mediante un processo di simulazione randomica accuratamente progettato per avvicinarsi il più possibile alla realtà. In alternativa, sarà possibile utilizzare dati reali liberamente accessibili per garantire una rappresentazione ancor più autentica delle condizioni della città.

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
L'obbiettivo consiste nella creazione di una piattaforma di monitoraggio e gestione una Smart City. L'utente, individuato nell'amministratore pubblico, potrà farne impiego per migliorare la qualità generale della vita e l'efficienza dei servizi nel contesto di un'area urbana. L'utente sarà in grado di controllare, attraverso la consultazione di una dashboard, lo stato della città, sotto i punti di vista ambientali, logistici e di sicurezza. Questo cruscotto includerà rappresentazioni grafiche basate su dati generati da una simulazione realistica, specificamente sviluppata per il progetto in questione.

== Funzionalità del prodotto
Il prodotto si compone di due parti principali:
-*Un simulatore* che genera dati il più verosimili possibile, cercando di riflettere con precisione le caratteristiche tipiche dei dati di diverse tipologie. Ad esempio, un    #glossary("sensore") di temperatura potrebbe essere modellato per produrre dati che seguano fedelmente un andamento simile a una sinusoide, per avvicinarsi il più possibile alle variazioni reali della temperatura.
  - I dati vengono inviati ad un sistema di stream processing che permetta di disaccoppiare lo stream di informazioni raccolto in #glossary("real-time"), e successivamente essere archiviati in un database OLAP.
- *Una dashboard* che permette di visualizzare i dati accumulati, sottoforma di grafici.

La piattaforma prevede fondamentalmente una tipologia di utente: l'amministratore pubblico. Questo utente avrà accesso alla dashboard e visualizzerà il sommario di diverse metriche e indicatori sullo stato della città, sottoforma di grafici.

== Tecnologie consigliate
La Proponente consiglia l'utilizzo delle seguenti tecnologie per la realizzazione del progetto:
- Implementazione dei simulatori. Tecnologia consigliata: *Python*;
- Database OLAP utilizzato per lo storage dei dati.  Tecnologia consigliata: *ClickHouse*;
- Piattaforma di stream processing. Tecnologia consigliata: *Kafka*.
- Dashboard di visualizzazione. Tecnologia consigliata: *Grafana*.

== Utenti e caratteristiche
Il prodotto è destinato ad amministratori pubblici, consentendo loro di ottenere una panoramica sulle condizioni della città. Ciò fornisce loro una base solida per prendere decisioni ponderate sulla gestione delle risorse e sull'implementazione dei servizi, il che risulta cruciale nel miglioramento dell'efficacia complessiva della gestione urbana. La ricezione tempestiva dei dati aggiornati migliora la capacità di risposta immediata in situazioni di emergenza, migliorando la gestione di eventi critici, in modo più efficiente e mirato. Un'altra figura che potrebbe essere interessata all'utilizzo del prodotto, potrebbe essere quella del dirigente aziendale: gli sarebbe permesso di ottenere informazioni rilevanti per gli obiettivi e gli interessi dell'azienda, come riduzione dei costi, miglioramento dell'efficienza e della produttività.

= Casi d'uso
== Scopo
In questa sezione si vogliono elencare e descrivere tutti i casi d'uso individuati dall'analisi effettuata dal gruppo, basandosi sul capitolato e sulle interazioni con la Proponente. In particolare, si individuano gli #glossary("attori") e le funzionalità che questi possono svolgere. Ogni caso d'uso possiede un codice, la cui struttura è descritta nelle Norme di Progetto.
e
== Attori
L'applicativo si interfaccerà con un solo tipo di attore:
- *Utente generico*: è un utente che ha accesso alla dashboard in tutte le sue funzionalità e può visualizzare i dati raccolti dai sensori.

La decisione di non inserire un utente con privilegi è da ricollegare al fatto che il prodotto ha comunque un target d'utenza limitato, che si compone di persone generalmente dotate di competenze tecniche e dunque in grado di interagire con il sistema in tutte le sue funzionalità.

#figure(
  image("assets/UtenteUC.png", width: 12%),
  caption: [Gerarchia degli attori]
)

/ UC1 : - Visualizzazione della Dashboard. 
#figure(
  image("assets/uc1.png",height: 12%),
  caption: [UC1]
)
  - *Attore Principale*: utente generico.
  - *Precondizioni*: almeno uno dei sensori è attivo e trasmette dati.
  - *Postcondizioni*: la dashboard mostra un'istantanea chiara e aggiornata dello stato generale della città attraverso dati e informazioni.
  - *Scenario Principale*:
    + l'utente accede alla Dashboard; 
    + il sistema elabora i dati provenienti dai sensori e li visualizza istantaneamente sulla dashboard.
  - *Generalizzazioni*:
    - Visualizzazione della mappa della città [UC1.1]
    - Visualizzazione di indicatori numerici [UC1.2]
#figure(
  image("assets/uc2.png", height:24%),
  caption: [visualizzazione mappa e indicatori]
)
/ UC1.1 : - Visualizzazione della mappa della città 
  - *Attore Principale*: utente generico.
  - *Precondizioni*: almeno uno dei sensori è attivo e trasmette dati.
  - *Postcondizioni*: il sistema mostra la mappa della città che evidenzia la suddivisione in celle e il posizionamento dei sensori.
  - *Scenario Principale*:
    + l'utente accede alla Dashboard; 
    + la mappa della città viene visualizzata; 
    + la posizione dei sensori distribuiti nella città viene evidenziata tramite icone;
    + la suddivisione in celle viene evidenziata delineandone il perimetro.
  - *Estensioni*:
    - L'utente:
      + interagisce con la mappa per visualizzare lo stato di una singola cella [UC2];
      + interagisce con la mappa per selezionare un singolo sensore [UC4].

/ UC1.2 : - Visualizzazione di indicatori numerici
  - *Attore Principale*: utente generico.
  - *Precondizioni*: almeno uno dei sensori è attivo e trasmette dati.
  - *Postcondizioni*: il sistema mostra i valori correnti di tutti i sensori.
  - *Scenario Principale*:
    + l'utente accede alla Dashboard; 
    + vengono mostrati pannelli con indicatori numerici che rappresentano i dati attuali misurati da ciascun tipo di sensore distribuito nella città;
    + gli indicatori numerici si aggiornano automaticamente per riflettere i dati più recenti provenienti dai sensori.

/ UC2 : - Visualizzazione dello stato di una #glossary("cella")
  - *Attore Principale*: utente generico.
  - *Precondizioni*:
    - almeno uno dei sensori all'interno della cella è attivo e trasmette dati;
    - la piattaforma contiene dati aggiornati e in tempo reale dei sensori nella cella selezionata.  (revisore: dimmi se è toglibile questa precondizione)
  - *Postcondizioni*: il sistema mostra lo stato attuale della cella selezionata attraverso la piattaforma, basandosi sui dati forniti dai sensori e dispositivi all'interno della stessa.
  - *Scenario Principale*:
    + l'utente visualizza la mappa della città [UC1.1];
    + l'utente seleziona una cella specifica;
    + il sistema mostra i #glossary("dati aggregati") provenienti dai sensori e dai dispositivi all'interno della cella selezionata sulla dashboard.
  - *Generalizzazioni*:
    - Visualizzazione della mappa della cella [UC2.1]
    - Visualizzazione di indicatori numerici della cella [UC2.2]

/ UC2.1 : - Visualizzazione della mappa della cella
  - *Attore Principale*: utente generico.
  - *Precondizioni*: l'utente ha visualizzato la mappa della città e selezionato una cella.
  - *Postcondizioni*: la visualizzazione si contentra sulla cella selezionata, ingrandendola, per mostrare dettagli specifici della cella selezionata.
  - *Scenario Principale*:
    + l'utente visualizza la mappa della città [UC1.1];
    + l'utente seleziona una cella specifica;
    + il sistema ingrandisce la cella selezionata.
  - *Estensioni*: l'utente interagisce con la mappa per selezionare un singolo sensore [UC4].

/ UC2.2 : - Visualizzazione di indicatori numerici della cella
  - *Attore Principale*: utente generico.
  - *Precondizioni*: l'utente ha visualizzato la mappa della città e selezionato una cella.
  - *Postcondizioni*: gli indicatori numerici mostrano i dati dei sensori situati nella cella selezionata.
  - *Scenario Principale*:
    + l'utente visualizza la mappa della città [UC1.1];
    + l'utente seleziona una cella specifica;
    + gli indicatori numerici sulla dashboard si aggiornano per riflettere i dati provenienti dai sensori situati nella cella selezionata.
  

/ UC3 : - Visualizzazione del registro dei sensori
  - *Attore Principale*: utente generico.
  - *Precondizioni*: almeno un sensore è attivo.
  - *Postcondizioni*: il sistema mostra un elenco organizzato contenente le informazione relative a tutti i sensori installati. 
  - *Scenario Principale*:
    + L'utente accede alla sezione dedicata alla visualizzazione dei sensori tramite la dashboard dell'applicazione;
    + i sensori sono inizialmente filtrati per tipologia in una visualizzazione tabellare, consentendo una rapida identificazione e analisi.
  - *Estensioni*: 
    + selezione un sensore [UC4];
    + filtraggio dei sensori in base alle loro caratteristiche [UC13].

/ UC4 : - Selezione di un sensore
  - *Attore Principale*: utente generico.
  - *Precondizioni*: almeno un sensore è attivo e trasmette dati.
  - *Postcondizioni*: vengono mostrate le informazioni relative al sensore selezionato e relativi dati storici.
  - *Scenario Principale*:
    + L'utente interagisce con la mappa [UC1.1, UC2.1] o, in alternativa, visualizza il registro di sensori [UC3] e seleziona un sensore specifico;
    + il sistema mostra i dettagli del sensore selezionato.
   - *Estensioni*: 
    + modifica dello stato del sensore selezionato[UC5];
    + impostazione del periodo temporale al fine visualizzare i dati storici relativi a quel periodo e al sensore selezionato sensore selezionato [UC6].

/ UC5 : - Modifica dello #glossary("stato di un sensore")
  - *Attore Principale*: utente generico.
  - *Precondizioni*: il sensore è già registrato nella piattaforma.
  - *Postcondizioni*: le modifiche apportate allo stato del sensore sono state applicate con successo e il sensore riflette le nuove informazioni nello stato operativo.
  - *Scenario Principale*:
    + L'utente seleziona il sensore di cui desidera modificare lo stato[UC4];
    + L'utente modifica lo stato del sensore;
    + Il sistema registra le modifiche apportate allo stato del sensore.
  

/ UC6 : - Visualizzazione dati in intervalli seleziati
  - *Attore principale*: utente generico.
  - *Precondizioni*: viene selezionato un sensore [UC4].
  - *Postcondizioni*: il sistema mostra i dati storici relativi all'intervallo temporale selezionato.
  - *Scenario Principale*:
    + L'utente accede all'opzione per l'impostazione del periodo temporale per l'analisi storica;
    + L'utente seleziona l'inizio e la fine del periodo desiderato per l'analisi;
    + L'utente conferma le impostazioni per il periodo temporale.
    + Il sistema mostra i dati relativi.
  - *Scenari secondario*: 
     + L'utente accede all'opzione per l'impostazione del periodo temporale per l'analisi storica;
     + L'utente seleziona una data non valida; 
     + il sistema rifiuta l'input e fornisce un messaggio d'errore.
  - *Estensioni*:
       + l'utente analizza i trend nel periodo selezionato[UC10]



/*
/ UC6 : - Impostazione del periodo temporale 
  - *Attore principale*: utente generico.
  - *Precondizioni*: viene selezionato un sensore [UC4].
  - *Postcondizioni*: il periodo temporale per l'analisi dei dati storici è impostato con successo.
  - *Scenario Principale*:
    + L'utente accede all'opzione per l'impostazione del periodo temporale per l'analisi storica;
    + seleziona l'inizio e la fine del periodo desiderato per l'analisi;
    + conferma le impostazioni per il periodo temporale.
  - *Scenari secondari*:
     + L'utente accede all'opzione per l'impostazione del periodo temporale per l'analisi storica;
     + L'utente seleziona una data non valida; 
     + il sistema rifiuta l'input e fornisce un messaggio d'errore.
  - *Estensioni*:
       + visualizzazione dei dati storici del sensore [UC8].
*/     

/*
viene rimosso in quanto presente come caso d'uso secondario del uc6
 UC7 :- Inserimento di date non valide 
  - *Attore Principale*: utente generico.
  - *Precondizioni*: viene selezionato un sensore per la visualizzazione dei dati storici e si è tentato di impostare un periodo temporale.
  - *Postcondizioni*: l'utente è stato notificato riguardo all'inserimento di date non valide.
  - *Scenario Principale*:
    - L'utente:
      + imposta un periodo temporale per visualizzare i dati storici del sensore [UC6];
      + durante l'inserimento delle date, l'utente fornisce date non valide;
      + il sistema notifica l'utente sull'errore riguardante le date non valide.
*/

/*
/ UC8 : - Visualizzazione dei dati storici di un sensore
  - *Attore Principale*: utente generico.
  - *Precondizioni*: la piattaforma ha archiviato e conservato dati storici dei sensori.
  - *Postcondizioni*: l'utente ha visualizzato e analizzato i dati storici del sensore selezionato.
  - *Scenario Principale*:
    - L'utente:
      + seleziona il sensore di interesse per l'analisi storica [UC4];
      + imposta il periodo temporale desiderato per visualizzare i dati storici [UC6];
      + visualizza una tabella contenenti i dati storici del sensore selezionato.
  - *Estensioni*: l’utente visualizza i trend dei dati storici del sensore durante il periodo selezionato [UC10].
*/

/ UC7 : - Allarmi  del sistema
  - *Attore Principale*: utente generico.
  - *Precondizioni*: il sistema è operativo e raccoglie attivamente i dati dai sensori. Soglie e condizioni per la rilevazione delle anomalie sono definite e configurate.
  - *Postcondizioni*: Il sistema notifica l'utente in caso di allarmi. La notifica comprende dati rilevanti e informazioni contestuali per consentire azioni o analisi    aggiuntive.
  - *Scenario Principale*:
    + Il sistema monitora continuamente i dati dei sensori;
    + quando viene rilevata un'anomalia, un evento critico o viene superata una soglia, il sistema attiva un allarme;
    + l'allarme viene inviato attraverso un canale designato.
    + l'utente visualizza l'allarme sulla dashboard.
  - *Generalizzazioni*:
      - Allarmi per rilevazione anomalie [UC7.1]
      - Allarmi per superamento soglie [UC7.2]

/ UC7.1 : - Allarmi per rilevazione anomalie 
  - *Attore Principale*: utente generico.
  - *Precondizioni*: il sistema è operativo e raccoglie attivamente i dati dai sensori. Soglie e condizioni per la rilevazione delle anomalie sono definite e configurate.
  - *Postcondizioni*: il sistema  notifica l'utente  in modo appropriato quando vengono attivati gli allarmi per rilevazioni anomale e successivamente viene aggiornato l'archivio delle anomalie.
  - *Scenario Principale*:
    + Il sistema analizza costantemente i dati provenienti dai sensori per rilevare deviazioni o pattern insoliti;
    + quando viene identificata un'anomalia significativa, il sistema genera automaticamente una notifica di allarme;
    + l'utente riceve le notifiche di allarme per l'anomalia.
    + l'utente visualizza l'allarme.
    + il sistema archivia l'anomalia in un registro dedicato, includendo dati, ora, tipologia anomalia e sensore coinvolto.
/*
UC7.1 : - Allarmi per rilevazione anomalie
  - *Attore Principale*: sistema.
  - *Precondizioni*: il sistema è operativo e raccoglie attivamente i dati dai sensori. Soglie e condizioni per la rilevazione delle anomalie sono definite e configurate [UC9].
  - *Postcondizioni*: l'utente viene notificato in modo appropriato quando vengono attivati gli allarmi per rilevazioni anomale.
  - *Scenario Principale*:
    - Il sistema:
      + analizza costantemente i dati provenienti dai sensori per rilevare deviazioni o pattern insoliti;
      + quando viene identificata un'anomalia significativa, il sistema genera automaticamente una notifica di allarme;
      + l'utente riceve le notifiche di allarme per le anomalie.
  - *Estensioni*: il sistema registra e mantiene un log delle anomalie rilevate per analisi e archiviazione [UC10].
*/

/ UC7.2 : - Allarmi per superamento soglie
  - *Attore Principale*: utente generico.
  - *Precondizioni*: il sistema è operativo e raccoglie attivamente i dati dai sensori. Soglie e condizioni per la rilevazione delle anomalie sono definite e configurate.
  - *Postcondizioni*: il sistema notifica l'utente in modo appropriato quando vengono attivati gli allarmi per superamento delle soglie.
  - *Scenario Principale*:
    + L'utente imposta manualmente le soglie per i dati del sensore desiderato;
    + quando i dati del sensore superano le soglie predefinite, il sistema genera automaticamente una notifica di allarme;
    + l'utente riceve le notifiche di allarme per il superamento delle soglie
    + l'utente prende misure opportune di conseguenza.
  - *Estensioni*: il sistema consente agli utenti di modificare o aggiornare le soglie in base alle esigenze in qualsiasi momento [UC9].

/ UC8 : - Accesso all'archivio delle anomalie rilevate
  - *Attore Principale*: utente generico.
  - *Precondizioni*: il sistema è operativo e raccoglie attivamente i dati dai sensori. Soglie e condizioni per la rilevazione delle anomalie sono definite e configurate.
  - *Postcondizioni*: il sistema mostra all'utente l'archivio delle anomalie.
  - *Scenario Principale*:
    + l'utente accede alla sezione riguardante le anomalie sulla dashboard. 
    + il sistema mostra all'utente il registro delle anomalie, visualizzandone  dati, orario e tipologia sensore dalla dashboard.
 /* -*Estensione*: l'esportazione del registro in uno specifico formato*/
/* ci potrebbe essere un caso d'uso riguardo l'accesso all'archivio */
/* ci potrebbe essere un caso d'uso riguardo l'esportazione dei dati in un formato del tipo .....*/

/*
UC8 : - Archiviazione delle anomalie rilevate
  - *Attore Principale*: sistema.
  - *Precondizioni*: il sistema ha rilevato un'anomalia significativa.
  - *Postcondizioni*: l'anomalia rilevata è stata registrata e archiviata per futura analisi.
  - *Scenario Principale*:
    - Il sistema:
      + rileva un'anomalia significativa durante l'analisi dei dati sensoriali [UC9.1];
      + registra i dettagli dell'anomalia rilevata, inclusi dati, orario, tipo di anomalia e sensore coinvolto;
      + l'anomalia viene archiviata all'interno di un registro dedicato per le anomalie.
*/


/ UC9 : - Modifica della soglia di rilevazione sensoriale
  - *Attore Principale*: utente generico.
  - *Precondizioni*: il sistema è operativo.
  - *Postcondizioni*: la soglia di rilevazione del sensore viene modificata con successo.
  - *Scenario Principale*:
      + L'utente seleziona il sensore per il quale desidera modificare le soglia;
      + L'Utente modifica manualmente i valori delle soglia;
      + L'utente conferma le nuove impostazioni.

/ UC10 : - Analisi dei trend
  - *Attore Principale*: utente generico.
  - *Precondizioni*: dati storici disponibili per il periodo specificato.
  - *Postcondizioni*: il sistema mostra una rappresentazione visuale dei trend dei dati sensoriali durante il periodo selezionato.
  - *Scenario Principale*:
      + L'utente visualizza i dati storici del sensore di interesse [UC6];
      + L'utente visualizza grafici che evidenziano i trend dei dati sensoriali durante il periodo selezionato.



/ UC11 : - Analisi avanzata dei sensori
  - *Attore Principale*: utente generico.
  - *Precondizioni*: i dati sensoriali sono sufficientemente distribuiti per poter effettuare analisi significative.
  - *Postcondizioni*: il sistema ha analizzato e confrontato i dati tra sensori di diverse tipologie o tra celle della città, mostrando all'utente visualizzazioni e statistiche dettagliate.
  - *Scenario Principale*: 
    + L'utente accede dalla dashboard all'area dedicata all' analisi avanzata tra sensori.
    + L'utente configura i parametri dell’analisi desiderata;
    + Il sistema elabora i dati e visualizza i risultati.
  - *Generalizzazioni*:
    - Correlazione tra tipologie di sensori [UC11.1];
    - Confronto tra celle della città [UC11.2].

/ UC11.1 : - Correlazione tra tipologie di sensori
  - *Attore Principale*: utente generico.
  - *Precondizioni*: i dati sono disponibili per i sensori che si vogliono analizzare. Almeno due tipi diversi di sensori attivi.
  - *Postcondizioni*: il sistema mostra all'utente una visualizzazione dettagliata e comparativa dei dati tra due diverse tipologie di sensori.
  - *Scenario Principale*:
      + L'utente accede dalla dashboard all'area dedicata all' analisi avanzata tra sensori;
      + L'utente seleziona due tipologie diverse di sensori tra quelle disponibili nell'area di analisi;
      + il sistema elabora i dati dei sensori selezionati e mostra una rappresentazione grafica comparativa.
  - *Estensioni*: il sistema consente all'utente di salvare i risultati dell'analisi per future consultazioni.

/ UC11.2 : - Confronto tra celle della città
  - *Attore Principale*: utente generico.
  - *Precondizioni*: la piattaforma dispone dei dati sensoriali di almeno due celle della città.
  - *Postcondizioni*: il sistema mostra all'utente i dati confrontati e le statistiche relative alle celle selezionate.
  - *Scenario Principale*:
    + L'utente accede dalla dashboard all'area dedicata all' analisi avanzata tra sensori;
    + L'utente seleziona due diverse celle di analisi; 
    + il sistema elabora i dati o le statistiche comparate per le celle selezionate.
  -*Scenario Secondario*: 
    + L'utente accede dalla dashboard all'area dedicata all' analisi avanzata tra sensori;
    + il sistema esegue controlli sui dati disponibili all’interno delle celle selezionate per determinare la comparabilità;
    + le celle presentano una variazione significativa nei tipi di sensori presenti all’interno;
    + il sistema notifica l’utente riguardo alla presenza di celle non comparabili e fornisce dettagli sul motivo per cui non sono adatte per un confronto accurato.
/*
- *Estensioni*: se l'utente seleziona celle non comparabili, riceve una notifica di errore [UC12].

/ UC12 : - Selezione di celle non comparabili
  - *Attore Principale*: utente generico.
  - *Precondizioni*: l’utente seleziona due celle diverse per effettuare un’analisi di confronto.
  - *Postcondizioni*: l’utente riceve una notifica riguardo alla selezione di celle non comparabili.
  - *Scenario Principale*:
    - L’utente:
      + seleziona almeno due celle diverse per l’analisi comparativa [UC11.2];
      + il sistema esegue controlli sui dati disponibili all’interno delle celle selezionate per determinare la comparabilità;
      + una o entrambe le celle presentano una delle seguenti situazioni: viene rilevata un’insufficienza di dati per i tipi di sensori desiderati oppure una variazione significativa nei tipi di sensori presenti all’interno delle celle selezionate;
      + il sistema notifica l’utente riguardo alla presenza di celle non comparabili e fornisce dettagli sul motivo per cui non sono adatte per un confronto accurato.
*/

/ UC13 : - Filtraggio dei sensori
  - *Attore Principale*: utente generico.
  - *Precondizioni*: la rete di sensori contiene almeno un sensore.
  - *Postcondizioni*: l'utente ha una visualizzazione dei sensori filtrati in base ai criteri selezionati.
  - *Scenario Principale*:
    - L'utente:
      + accede alla piattaforma di gestione dei sensori [UC3];
      + seleziona le caratteristiche per il filtraggio dei sensori:
        - Identificativo univoco;
        - Tipologia;
        - Stato;
        - Posizione geografica;
        - Cella di appartenenza;
        - Codice di fabbrica.
      + applica i filtri e visualizza solo i sensori che soddisfano i criteri selezionati.

/ UC15 : - Aggiunta di un sensore reale
  - *Attore Principale*: utente generico.
  - *Precondizioni*: il sensore fisico è disponibile e pronto per l'installazione.
  - *Postcondizioni*: il nuovo sensore reale è stato correttamente aggiunto alla rete e i suoi dati sono ora disponibili nella piattaforma per l'analisi e la visualizzazione.
  - *Scenario Principale*:
    - L'utente:
      + accede alla sezione di gestione dei sensori [UC3];
      + registra il nuovo sensore specificando le informazioni necessarie;
      + il sistema verifica e riconosce il nuovo sensore nella rete.
  - *Estensioni*: se il sistema non riesce a riconoscere o integrare correttamente il nuovo sensore, l'utente riceve una notifica di errore.

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
  [*ROF8*],[Obbligatorio],[L’utente deve poter visualizzare una panoramica di tutti i sensori all’interno della rete.],
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
  [*ROF19*],[Obbligatorio],[L’utente deve poter visualizzare i trend temporali dei dati sensoriali.],
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
  [*RPV7*],[Opzionale],[L'evidenziazione di relazioni tra dati provenienti da sorgenti diverse],
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
  [RDF13], [UC7],
  [ROF14], [UC8],
  [RPF15], [UC7, UC7.1],
  [ROF16], [UC8],
  [RPF17], [UC7, UC7.2],
  [RDF18], [UC9],
  [ROF19], [UC10],
  [RDF20], [UC11, UC11.1],
  [RDF21], [UC11, UC11.2],
  [RDF22], [UC12],
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
  [funzionali], [11], [4], [3], [18],
  [di qualità], [4], [0], [0], [4],
  [di vincolo], [5], [3], [2], [10]
)
