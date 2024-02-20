#import "functions.typ": glossary, team, shrinkFloat
#import "../AnalisiDeiRequisiti/content.typ": requisiti_funzionali_con_codice
#import "@preview/cetz:0.2.0": *
#import chart

/*************************************/
/*    INSERIRE SOTTO IL CONTENUTO    */ 
/*************************************/

= Introduzione

== Scopo del documento
Il presente documento ha lo scopo di fornire una descrizione dettagliata della fase di progettazione del progetto "InnovaCity". 
Vengono descritte #glossary("architettura implementativa") e #glossary("architettura di deployment").
Inoltre vengono riportati i #glossary("design pattern") e gli idiomi utilizzati nella fase di codifica. 
Il documento in oggetto vuole dapprima motivare determinate scelte di sviluppo, essere una guida per l'attività di codifica, inoltre vuole garantire la copertura totale dei requisiti. 
Alla luce del modello di sviluppo agile individuato dal team, il documento sarà redatto con un approccio iterativo.  



== Scopo del prodotto
Lo scopo del prodotto è la realizzazione di un sistema di persistenza dati e successiva visualizzazione di questi, provenienti da sensori dislocati geograficamente. Tale piattaforma consentirà all'#glossary("amministratore pubblico") di acquisire una panoramica completa delle condizioni della città, facilitando così la presa di decisioni informate e tempestive riguardo alla gestione delle risorse e all'implementazione di servizi.

== Glossario
Al ﬁne di evitare possibili ambiguità relative al linguaggio utilizzato nei documenti, viene fornito il _Glossario v1.0_, nel quale sono presenti tutte le definizioni di termini aventi uno specifico significato che vuole essere disambiguato. Tali termini, sono scritti in  corsivo e marcati con una G a pedice.

== Riferimenti

=== Riferimenti normativi 

=== Riferimenti informativi

=== riferimenti tecnici

= Tecnologie
== Per la Codifica
=== Linguaggi e formati dati
#figure(
table(
      columns:(auto,auto,auto),
      align: (x, y) => (center, center, center).at(x),
      fill:(_,row) => if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Tecnologia*],[*Descrizione*],[*Versione*],
      [Python], [Linguaggio di programmazione ad alto livello noto per la sua semplicità, ampiamente utilizzato nell'analisi dei dati, l'intelligenza artificiale, il calcolo scientifico e altro ancora.], [da definire], 
      [Sql], [Linguaggio standard per la gestione e la manipolazione dei database], [da definire], 
      [Yaml], [Formato di serializzazione dei dati leggibile dall'uomo comunemente utilizzato per la configurazione dei servizi e lo scambio di dati tra programmi.], [da definire], 
      [JSON], [Formato leggero per lo scambio di dati, facile da leggere e scrivere per gli esseri umani e facile da analizzare e generare per le macchine.], [da definire]), 
caption: [Tabella tecnologie per la la Codifica: Linguaggi e formati dati.])
=== Framework e Librerie
#figure(
table(
      columns:(auto,auto,auto),
      align: (x, y) => (center, center, center).at(x),
      fill:(_,row) => if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Tecnologia*],[*Descrizione*],[*Versione*],
      [Pydantic], [Libreria Python per la serializzazione degli oggetti e per la validazione dei dati, inoltre si caratterizza dalla capacità di forzare i tipi garantendo che i dati siano coerenti durante l'elaborazione.], [da definire], 
      [Confluent Kafka], [Piattaforma di streaming di dati basata su Apache Kafka. È progettata per gestire e processare flussi di dati in tempo reale in modo scalabile e affidabile. ], [da definire]), 
caption: [Tabella tecnologie per la la Codifica: Framework e Librerie])
=== Database e servizi
#figure(
table(
      columns:(auto,auto,auto),
      align: (x, y) => (center, center, center).at(x),
      fill:(_,row) => if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Tecnologia*],[*Descrizione*],[*Versione*],
      [ClickHouse], [Sistema di gestione dei database colonnari, progettato per l'analisi dei dati ad alte prestazioni. È ottimizzato per eseguire query analitiche su grandi volumi di dati in modo efficiente.], [da definire], 
      [Kafka], [Piattaforma di streaming di dati distribuita e scalabile, progettata per la gestione di flussi di dati in tempo reale. È ampiamente utilizzato per l'elaborazione di eventi, la messaggistica asincrona e la creazione di pipeline dati real time.], [da definire], 
      [Grafana], [Piattaforma open source per il monitoraggio e l'analisi dei dati. Fornisce strumenti per la visualizzazione di metriche e log, la creazione di dashboard interattive e la generazione di avvisi in tempo reale.], [da inserire],  
      [Grafana ClickHouse Data Source], [Plugin che consente di interrogare e visualizzare i dati di ClickHouse in Grafana], [da inserire], 
      [Docker], [Piattaforma open-source che permette di creare, distribuire e gestire applicazioni in contenitori software.], [da inserire]), 
caption: [Tabella tecnologie per la la Codifica: Database e servizi.])
#pagebreak()
== Per l'analisi del codice
#figure(
table(
      columns:(auto,auto,auto),
      align: (x, y) => (center, center, center).at(x),
      fill:(_,row) => if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Tecnologia*],[*Descrizione*],[*Versione*],
      [Pep8], [Stile di codifica per il codice Python che definisce le linee guida per la formattazione del codice, rendendolo più leggibile e uniforme.], [da definire]), 
caption: [Tabella tecnologie per l'analisi del codice])
== Per la Continuos Integration 
/*Qui c'è un attimo da capire cosa metterci dentro*/
/*git hub action*/
/**/

= Architettura
== Architettura generale 
/*ci metterei effettivamente il DFD della pipeline e poco di più*/
== Architettura 
/*già sai*/
== Architettura di deployment 
/*mi piacerebbe sapere cosa vuol dire ma al momento non lo so*/

= Tracciamento dei requisiti
In questa sezione si va a mostrare, secondo quanto riportato dal documento delle _Norme di progetto v2.0_, la soddisfazione dei singoli requisiti funzionali presenti, in base al tipo previsto e opportunamente classificato sotto.

== Tabella dei requisiti soddisfatti
Si vuole riportare ciascun requisito mediante il corrispondente codice, utilizzando le seguenti sigle, le quali indicano:
- ROF - Requisito Obbligatorio Funzionale;
- RDF - Requisito Desiderabile Funzionale;
- RPF - Requisito Opzionale Funzionale.

Rispetto alla stessa tabella ritrovabile nel documento _Analisi dei Requisiti v2.0_, qui è presente una colonna _Stato_ indicante la soddisfazione di tale requisito.

/*L'array deve contenere i numeri dei requisiti da soddisfare, espressi come stringa*/
/*Esempio: #let satisfied = ("1","5","18")*/
#let satisfied = (
  "1","2"
)
#let requisiti = requisiti_funzionali_con_codice.map(req => {
  if(satisfied.contains(req.at(0).slice(3))){
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
      ..requisiti.map(item => (item.at(0),item.at(1),item.at(2))).flatten().map(item => [#item])
),caption: "Tabella dei requisiti funzionali con annesso stato di soddisfacimento.")
#let numRequisitiSoddisfatti = requisiti.filter(el => el.at(2).contains("Soddisfatto")).map(el => 1).sum()
#let numTotaleRequisiti = requisiti.map(el => 1).sum()

== Grafici requisiti soddisfatti
Riguardo alla soddisfazione dei vari requisiti funzionali, il gruppo SWAT Engineering ha soddisfatto #numRequisitiSoddisfatti su #numTotaleRequisiti requisiti, arrivando ad una copertura dell' #shrinkFloat(numRequisitiSoddisfatti/numTotaleRequisiti*100)%.

#let data = (
  /* CONTEGGIO REQUISITI FUNZIONALI SODDISFATTI */
  ("Soddisfatti",requisiti.filter(el => el.at(2).contains("Soddisfatto")).map(el => 1).sum()),
  /* CONTEGGIO REQUISITI FUNZIONALI NON SODDISFATTI*/
  ("Non soddisfatti",requisiti.map(el => 1).sum()-satisfied.map(el => 1).sum()),
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

#let data = (
  /* CONTEGGIO REQUISITI FUNZIONALI OBBLIGATORI */
  ("Soddisfatti",requisiti.filter(el => el.at(0).contains("ROF") and el.at(2) == "Soddisfatto").map(el => 1).sum()),
  /* CONTEGGIO REQUISITI FUNZIONALI OBBLIGATORI NON SODDISFATTI */
  ("Non soddisfatti",requisiti.filter(el => el.at(0).contains("ROF")).map(el => 1).sum()),
)

/* TODO: Rifare i calcoli con i requisiti obbligatori (NON SOLAMENTE FUNZIONALI)*/

Invece per quanto riguarda la copertura dei requisiti obbligatori, la copertura rilevata è del 
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
caption: "Requisiti funzionali obbligatori soddisfatti rispetto al totale.",
kind: "chart",
supplement: "Grafico")