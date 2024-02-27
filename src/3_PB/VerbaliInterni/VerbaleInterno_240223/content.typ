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
Si decide di mantenere molti Progettisti in quanto svolgono il fulcro del lavoro di questo periodo, il ruolo va quindi utilizzato in queste fasi iniziali del PB e verrà gradualmente ridotto in seguito.

== Stesura dei verbali odierni
La stesura dei due verbali esterno ed interno sarà a carico di Simone Caregnato in qualità di responsabile.

== Consuntivo e aggiornamento dei documenti
Il responsabile, come stabilito nelle NdP si occuperà di redigere il consuntivo per lo sprint 9 e di aggiornare i preventivi successivi e la pianificazione nel PdP; una volta terminato si occuperà di aggiornare le metriche del PdQ.

== Aggiornamento NdP
Il documento _Norme di Progetto_ dovrà essere aggiornato con l'aggiunta di una sezione relativa alle _Specifiche Tecniche_ similmente a quanto fatto per gli altri documenti. Quest'attività sarà compito dell'Amministratore Nancy Kalaj.

== Sviluppo ST
Si stabilisce di concentrare la maggior parte del lavoro sullo sviluppo del documento _Specifiche Tecniche_, seguendo i consigli e le indicazioni suggerite dal Prof. Cardin durante il colloquio organizzato in data 22/02/2024.

== Altre discussioni
Si è discusso poi sulla possibilità di iniziare con l'implementazione di nuovi sensori nel prodotto. Si è stabilito che è ancora troppo presto ed è necessario attendere che l'architettura venga prima definita all'interno delle ST, quantomeno nei suoi tratti principali. Di conseguenza verosimilmente il gruppo programma di iniziare la fase di sviluppo del MVP nello sprint 11.