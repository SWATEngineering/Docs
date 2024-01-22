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




== Assegnazione dei ruoli
Su proposta dei componenti è stata assegnata questa distribuzione dei ruoli:

- Responsabile: Giacomo D'Ovidio;
- Amministratore: Riccardo Costantin;
- Analista: Riccardo Toniolo;
- Verificatore: Nancy Kalaj;
- Programmatore: Matteo Rango;
- Programmatore: Simone Caregnato.

Il ruolo di Progettista non è stato assegnato, in quanto per il momento ha operatività limitata.
La presenza di due Programmatori è dovuta al fatto che il Team in accordo con la Proponente vuole sviluppare una prima versione del PoC entro la fine dello sprint corrente. 

== Cambio di ruoli settimanale
Per favorire una rotazione più rapida e un carico di lavoro più omogeneo il team ha deciso di introdurre la possibilità di cambiare i ruoli una volta raggiunta la metà temporale di ogni sprint. Nell'ottica dello sprint iniziato in data odierna, il cambio dei ruoli avverrà ipoteticamente venerdì 1 Dicembre.
Si precisa che il cambio dei ruoli è opzionale e non necessariamente riguarda la totalità dei ruoli e dei membri. 
I membri coinvolti nello scambio devono però aver almeno concluso le issue assegnate e già cominciate.  

== Sprint Planning
Al termine dell'incontro il team ha proceduto alla creazione dello Sprint Backlog.
Inizialmente si sono rilevate le nuove issue a seguito dell'incontro con la proponente avvenuto la mattinata stessa e sono state inserite nel Product Backlog.
Successivamente le issue sono state selezionate e inserite nello Sprint Backlog e ad ognuna è stata assegnata size e priority. 
Sulla base della somma delle size delle issues selezionate il nuovo sprint risulta decisamente più corposo di quello precedente. 
Questo è in linea con l'intenzione di preparare tutto l'occorrente per poter richiedere la prima revisione RTB non oltre il 18 dicembre.
Il Processo di selezione delle issues si è basato sull'obiettivo dello sprint rilevato con la Proponente, ovvero il completamento del PoC: ciò nonostante non si può dire che lo sprint sia univocamente focalizzato su di esso, in quanto il team si impegnerà anche a portare avanti la stesura della parte documentale relativa alla RTB.


