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

== Sprint di una settimana 


== Cambiamento ruoli 

== Date Planning 

== Switch Context

== Pausa Sprint 

In vista della sessione invernale, il team ha deciso di ridurre l'attività lavorativa per un periodo di due settimane, precisamente dal 19 gennaio al 2 febbraio. La motivazione principale dietro questa decisione è la consapevolezza che durante questo periodo gli impegni di studio potrebbero rendere difficile mantenere un ritmo a pieno regime.
Pertanto, pur non essendo una vera e propria pausa,  il gruppo ridurrà temporaneamente l'intensità del lavoro sul progetto.