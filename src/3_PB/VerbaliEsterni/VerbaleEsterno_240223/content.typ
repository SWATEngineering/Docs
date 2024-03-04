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
Durante l'incontro il gruppo ha chiarito con la Proponente alcuni dubbi che vengono esposti in seguito e ha condiviso con essa lo stato di avanzamento del progetto.

== Chiarimento SAD
La Proponente, in seguito alla relativa domanda posta dal gruppo, ha chiarito che la richiesta del documento SAD (Software Architecture Document), riportata all'interno del capitolato, viene soddisfatta dal documento _Specifiche Tecniche_, di cui si sta effettuando la stesura in questo momento.

== Progettazione
Durante l'incontro il gruppo ha condiviso con la Proponente i suggerimenti e le direttive fornite dal Professor Cardin durante il ricevimento del 22-02-2024. La Proponente ha espresso approvazione nei confronti di tali indicazioni e ha fornito ulteriori spunti di approfondimento che potrebbero risultare utili per la progettazione. In particolare, è stato confermato da parte della Proponente che la "Kappa architecture" è un tipo di architettura che si adatta bene al prodotto in via di sviluppo e che quindi andrà approfondita dai Progettisti in carica per questo Sprint. Viene inoltre confermata l'adeguatezza dei diagrammi "Data-flow diagram" e i "Deployment diagram", il cui utilizzo è stato suggerito dal Prof. Cardin nel colloquio sopracitato; inoltre viene suggerito di approfondire i "Component Diagram". I tipi di diagrammi elencati possono essere una modalità di rappresentazione che si presta bene all'attività di progettazione in atto.

== Possibili aggiunte al prodotto
La Proponente ha suggerito di valutare la possibilità di aggiungere al prodotto funzionalità come data processing ed input filtering. Il team valuterà la fattibilità di queste aggiunte e ne discuterà con la Proponente in futuro.