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

- _Specifiche Tecniche v1.0_

- *#glossary[Grafana]*: #link("https://grafana.com/docs/grafana/latest/"); (10/03/2024)

- *Docker*: #link("https://docs.docker.com/"); (10/03/2024)

#pagebreak()

= Requisiti minimi
Per poter garantire un corretto funzionamento del prodotto, è necessario rispettare i requisiti minimi delineati in seguito.

== Requisiti software
I requisiti software indicano le specifiche relative al software che deve essere installato sul #glossary[sistema] dell'utente per garantire l'avvio e l'esecuzione del prodotto.

#figure(
table(
      columns:(100pt,auto,auto),
      align: (x, y) => (center, center, center).at(x),
      fill:(_,row) => if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Software*],[*Versione*],[*Download*],
      [Docker], [25.0.3], [#link("https://docs.docker.com/get-docker/")],
      [#glossary[Docker Compose]], [2.24.6], [Integrato nel download di Docker]),
caption: [Tabella requisiti software.])

== Requisiti hardware
I requisiti hardware indicano le specifiche tecniche relative alle componenti hardware necessarie per garantire un'esperienza di utilizzo ottimale del prodotto e prestazioni elevate.

#figure(
table(
      columns:(100pt,auto),
      align: (x, y) => (center, center).at(x),
      fill:(_,row) => if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Componente hardware*],[*Requisito*],
      [CPU], [Quad-Core 2,5 GHz],
      [RAM], [4GB]),
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
      [Linux Ubuntu], [22.04],
      [Linux Mint], [21]),
caption: [Tabella requisiti di #glossary[sistema] operativo.])

== Requisiti browser
I requisiti browser indicano le specifiche tecniche necessarie per garantire che il prodotto software possa essere visualizzato e utilizzato correttamente su un browser web specifico.

#figure(
table(
      columns:(100pt,auto),
      align: (x, y) => (center, center).at(x),
      fill:(_,row) => if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Browser*],[*Versione*],
      [Google Chrome], [120],
      [Mozilla Firefox], [120],
      [Microsoft Edge], [120],
      [Opera], [106]),
caption: [Tabella requisiti browser.])

#pagebreak()

= Installazione
La seguente sezione fornisce istruzioni dettagliate su come installare e avviare il prodotto software "InnovaCity". Si consiglia di seguire gli step riportati nell'ordine specificato di seguito.

== Clonare la #glossary[repository]

+ Avviare un prompt dei comandi;

+ Spostarsi nella cartella in cui si desidera clonare la #glossary[repository]\;

+ Con Git installato in locale, clonare la #glossary[repository] tramite il comando:
`git clone https://github.com/SWATEngineering/InnovaCity.git`.

== Avviare l'applicazione

+ Eseguire il comando: `docker-compose --profile prod up -d`;

+ Avendo eseguito gli step riportati sopra, l'applicazione sarà disponibile visitando l'indirizzo #link("http://localhost:3000/") su un browser.

#pagebreak()

= Istruzioni per l'uso

== Login
Innanzitutto, è necessario inserire le credenziali di accesso a #glossary[Grafana] ed effettuare il login per poter usufruire dell'applicazione:
  - *username*: ic_admin;
  - *password*: ic_admin.


#pagebreak()

= Supporto tecnico

Per assistenza tecnica relativa all'utilizzo del prodotto software "InnovaCity", viene fornito il seguente indirizzo email:

`swateng.team@gmail.com`

Per un servizio più efficiente, si è pregati di includere nel corpo dell'email una descrizione quanto più completa del problema riscontrato, insieme ad eventuali screenshot o dettagli aggiuntivi che possano risultare utili alla risoluzione di quest'ultimo. Si invita, inoltre, a descrivere eventuali passaggi già tentati per risolvere il problema, in modo che il team possa fornire un'assistenza più mirata. 
