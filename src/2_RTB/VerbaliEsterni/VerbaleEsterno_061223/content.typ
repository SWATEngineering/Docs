#import "meta.typ": inizio_incontro, fine_incontro, luogo_incontro, company
#import "functions.typ": glossary, team
#let participants = csv("participants.csv")
#let participants_company = csv("participants_company.csv")

= Partecipanti
/ Inizio incontro: #inizio_incontro
/ Fine incontro: #fine_incontro
/ Luogo incontro: #luogo_incontro

== Partecipanti di #team
#table(
  columns: (3fr, 1fr),
  [*Nome*], [*Durata presenza*],
  ..participants.flatten()
)
== Partecipanti di #emph[#company]
#for member in participants_company.flatten() [
  - #member
]

= Sintesi Elaborazione Incontro

/*************************************/
/*    INSERIRE SOTTO IL CONTENUTO    */ 
/*************************************/

== Esposizione dei progressi raggiunti 

Nell'incontro con la Proponente, il team ha illustrato in dettaglio l'evoluzione del Proof of Concept, evidenziandone gli importanti progressi compiuti nel corso dello sprint. La Proponente ha manifestato un apprezzamento estremamente positivo per i risultati raggiunti finora, confermando la validità della direzione intrapresa per il successo del progetto.

In seguito, la riunione ha proseguito con una dettagliata discussione riguardo la parte inerente la documentazione, ponendo particolare enfasi sull'Analisi dei Requisiti.

== Avanzamento del codice        
 
Gli obiettivi prefissati erano lo sviluppo di una dashboard in grafana che mostrasse 

