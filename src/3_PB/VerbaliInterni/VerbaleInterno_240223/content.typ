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
Per questo sprint il team ha deciso di concentrare gli sforzi sull'attività di progettazione, si è dunque deciso di impiegare molte ore del ruolo di Progettista. Risulta infatti necessario avanzare con la progettazione dell'architettura in modo tale da poter successivamente dedicare un maggior numero di risorse all'attività di codifica.
Il team, per limitare il rischio di context switch, ha deciso di mantenere inalterato il ruolo dei Progettisti dello sprint precedente.

== Aggiornamento NdP
Il documento _Norme di Progetto_ dovrà essere aggiornato con l'aggiunta di una sezione relativa alle _Specifiche Tecniche_ similmente a quanto fatto per gli altri documenti. Quest'attività sarà compito dell'Amministratore Nancy Kalaj.

== Sviluppo ST
Si stabilisce di concentrare la maggior parte delle risorse nella stesura del documento _Specifiche Tecniche_, seguendo i consigli e le indicazioni suggerite dal Prof. Cardin durante il colloquio organizzato in data 22/02/2024.

== Altre discussioni
=== Programmazione e gestione delle ore
Il team, preso atto delle ore e del budget rimanenti, ha stabilito che nell'ultimo sprint sono state impiegate poche risorse rispetto a quelle che si sarebbero potute impiegare e che sarebbero servite. Dunque, è stata portata l'attenzione sulla gestione delle ore rimanenti per ciascun componente; in particolare, è stato sottolineato il problema rilevato portandolo all'attenzione del Responsabile attuale, il quale dovrà effettuare una pianificazione realistica che rispetti il budget a disposizione per gli sprint futuri. Si è anche preso nota del fatto che la possibilità di non effettuare la terza revisione CA, contrariamente a quanto pianificato inizialmente, deve essere argomento di discussione all'interno del gruppo. Si tratta chiaramente di una decisione da intraprendere il più presto possibile, vista la sua importanza; verrà quindi effettuata nel prossimo meeting interno, in cui dovranno essere presenti tutti i membri del team. L'urgenza è data dal fatto che la scelta influenzerà profondamente la gestione del budget e quindi la pianificazione futura.

=== Codifica
Si è poi valutata la possibilità di riprendere l'attività di codifica. Si è stabilito come necessario attendere che l'architettura venga definita all'interno delle ST, quantomeno una sua forma iniziale.  Di conseguenza verosimilmente il gruppo programma di iniziare l'attività di codifica del prodotto nello sprint 11.