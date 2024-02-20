#import "functions.typ": glossary, team
#import "../AnalisiDeiRequisiti/content.typ": requisiti_funzionali_con_codice

/*************************************/
/*    INSERIRE SOTTO IL CONTENUTO    */ 
/*************************************/



= Introduzione

== Scopo del documento
Il presente documento ha lo scopo di fornire una descrizione dettagliata della fase di progettazione del progetto "InnovaCity". 
Vengono descritte #glossary("architettura logica") e #glossary("architettura di deployment").
Inoltre vengono riportati i #glossary("design pattern") e gli idiomi utilizzati nella fase di codifica. 
Il documento in oggetto vuole dapprima motivare determinate scelte di sviluppo, essere una guida per l'attività di codifica, inoltre vuole garantire la copertura totale dei requisiti. 
Alla luce del modello di sviluppo agile individuato dal team, il documento sarà redatto con un approccio iterativo.  
/*qui si puo rivedere*/


== Scopo del prodotto
Lo scopo del prodotto è la realizzazione di un sistema di persistenza dati e successiva visualizzazione di questi, provenienti da sensori dislocati geograficamente. Tale piattaforma consentirà all'#glossary("amministratore pubblico") di acquisire una panoramica completa delle condizioni della città, facilitando così la presa di decisioni informate e tempestive riguardo alla gestione delle risorse e all'implementazione di servizi.

== Glossario
Al ﬁne di evitare possibili ambiguità relative al linguaggio utilizzato nei
documenti, viene fornito il _Glossario v1.0_, nel quale sono presenti tutte le
definizioni di termini aventi uno specifico significato che vuole essere
disambiguato. Tali termini, sono scritti in corsivo e marcati con una G a pedice.

== Riferimenti

=== Riferimenti normativi 

=== Riferimenti informativi

=== riferimenti tecnici

= Tecnologie
/*ci si basa sul pdf di matteo + aggiungere docker*/
/*io non metterei le tabelle*/
== Per la Codifica
/*python*/
/*pydantic*/
/*pep8*/
/*git hub*/
/*Docker*/
/*e gli altri*/
== Per l'analisi del codice
/*pep8*/

= Architettura
/*Dobbiamo capire come dividerla*/

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

/* CONTEGGIO REQUISITI FUNZIONALI OBBLIGATORI */
/*#requisiti.filter(el => el.at(0).contains("ROF")).map(el => 1).sum()*/

/* CONTEGGIO REQUISITI FUNZIONALI */
/*#requisiti.map(el => 1).sum()*/

/* CONTEGGIO REQUISITI FUNZIONALI SODDISFATTI */
/*#satisfied.map(el => 1).sum()*/
