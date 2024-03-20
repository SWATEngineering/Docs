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

L'incontro ha preso avvio con una breve analisi del lavoro svolto dal precedente SAL, concentrato sull'implementazione dei test di unità all'interno del simulatore. Gli 11 sensori sviluppati nello sprint antecedente sono stati isolati e testati in modo indipendente per verificare che producessero l'output desiderato in risposta a specifiche condizioni di input. Infine, sono stati aggiunti i test di integrazione per verificare che effettivamente i dati generati dai sensori venissero archiviati con successo su Clickhouse. Entrambi i test sono stati effettuati con librerie apposite di Python e raggiunta una test coverage superiore all'80%.


== Sito vetrina 

Sono state presentate le nuove modifiche estetiche e strutturali al sito vetrina #link("https://swatengineering.github.io/"), ad esempio il nuovo formato di ordinamento dei file e la grafica delle icone. Queste modifiche hanno suscitato particolare interesse da parte della Proponente.

== Impegni presi

Considerando l'avvio del secondo lotto per il progetto didattico, la Proponente ha sollevato la necessità di rispettare gli impegni presi per garantire il completamento tempestivo. Ciò consentirebbe all'azienda di gestire efficacemente la candidatura dei due nuovi gruppi. Inoltre, è stata avanzata la proposta di effettuare un resoconto per individuare possibili miglioramenti al fine di garantire un'esperienza ottimale per i nuovi gruppi. Ad esempio, si è suggerito di interrompere l'utilizzo dell'applicazione Element a favore di Discord, considerata più diffusa e funzionale.


== Pianificazione prossimo SAL 

È stato concordato di programmare il prossimo SAL per martedì 02/04/2024, con l'orario ancora da definire, direttamente presso la sede della Proponente. L'incontro vedrà la partecipazione di Andrea Dorigo e il team punterà a ottenere l'approvazione formale per l'MVP, rendendolo possibilmente il nostro ultimo incontro.





