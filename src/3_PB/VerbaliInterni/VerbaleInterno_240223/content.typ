#import "meta.typ": inizio_incontro, fine_incontro, luogo_incontro
#import "functions.typ": glossary, team
#let participants = csv("participants.csv")

= Partecipanti
/ Inizio incontro: #inizio_incontro
/ Fine incontro: #fine_incontro
/ Luogo incontro: #luogo_incontro

#table(
  columns: (3fr, 1fr),
  [*Nome*], [*Durata presenza*],
  ..participants.flatten()
)
= Sintesi Elaborazione Incontro
Nell'incontro si è discussa l'organizzazione del lavoro futuro stabilendo quanto riportato di seguito.

== Nuovi ruoli
Vengono stabiliti i seguenti i nuovi incarichi relativi allo sprint corrente:
- Caregnato Simone: Responsabile;
- Costantin Riccardo Alberto: Progettista;
- D'Ovidio Giacomo: Progettista e Verificatore;
- Kalaj Nancy: Verificatore e Amministratore;
- Rango Matteo: Progettista;
- Toniolo Riccardo: Progettista.
Per questo sprint il team ha deciso di concentrare gli sforzi nell'attività di progettazione, si è  dunque deciso di impiegare molte ore del ruolo di Progettista. Risulta infatti necessario avanzare con la progettazione del architettura in modo tale da poter successivamente convertire tali sforzi all'attività di codifica.
Il team per limitare il rischio di context switch ha deciso di mantenere inalterato il ruolo dei Progettisti dello Sprint precedente.

== Aggiornamento NdP
Il documento _Norme di Progetto_ dovrà essere aggiornato con l'aggiunta di una sezione relativa alle _Specifiche Tecniche_ similmente a quanto fatto per gli altri documenti. Quest'attività sarà compito dell'Amministratore Nancy Kalaj.

== Sviluppo ST
Si stabilisce di concentrare la maggior parte delle risorse nella stesura del documento _Specifiche Tecniche_, seguendo i consigli e le indicazioni suggerite dal Prof. Cardin durante il colloquio organizzato in data 22/02/2024.

== Altre discussioni
Si è poi valutata la possibilità di riprendere l'attività di codifica. Si è stabilito come necessario attendere che l'architettura venga definita all'interno delle ST, quantomeno una sua forma iniziale.  Di conseguenza verosimilmente il gruppo programma di iniziare l'attività di codifica del prodotto nello sprint 11.