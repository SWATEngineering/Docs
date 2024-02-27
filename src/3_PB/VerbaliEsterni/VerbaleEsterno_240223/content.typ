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
Durante l'incontro il gruppo ha chiarito con La Proponente alcuni dubbi che vengono esposti in seguito e ha condiviso con essa lo stato di avanzamento del progetto.

== Chiarimento SAD
La Proponente, dopo relativa domanda da parte del gruppo, ha chiarito che il documento SAD (Software Architecture Document) richiesto all'interno del capitolato coincide con il documento che il team chiama _Specifiche Tecniche_ e che sta sviluppando in questo momento.

== Progettazione
Durante l'incontro il gruppo ha condiviso con La Proponente i suggerimenti e gli indirizzamenti indicati dal Professor Cardin durante il ricevimento del 22-02-2024. La Proponente ha confermato le indicazioni. Inoltre, ha fornito ulteriori spunti di approfondimento che potrebbero risultare utili per la progettazione. In particolare viene confermato da parte della proponente che la "Lambda architecture" è un tipo di architettura che può adattarsi al nostro prodotto e che quindi andrà approfondita dai Progettisti in carica per questo sprint. Vengono inoltre confermati i diagrammi "Data-flow diagram" e i "Deployment diagram", come già suggerito dal Prof. Cardin nel colloquio sopracitato; inoltre viene suggerito di approfondire i "Component Diagram". I tipi di diagrammi elencati potrebbero essere una modalità di rappresentazione che si presta bene al nostro caso.

== Possibili aggiunte al prodotto
La Proponente ha suggerito di valutare la possibilità di aggiungere al prodotto funzionalità come data processing ed input filtering. Il team valuterà la fattibilità di queste aggiunte e ne discuterà con il proponente in futuro.