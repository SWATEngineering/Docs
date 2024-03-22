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

Durante l'incontro il team ha condiviso con la Proponente lo stato di avanzamento del progetto e pianificato l'ultimo probabile incontro in vista della presentazione PB.

== Stato avanzamento prodotto  

L'incontro è iniziato con una breve analisi del lavoro svolto dal team dal precedente SAL, concentrato sull'implementazione dei test di unità dei simulatori e di integrazione dell'intero sistema nelle sue componenti. Gli 11 simulatori sviluppati nello sprint antecedente sono stati isolati e testati in modo indipendente per verificare che producessero l'output desiderato in risposta a input specifici. Infine, sono stati aggiunti anche i test di integrazione per verificare che effettivamente i dati generati dai simulatori attraversino tutta la data pipeline e vengano archiviati con successo all'interno di Clickhouse. Entrambe le tipologie di test sono state effettuate con librerie apposite di Python ed è stata raggiunta una statement coverage e una branch coverage superiore all'80% per tutta l'infrastruttura.


== Sito vetrina 

Sono state presentate le nuove modifiche estetiche e strutturali apportate al sito vetrina #link("https://swatengineering.github.io/"), come il nuovo metodo di ordinamento dei file e la grafica delle icone. La Proponente ne ha apprezzato forma e contenuti, specie vedendolo per la prima volta dall'inizio del progetto.

== Impegni presi

Considerando l'avvio del secondo lotto per il progetto didattico, la Proponente ha sottolineato la necessità di rispettare le scadenze fissate precedentemente dal team per portare a termine il progetto nelle tempistiche previste. Ciò consentirebbe all'azienda di gestire efficacemente la candidatura dei nuovi gruppi, ormai molto vicina. Inoltre, è stato chiesto al team di preparare una breve valutazione del ruolo svolto dalla Proponente lungo il percorso che ha portato al completamento del progetto per individuare possibili miglioramenti e garantire un'esperienza ottimale ai nuovi gruppi. Ad esempio, la Proponente ha già deciso di interrompere l'utilizzo dell'applicazione Element a favore di Discord, considerato più diffuso e funzionale.


== Pianificazione prossimo SAL 

È stato concordato di programmare il prossimo SAL per martedì 02/04/2024, con l'orario ancora da definire, direttamente presso la sede della Proponente. L'incontro vedrà la partecipazione di Andrea Dorigo e il team punterà a ottenere l'approvazione formale per l'MVP, il che lo renderebbe l'ultimo incontro esterno.





