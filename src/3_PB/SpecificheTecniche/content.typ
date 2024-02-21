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
L'obiettivo principale del presente documento è triplice: innanzitutto, motivare le scelte di sviluppo adottate; in secondo luogo, fungere da guida fondamentale per l'attività di codifica; infine, garantire una completa copertura dei requisiti identificati nell'documento _Analisi dei Requisiti v1.0_.
Alla luce del modello di sviluppo agile individuato dal team, la redazione del documento segue un approccio iterativo. L'adeguatezza del documento e dell'architettura individuata viene costantemente monitorata e modificata alla luce dei requisiti e dai feedback ricevuti da parte della Proponente.

== Scopo del prodotto
Lo scopo del prodotto è la realizzazione di un sistema di persistenza dati e successiva visualizzazione di questi, provenienti da sensori dislocati geograficamente. Tale piattaforma consentirà all'#glossary("amministratore pubblico") di acquisire una panoramica completa delle condizioni della città, facilitando così la presa di decisioni informate e tempestive riguardo alla gestione delle risorse e all'implementazione di servizi.

== Glossario
Al ﬁne di evitare possibili ambiguità relative al linguaggio utilizzato nei documenti, viene fornito il _Glossario v1.0_, nel quale sono presenti tutte le definizioni di termini aventi uno specifico significato che vuole essere disambiguato. Tali termini, sono scritti in  corsivo e marcati con una G a pedice.

== Riferimenti

=== Riferimenti normativi 
- Capitolato C6 - InnovaCity: Smart city monitoring platform:
#link("https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C6.pdf")\
#link("https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C6p.pdf")

- _Norme di Progetto v1.0_
- _Analisi dei Requisiti v1.0_

- Regolamento progetto didattico:
#link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/PD2.pdf")

=== Riferimenti informativi

- Gamma, E., Helm, R., Johnson, R., & Vlissides, J. (1994). *Design Patterns: Elements of Reusable Object-Oriented Software.* Addison-Wesley.
/*in caso aggiungere qualche riferimento sui dataflow diagram*/
- Diagrammi delle classi (UML) - corso di Ingegneria del Software a.a. 2023/2024: \
#link("https://www.math.unipd.it/~rcardin/swea/2023/Diagrammi%20delle%20Classi.pdf") 
- Diagrammi di Sequenza (UML) - corso di Ingegneria del Software a.a. 2023/2024: \
#link("https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20di%20Sequenza.pdf") /*se non li mettiamo si possono anche togliere*/
- Progettazione - corso di Ingegneria del Software a.a. 2023/2024: \
 #link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T6.pdf") \

=== riferimenti tecnici
- *#glossary[Python]*: #link("https://docs.python.org/3/");
- *#glossary[Grafana]*: #link("https://grafana.com/docs/grafana/latest/");
- *Apache #glossary[Kafka]*: #link("https://kafka.apache.org/20/documentation.html");
- *#glossary[Clickhouse]*: #link("https://clickhouse.com/docs"); 
- *Confluent Kafka*:#link("https://docs.confluent.io/kafka-clients/python/current/overview.html");

#pagebreak()
= Tecnologie
Questa sezione si propone di offrire una panoramica sintetica delle tecnologie adottate. Questo breve paragrafo introduttivo fornisce un quadro generale delle piattaforme, dei linguaggi di programmazione, dei framework e di altre risorse tecnologiche che costituiscono le basi del nostro progetto. 

== Codifica
=== Linguaggi e formati dati
#figure(
table(
      columns:(100pt,auto,auto),
      align: (x, y) => (center, center, center).at(x),
      fill:(_,row) => if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Tecnologia*],[*Descrizione*],[*Versione*],
      [#glossary[Python]], [Linguaggio di programmazione ad alto livello noto per la sua semplicità, ampiamente utilizzato nell'analisi dei dati, l'intelligenza artificiale, il calcolo scientifico e altro ancora.], [da definire], 
      [Sql], [Linguaggio standard per la gestione e la manipolazione dei database], [da definire], 
      [Yaml], [Formato di serializzazione dei dati leggibile dall'uomo comunemente utilizzato per la configurazione dei servizi e lo scambio di dati tra programmi.], [da definire], 
      [JSON], [Formato leggero per lo scambio di dati, facile da leggere e scrivere per gli esseri umani e facile da analizzare e generare per le macchine.], [da definire]), 
caption: [Tabella tecnologie per la la Codifica: Linguaggi e formati dati.])
=== Framework e librerie
#figure(
table(
      columns:(100pt,auto,auto),
      align: (x, y) => (center, center, center).at(x),
      fill:(_,row) => if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Tecnologia*],[*Descrizione*],[*Versione*],
      [Pydantic], [Libreria Python per la serializzazione degli oggetti e per la validazione dei dati, inoltre si caratterizza dalla capacità di forzare i tipi garantendo che i dati siano coerenti durante l'elaborazione.], [da definire], 
      [Confluent Kafka], [Libreria Python che fornisce gli strumenti necessari per produrre e consumare messaggi da Apache #glossary("Kafka"). ], [da definire]), 
caption: [Tabella tecnologie per la la Codifica: Framework e librerie])
=== Database e servizi
#figure(
table(
      columns:(100pt,auto,auto),
      align: (x, y) => (center, center, center).at(x),
      fill:(_,row) => if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Tecnologia*],[*Descrizione*],[*Versione*],
      [#glossary[Clickhouse]], [Sistema di gestione dei database colonnari, progettato per l'analisi dei dati ad alte prestazioni. È ottimizzato per eseguire query analitiche su grandi volumi di dati in modo efficiente.], [da definire], 
      [Apache #glossary[Kafka]], [Piattaforma di streaming di dati distribuita e scalabile, progettata per la gestione di flussi di dati in tempo reale. È ampiamente utilizzato per l'elaborazione di eventi, la messaggistica asincrona e la creazione di pipeline dati real time.], [da definire], 
      [#glossary[Grafana]], [Piattaforma open source per il monitoraggio e l'analisi dei dati. Fornisce strumenti per la visualizzazione di metriche e log, la creazione di dashboard interattive e la generazione di avvisi in tempo reale.], [da definire],  
      [Grafana ClickHouse Data Source], [Plugin per Grafana che consente di interrogare e visualizzare i dati di ClickHouse in Grafana], [da definire], 
      [Docker], [Piattaforma open-source che permette di creare, distribuire e gestire applicazioni in contenitori software.], [da definire]), 
caption: [Tabella tecnologie per la la Codifica: Database e servizi.])


== Per l'analisi del codice
#figure(
table(
      columns:(100pt,auto,auto),
      align: (x, y) => (center, center, center).at(x),
      fill:(_,row) => if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Tecnologia*],[*Descrizione*],[*Versione*],
      [PEP8], [Stile di codifica per il codice Python che definisce le linee guida per la formattazione del codice, rendendolo più leggibile e uniforme.], [da definire]), 
caption: [Tabella tecnologie per l'analisi del codice.])


#pagebreak()
= Architettura
== Architettura implementativa generale 
Questa sezione si propone di esplorare in modo esaustivo le strutture, i componenti e le interazioni che costituiscono il fondamento tecnologico del sistema. Questa analisi dettagliata mira a garantire una comprensione completa delle scelte architetturali adottate, fornendo così una base solida per lo sviluppo e l'implementazione.

== `TODO after meeting with Prof. Cardin`
== Architettura simulatori
== `TODO after meeting with Prof. Cardin`
/*già sai*/
== Architettura di deployment 
/*ste robe sono buttate giù veramente come capita vanno cambiate*/
Nella fase di sviluppo e implementazione di qualsiasi sistema complesso, l'architettura di deployment riveste un ruolo fondamentale nel garantire che le risorse tecnologiche siano distribuite in modo efficiente e affidabile nell'ambiente operativo. Questa sezione del documento si concentra sull'analisi e sulla progettazione della distribuzione delle risorse nel contesto del progetto "InnovaCity".

== `TODO after meeting with Prof. Cardin`
#pagebreak()
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