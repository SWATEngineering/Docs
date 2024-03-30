#import "functions.typ": glossary, team

/*************************************/
/*    INSERIRE SOTTO IL CONTENUTO    */ 
/*************************************/
= Introduzione

== Scopo del documento
Lo scopo del documento è fornire istruzioni dettagliate sull'utilizzo del prodotto software "InnovaCity", illustrandone le funzionalità principali e le opzioni di personalizzazione. In tal modo, si vuole informare l'#glossary("amministratore pubblico") dei requisiti minimi da soddisfare per poter usufruire del prodotto, degli step necessari per la sua installazione e di tutte le funzionalità a disposizione dell'utente per sfruttarne appieno il potenziale.

== Scopo del prodotto
Lo scopo del prodotto è la realizzazione di un sistema di persistenza dati e successiva visualizzazione di questi, provenienti da sensori dislocati geograficamente. Tale piattaforma consentirà all'#glossary("amministratore pubblico") di acquisire una panoramica completa delle condizioni della città, facilitando così la presa di decisioni informate e tempestive riguardo alla gestione delle risorse e all'implementazione di servizi.

== Glossario
Al ﬁne di evitare possibili ambiguità relative al linguaggio utilizzato nei documenti, viene fornito il _Glossario v1.0_, nel quale sono presenti tutte le definizioni di termini aventi uno specifico significato che vuole essere disambiguato. Tali termini, sono scritti in  corsivo e marcati con una G a pedice.

== Riferimenti
=== Riferimenti normativi 
- Capitolato C6 - InnovaCity: Smart city monitoring platform:
#link("https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C6.pdf") (10/03/2024)

- _Norme di Progetto v2.0_

- Regolamento progetto didattico:
#link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/PD2.pdf") (10/03/2024)

=== Riferimenti informativi
- _Analisi dei Requisiti v2.0_

- _Specifica Tecnica v1.0_

- *#glossary[Grafana]*: #link("https://grafana.com/docs/grafana/latest/"); (10/03/2024)

- *Docker*: #link("https://docs.docker.com/"); (10/03/2024)

#pagebreak()

= Requisiti minimi
Per poter garantire un corretto funzionamento del prodotto, è necessario rispettare i requisiti minimi delineati in seguito.

== Requisiti hardware
I requisiti hardware indicano le specifiche tecniche relative alle componenti hardware necessarie per garantire un'esperienza di utilizzo soddisfacente del prodotto e prestazioni accettabili.

#figure(
table(
      columns:(100pt,auto),
      align: (x, y) => (center, center).at(x),
      fill:(_,row) => if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Componente hardware*],[*Requisito*],
      [CPU], [Quad-Core 2,5 GHz],
      [RAM], [6GB]),
caption: [Tabella requisiti hardware.])

== Requisiti di #glossary[sistema] operativo
I requisiti di #glossary[sistema] operativo indicano la versione minima del #glossary[sistema] operativo necessaria affinché il prodotto software possa essere eseguito correttamente su un determinato dispositivo.

#figure(
table(
      columns:(100pt,auto),
      align: (x, y) => (center, center).at(x),
      fill:(_,row) => if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Sistema operativo*],[*Versione*],
      [Windows], [10],
      [MACOS], [10.14 Mojave],
      [Linux Ubuntu], [22.04]),
caption: [Tabella requisiti di #glossary[sistema] operativo.])

== Requisiti software
I requisiti software indicano le specifiche relative al software che deve essere installato sul #glossary[sistema] dell'utente per garantire l'avvio e l'esecuzione del prodotto.

#figure(
table(
      columns:(100pt,auto,auto),
      align: (x, y) => (center, center, center).at(x),
      fill:(_,row) => if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Software*],[*Versione*],[*Download*],
      [Docker], [25.0.3], [#link("https://docs.docker.com/get-docker/")],
      [#glossary[Docker Compose]], [2.24.6], [#link("https://docs.docker.com/compose/install/")]),
caption: [Tabella requisiti software.])

== Requisiti browser
I requisiti browser indicano le specifiche tecniche necessarie per garantire che il prodotto software possa essere visualizzato e utilizzato correttamente su un browser web specifico.

#figure(
table(
      columns:(100pt,auto),
      align: (x, y) => (center, center).at(x),
      fill:(_,row) => if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Browser*],[*Versione*],
      [Google Chrome], [122],
      [Mozilla Firefox], [123],
      [Microsoft Edge], [122]),
caption: [Tabella requisiti browser.])

#pagebreak()

= Installazione
La seguente sezione fornisce istruzioni dettagliate su come installare e avviare il prodotto software "InnovaCity". Si consiglia di seguire gli step riportati nell'ordine specificato di seguito.

== Clonare la #glossary[repository]

+ Avviare un prompt dei comandi;

+ Spostarsi nella cartella in cui si desidera clonare la #glossary[repository]\;

+ Con Git installato in locale, clonare la #glossary[repository] tramite il comando:
#set align(center)
`git clone https://github.com/SWATEngineering/InnovaCity.git`
#set align(left)

== Creare API Key
Per il corretto funzionamento del simulatore di biciclette elettriche è necessario registrarsi o accedere al seguente servizio: #link("https://openrouteservice.org/dev/#/signup") e ottenere l'API key. Una volta effettuato l'accesso:

- andare nella sezione "Dashboard";
- se non ancora accettati, accettare i "Termini e Condizioni", nella sotto-sezione "Profile";
- nella sotto-sezione "Tokens" creare un nuovo token scegliendo la versione "Standard" e un nome a piacemento;
- Copiare l'API Key generata a schermo e salvarla per dopo.

== Creare Discord Webhook
Il sistema di notifiche utilizza un canale in un server Discord per inviare i propri messaggi. In un server di nostra appartenenza, o in uno nel quale abbiamo i permessi:
- cliccare col tasto destro su un canale testuale;
- cliccare sulla voce "Modifica Canale";
- nella nuova schermata cliccare sulla voce "Integrazioni";
- cliccare sulla voce "Crea Webhook";
A questo punto vedrete il vostro webhook creato, potete dargli un nome a piacimento, modificare eventualmente il canale testuale a cui è collegato e copiare il webhook.
Copiatelo e salvatelo per lo step successivo.

== Variabili d'Ambiente
Nella directory della repository clonata al passo 1. allo stesso livello del file "README.md" creare un file chiamato ".env" (il punto è importante) con il seguente contenuto:
```env
ORS_API_KEY=<API_KEY_GENERATA_AL_PASSO_2>
DISCORD_WEBHOOK_URL=<API_KEY_GENERATA_AL_PASSO_3>
```
Sostituendo i valori salvati prima subito dopo l'uguale, rimuovendo i placeholders tra parentesi angolate (e togliendo anche le parentesi angolate).

== Avviare l'applicazione

+ Eseguire il comando:
#set align(center)
`docker-compose --profile prod up -d`
#set align(left)

Avendo eseguito gli step riportati sopra, #glossary[Grafana] è visitabile all'indirizzo #link("http://localhost:3000/") su browser.

#pagebreak()

= Istruzioni per l'uso

== Informazioni generali su #glossary[dashboard] e #glossary[pannelli]

=== #glossary[Dashboard]

Le #glossary[dashboard], concepibili come contenitori di #glossary[pannelli], riportano in alto un header contenente diverse opzioni atte a navigare attraverso #glossary[Grafana] e a personalizzare l'apparenza della #glossary[dashboard] stessa:

#figure(
  image("assets/screenshots/menu-dashboard.png",width:100%),
  caption: [Menù delle dashboard.]
)

1. *Navigazione breadcrumb*: permette di visualizzare in quale parte del sito l'utente è collocato e di navigarci secondo la gerarchia del sito. Ad esempio è possibile accedere facilmente alla pagina Home ("Home") o all'elenco delle #glossary[dashboard] in "Dashboards";

2. "*Mark as favorite*": per salvare la #glossary[dashboard] tra i preferiti;

3. "*Share #glossary[dashboard] or panel*": per condividere il #glossary[pannello] o la #glossary[dashboard] corrente utilizzando un link o uno snapshot;

4. "*Save #glossary[dashboard]*": per salvare i cambiamenti effettuati sulla #glossary[dashboard]\;

5. "*#glossary[Dashboard] settings*": per accedere alle impostazioni della #glossary[dashboard], che consentono di cambiarne il nome, cartella di appartenenza, gestirne le variabili ed eventuali annotazioni;

6. "*Time picker dropdown*": per selezionare l'intervallo di tempo nel quale i dati vengono visualizzati all'interno dei vari #glossary[pannelli] contenuti nella #glossary[dashboard]; si possono selezionare intervalli di tempo relativi all'ora corrente (ad esempio, "last 5 minutes") o intervalli di tempo assoluti (ad esempio, "2024-05-14 00:00:00 to 2024-05-15 23:59:59"). Si può anche utilizzare il pulsante "Change time settings" per cambiare il fuso orario e l'anno fiscale considerato negli intervalli di tempo:

      - Gli intervalli di tempo relativi possono essere selezionati a partire dalla lista fornita, che può essere filtrata utilizzando la casella di input che la precede "Search quick ranges";

      - Gli intervalli di tempo assoluti possono essere selezionati in due modi principali:

            - Inserendo dei valori all'interno dei campi "From" e "To": si possono inserire timestamp veri e propri o valori relativi come "now-5m", per poi cliccare il pulsante "Apply time range";

            - Cliccando all'interno di uno dei campi "From" o "To", viene visualizzato un calendario che consente di scegliere il giorno (o i giorni) che si vuole impostare come intervallo temporale; una volta fatto ciò, basta cliccare il pulsante "Apply time range";

7. "*Zoom out time range*": per allargare l'intervallo di tempo selezionato;

8. "*Refresh dashboard*": per effettuare immediatamente il refresh dei dati mostrati all'interno della #glossary[dashboard]\;

9. "*Refresh dashboard time interval*": per selezionare l'intervallo di tempo che trascorre tra un refresh automatico e quello successivo.

Per maggiori informazioni sull'utilizzo delle #glossary[dashboard], si rimanda alla #glossary[documentazione] ufficiale di #glossary[Grafana] a tal proposito (#link("https://grafana.com/docs/grafana/latest/dashboards/use-dashboards/")).

=== #glossary[Pannelli]

I #glossary[pannelli] riportano in alto a sinistra il titolo e in alto a destra l'icona del menù; posizionando il cursore sopra l'icona alla destra del titolo, viene visualizzata anche la descrizione del #glossary[pannello]. Il menù riporta le opzioni che #glossary[Grafana] mette a disposizione per gestire ogni #glossary[pannello], indipendentemente dalla tipologia di grafico contenuto, ovvero:

- "*View*": per visualizzare il #glossary[pannello] a schermo intero;

- "*Share*": per condividere il #glossary[pannello] come link, embed o library panel;

- "*Explore*": per aprire il #glossary[pannello] nella pagina "Explore", dove si possono visualizzare e modificare le query che reperiscono i dati rilevanti;

- "*Inspect*": per aprire la pagina "Inspect", dove si possono visualizzare i dati, statistiche, metadati, codice JSON e query relativi al #glossary[pannello];

- "*More...*": per accedere a opzioni aggiuntive, come "Duplicate", "Copy", "Create library panel", "Hide legend" e "Get help".

Posizionando il cursore sopra l'header contenente titolo e icona del menù in cima al #glossary[pannello] e vedendo che assume la forma di un cursore di spostamento, è possibile cliccare e, tenendo premuto, muovere il #glossary[pannello] all'interno della #glossary[dashboard] cambiandone la posizione. Infine, in basso a destra è visibile un puntatore angolato che indica il punto in cui posizionare il cursore affinché assuma la forma di un cursore di ridimensionamento; è sufficiente cliccare e, tenendo premuto, ridimensionare il #glossary[pannello] rendendolo più piccolo o più grande a piacimento.

== Dashboard "Ambientale"

La #glossary[dashboard] "Ambientale" è dedita alla visualizzazione di dati relativi all'ambiente, che includono temperatura, percentuale di umidità, direzione e velocità del vento, intensità delle precipitazioni, livello di polveri sottili e riempimento dei bacini idrici. Quelli riportati sono aspetti monitorati all'interno della #glossary[dashboard] tramite #glossary[pannelli] contenenti grafici di varia natura, in particolare si utilizza: il formato "#glossary[Time series]", il formato "Geomap", il formato "Table", il formato "Stat" e il formato "Gauge". Per maggiori informazioni sulla natura di ciascun formato, si rimanda alla #glossary[documentazione] ufficiale di #glossary[Grafana]. 

=== #glossary[Pannelli] con grafici in formato "#glossary[Time series]"

I #glossary[pannelli] contenenti grafici in formato "#glossary[time series]" riportano dati relativi a:

- Media della temperatura riportata da ciascun #glossary[sensore], espressa in gradi Celsius (°C), con dati aggregati in intervalli di 1 minuto;

#figure(
image("assets/screenshots/timeseries-temperatura.png",width:100%),
caption: [Grafico in formato Time series della temperatura.]
)

- Media dell'umidità nell'aria riportata da ciascun #glossary[sensore], espressa in percentuale, con dati aggregati in intervalli di 1 minuto;

#figure(
image("assets/screenshots/timeseries-umidita.png",width:100%),
caption: [Grafico in formato Time series dell'umidità.]
)

- Media dell'intensità delle precipitazioni riportata da ciascun #glossary[sensore], espressa in millimetri orari (mm/h), con dati aggregati in intervalli di 1 minuto;

#figure(
image("assets/screenshots/timeseries-precipitazioni.png",width:100%),
caption: [Grafico in formato Time series delle precipitazioni.]
)

- Media del livello di polveri sottili nell'aria riportata da ciascun #glossary[sensore], espressa in $#sym.mu g\/m^3$ (#glossary("PM10")), con dati aggregati in intervalli di 1 minuto;

#figure(
image("assets/screenshots/timeseries-inquinamento.png",width:100%),
caption: [Grafico in formato Time series del livello di polveri sottili.]
)

- Media del riempimento dei bacini idrici riportata da ciascun #glossary[sensore], espressa in percentuale, con dati aggregati in intervalli di 1 minuto.

#figure(
image("assets/screenshots/timeseries-bacini.png",width:100%),
caption: [Grafico in formato Time series dei bacini idrici.]
)

Tali #glossary[pannelli] mostrano l'ora del giorno sull'asse x, la legenda del contenuto al di sotto dell'asse x e l'unità di misura del dato in esame sull'asse y. La legenda, in particolare, riporta i nomi dei sensori rilevanti e la media dell'andamento di tutti i sensori (con dati aggregati in intervalli di 5 minuti); cliccando su uno qualsiasi di questi elementi, è possibile filtrare il contenuto del grafico per mostrare esclusivamente l'andamento dell'elemento selezionato e nascondere il resto; cliccando nuovamente si riporta il grafico allo stato di default. Posizionando il cursore sopra un punto qualunque dell'andamento dei dati forniti da un dato #glossary[sensore], è possibile visualizzarne timestamp, nome del #glossary[sensore] e valore corrispondente. Infine, per impostare l'intervallo di tempo nel quale i dati vengono visualizzati all'interno dei vari #glossary[pannelli] in formato #glossary[Time series] contenuti nella #glossary[dashboard], è possibile selezionare una qualunque porzione del grafico, in alternativa all'uso del "Time picker dropdown" descritto nella sezione *#glossary[Dashboard]*; infatti, la selezione di parte del grafico consente di effettuare uno zoom-in sulla finestra temporale corrispondente, che viene effettivamente inserita all'interno del "Time picker dropdown".

=== #glossary[Pannelli] con grafici in formato "Geomap"

I #glossary[pannelli] contenenti grafici in formato "Geomap" riportano dati relativi a:

- Direzione del vento riportata da ciascun #glossary[sensore], dove i sensori vengono rappresentati tramite il proprio nome e una freccia puntata nella direzione del vento;

- Posizione dei sensori inclusi nella #glossary[dashboard] "Ambientale", dove i sensori vengono rappresentati tramite icone il cui colore varia a seconda della tipologia del #glossary[sensore].

Tali #glossary[pannelli] mettono a disposizione, in alto a sinistra, due pulsanti "*+*" e "*-*" per poter effettuare operazioni di zoom-in e zoom-out, rispettivamente (il zoom-in può essere effettuato anche con un doppio click); è possibile cliccare e, tenendo premuto, muovere la mappa per visualizzarne aree diverse a piacimento e posizionare il cursore sopra un qualunque #glossary[sensore] per visualizzarne le informazioni: nel caso della mappa che mostra il posizionamento dei sensori ambientali, queste includono il nome del #glossary[sensore], la tipologia del #glossary[sensore], latitudine e longitudine. Nel caso della mappa che mostra la direzione del vento, invece, le informazioni visualizzate includono anche la velocità e la direzione del vento più recenti. Infine, in basso a sinistra è presente una scala di colori che riporta il valore minimo e massimo dei dati riportati dal #glossary[sensore], così come la colorazione del #glossary[sensore] stesso a seconda dell'ultimo valore riportato. Quando il cursore viene posizionato sopra un determinato #glossary[sensore], anche nella scala di colori viene visualizzato il valore della velocità del vento più recente.

=== #glossary[Pannelli] con grafici in formato "Table"

Il #glossary[pannello] contenente un grafico in formato "Table" riporta dati relativi a:

- Velocità del vento riportata da ciascun #glossary[sensore], espressa in chilometri all'ora (km/h) e direzione, espressa in gradi (con gli 0° a Nord e i 180° a Sud).

Tale #glossary[pannello] contiene una tabella avente campi che indicano il nome del #glossary[sensore], la velocità del vento più recente e la sua direzione; sono visibili delle scroll bar che consentono di scorrere la tabella verticalmente o orizzontalmente in caso non fosse interamente visibile. Inoltre, cliccando sul nome di un determinato campo, è possibile ordinare la tabella rispetto a quel campo in ordine crescente o decrescente. 

=== #glossary[Pannelli] con grafici in formato "Stat"

Il #glossary[pannello] contenente un grafico in formato "Stat" riporta dati relativi a:

- Media della temperatura riportata da tutti i sensori cumulativamente, nell'intervallo di tempo selezionato;

- Massimo livello di polveri sottili nell'aria tra quelli riportati da tutti i sensori cumulativamente, nell'intervallo di tempo selezionato.

#figure(
image("assets/screenshots/media-temperatura.png",width:20%),
caption: [Grafico in formato Stat della temperatura.]
)

Tale #glossary[pannello] contiene un indice numerico che riporta quanto descritto sopra. L'interazione con questo pannello non si distingue dalla descrizione presente nella sezione *Pannelli*.

=== #glossary[Pannelli] con grafici in formato "Gauge"

Il #glossary[pannello] contenente un grafico in formato "Gauge" riporta dati relativi a:

- Media dell'intensità delle precipitazioni riportata da tutti i sensori cumulativamente, nell'intervallo di tempo selezionato.

Tale #glossary[pannelli] riporta quanto descritto sopra e non vi sono particolarità nel modo di interagirvi, al di là di quello che accomuna tutti i #glossary[pannelli] in #glossary[Grafana] descritto nella sezione *Pannelli*.

== Dashboard "Urbanistica"

La #glossary[dashboard] "Urbanistica" è dedita alla visualizzazione di dati relativi alla città, che possono includere ma non sono limitati a disponibilità dei parcheggi, disponibilità delle colonne di ricarica per automobili elettriche, stato di congestione delle strade, livello di batteria delle biciclette elettriche e riempimento delle zone ecologiche. Quelli riportati sono aspetti monitorati all'interno della #glossary[dashboard] tramite #glossary[pannelli] contenenti grafici di varia natura, in particolare si utilizza: il formato "Geomap" e il formato "Table".

=== #glossary[Pannelli] con grafici in formato "Geomap"

I #glossary[pannelli] contenenti grafici in formato "Geomap" riportano dati relativi a:

- Disponibilità dei parcheggi, tramite un indicatore numerico che riporta il numero di posti liberi;

- Disponibilità delle colonne di ricarica, tramite icone colorate;

- Stato di congestione delle strade, tramite gli stati "LOW", "MEDIUM", "HIGH" e "BLOCKED";

- Livello di batteria delle biciclette elettriche, tramite un indicatore numerico che ne riporta la percentuale;

- Riempimento delle zone ecologiche, tramite un indicatore numerico che riporta la percentuale di riempimento.

Le interazioni con tali #glossary[pannelli] sono identiche a quelle descritte per la stessa tipologia di #glossary[pannelli] all'interno della #glossary[dashboard] "Ambientale".

=== #glossary[Pannelli] con grafici in formato "Table"

Il #glossary[pannello] contenente un grafico in formato "Table" riporta dati relativi a:

- Erogazione delle colonne di ricarica riportata da ciascun #glossary[sensore], espressa in chiloWatt per ora (kWh).

Tale #glossary[pannello] contiene una tabella avente campi che indicano il nome del #glossary[sensore] e l'erogazione più recente; anche in questo caso le interazioni sono identiche a quelle descritte in precedenza.

== Dashboard "Dati grezzi"

La #glossary[dashboard] "Dati grezzi" è dedita alla raccolta e alla visualizzazione dei dati inviati da tutti i sensori e comprende sia i dati storici che quelli inviati in tempo reale; la #glossary[dashboard] consente anche di filtrare tutti i dati in base al nome e alla tipologia dei sensori di interesse, per poter risalire con facilità ai dati inviati da questi ultimi. Per questo scopo, viene utilizzato un unico #glossary[pannello] di tipo "Table".

=== #glossary[Pannello] con grafico in formato "Table"

Tale #glossary[pannello] è preceduto da un header che riporta due campi di input con etichette: "Nome Sensore" e "Tipologia". Cliccando sull'etichetta alla sinistra del campo o sul campo stesso, è possibile visualizzare il numero di valori attualmente selezionati ("Selected") ed, eventualmente, selezionarne altri utilizzando le checkbox apposite. Inoltre, è possibile inserire manualmente il valore desiderato all'interno del campo ("Enter variable value") per filtrare velocemente i valori a disposizione. Il campo "Nome Sensore" riporta i nomi di tutti sensori a disposizione e il campo "Tipologia" riporta le tipologie dei sensori. 
La tabella vera e propria contiene i campi "Nome Sensore", "Tipologia", "Orario" e "Rilevazione", ques'ultima per i valori delle misurazioni effettuate dai sensori; i valori del campo "Tipologia" hanno un colore ditinto a seconda del tipo di #glossary[sensore] indicato.

Come evidenziato in precedenza, è possibile ordinare i valori di tutti i campi della tabella in ordine crescente o decrescente semplicemente cliccandone il nome collocato in cima alla colonna corrispondente.

== Dashboard "Superamento soglie"

La #glossary[dashboard] "Superamento soglie" è dedita alla visualizzazione dei dati che superano determinate soglie preimpostate per i sensori che monitorano le precipitazioni, il riempimento delle zone ecologiche, il riempimento dei bacini idrici, il livello di polveri sottili nell'aria e la temperatura; in particolare, sono previsti 5 #glossary[pannelli] di tipo "Table", ognuno dedicato ad una tipologia diversa di #glossary[sensore], con campi "name", "timestamp" e "value".

=== #glossary[Pannelli] con grafici in formato "Table"

- Superamento soglia precipitazioni (50 mm/h): riporta i dati superanti la soglia dei 50 millimetri di pioggia all'ora;

- Superamento soglia riempimento zone ecologiche (80%): riporta i dati superanti la soglia dell'80% di capienza;

- Superamento soglia livello bacini idrici (70%): riporta i dati superanti la soglia del 70% di capienza;

- Superamento soglia livello polveri sottili ($80#sym.mu g\/m^3$): riporta i dati superanti la soglia degli $80#sym.mu g\/m^3$ per l'inquinamento dell'aria (#glossary("PM10"));

- Superamento soglia temperatura (40°C): riporta i dati superanti la soglia dei 40 gradi Celsius di temperatura.

#pagebreak()

= Supporto tecnico

Per assistenza tecnica relativa all'utilizzo del prodotto software "InnovaCity", viene fornito il seguente indirizzo email:

#set align(center)
`swateng.team@gmail.com`
#set align(left)

Per un servizio più efficiente, si è pregati di includere nel corpo dell'email una descrizione quanto più completa del problema riscontrato, insieme ad eventuali screenshot o dettagli aggiuntivi che possano risultare utili alla risoluzione di quest'ultimo. Si invita, inoltre, a descrivere eventuali passaggi già tentati per risolvere il problema, in modo che il team possa fornire un'assistenza più mirata. 
