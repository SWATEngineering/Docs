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

== Presentazione prodotto
L'incontro si è aperto con la presentazione del prodotto da parte del team. Il prodotto, nella sua Release 2.0, è stato presentato esponendo le dashboard sviluppate, ovvero "Dati Ambientali", "Dati Urbanistici", "Dati Grezzi" e "Superamento Soglie"; la presentazione ha esposto le funzionalità di ciascuna dashboard e le modalità di utilizzo, concentrandosi in particolare sulle novità introdotte rispetto alle funzionalità presentate alla Proponente nell'incontro precedente. In particolare, il miglioramento dell'interfaccia delle dashboard, il completamento dei pannelli, l'introduzione del sistema di notifica tramite Discord e l'intera Dashboard "Superamento Soglie". I referenti della Proponente espresso grande apprezzamento per i miglioramenti apportati, in particolare l'impegno nella realizzazione della simulazione dei dati in modo realisto e variegato in base al tipo.


== Validazione MVP
La Proponente ha espresso piena soddisfazione per il lavoro svolto e attesta che il prodotto soddisfa la definizione di MVP (Regolamento progetto didattico https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/PD2.pdf consultazione 02/04/2024).

== Conclusione
L'incontro si è concluso con lo scambio di feedback tra il team e la Proponente. Quest'ultima ha espresso apprezzamento per il lavoro svolto dal team, sottolineando la qualità del prodotto e la professionalità dimostrata. Il team ha ringraziato la Proponente per la collaborazione, sottolineando l'importanza del confronto e del supporto ricevuto. In fine, dopo richiesta della Proponente, il gruppo ha condiviso suggerimenti per il miglioramento dei progetti futuri, indicando i punti di forza e gli aspetti migliorabili.