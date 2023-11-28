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

/*************************************/
/*    INSERIRE SOTTO IL CONTENUTO    */ 
/*************************************/


== Assegnazione dei ruoli
Su proposta dei componenti è stata assegnata questa  distribuzione dei ruoli:
- Responsabile: Giacomo D'Ovidio;
- Amministratore: Riccardo Costantin;
- Analista: Riccardo Toniolo;
- Verificatore: Nancy Kalaj;
- Programmatore: Matteo Rango;
- Programmatore: Simone Caregnato;
Il ruolo di Progettista non è stato assegnato, in quanto per il momento ha operatività limitata.
La presenza di due programmatori è dovuta al fatto che il Team in accordo con la proponente vuole sviluppare una prima versione del PoC entro la fine dello sprint corrente. 

== Cambio di ruoli settimanale
Per favorire una rotazione più rapida e un carico di lavoro più omegeneo il team ha deciso di introdurre la possibilità di poter cambiare i ruoli una volta raggiunta la metà temporale di ogni sprint. Nell'ottica dello sprint iniziato in data odierna, il cambio dei ruoli avverrà ipoteticamente venerdi 1 Dicembre.
Si precisa che il cambio dei ruoli è opzionale e non necessariamente riguarda la totalità dei ruoli e dei membri.

== Sprint Backlog
Nel corso della riunione odierna il team ha proceduto alla creazione dello _Sprint Backlog_.
Inizialmente si sono rilevate le nuove issue a seguito dell'incontro con la proponente avvenuto la mattinata stessa e sono state inserite nel _Product Backlog_.
Successivamente le issue sono state selezionate e inserite nello _Sprint Backlog_ e ad ognuna è stata assegnata _dimensione_ e _priorità_. 
Sulla base della somma delle dimensione delle _issues_ selezionate il nuovo sprint risulta decisamente più corposo di quello precedente. 
Questo è in linea con l'intenzione di effettuare la revisione _RTB_ in data 18 dicembre,  L'idea è di dedicare ora maggiore impegno per raggiungere gli obiettivi prefissati ,anche a costo di rallentare il ritmo nel prossimo sprint.
Il Processo di selezione delle _issues_ si è basato sull'obiettivo dello sprint rilevato con la Proponente, ovvero il completamente del PoC: ciò nonostante non si può dire che lo sprint sia univocamente focalizzato su di esso. 


