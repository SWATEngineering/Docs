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

== Controllo Ortografico
Durante l'incontro, uno dei punti centrali è stato l'introduzione di un sistema automatizzato per il controllo ortografico all'interno della repository. Seguirà una fase di studio da parte del team per capire quale strumento può essere il più adaatto.

== Gestione delle issue
Una proposta significativa è emersa per gestire le attività in modo più efficiente: creare issue man mano che emergono le necessità, facendo anche tutto il lavoro di assegnazione della priorità, della grandezza e del nuovo tag "ruolo", sia durante le riunioni, sia durante stand-up. La decisione è stata accolta positivamente dai partecipanti, che hanno visto in questa pratica un modo per ottimizzare il tempo durante le riunioni.

== Tecnologie
La tecnologia "Pydantic" per il linguaggio Python è stata riconosciuta come parte integrante per l'MVP, in modo da semplificare la verifica e la validazione del software.

== Gestione del tempo
Altra decisione è stata quella di adottare una assegnazione delle ore in multipli di trenta minuti (0.5 h), all'interno del foglio condiviso di time tracking, con l'obiettivo di evitare complicazioni non necessarie e garantire una gestione più precisa del tempo.
A questo si collega uno sviluppo di una automazione in grado di aggiornare il Piano di Progetto secondo quanto svolto dal team durante gli sprint. Oltre che a far risparmiare tempo ai responabili e agli amministratori, questo porterà un grande vantaggio in termini di sicurezza che i calcoli del consuntivo siano corretti.

== Terminologia
Una discussione approfondita ha riguardato la terminologia utilizzata nei documenti, con un consenso raggiunto sul termine "Verificatore" anziché "Revisore".

== Durata degli Sprint
Infine, sono state decise modifiche significative riguardanti la durata dello sprint, riducendola da due a una settimana, per adattarsi meglio alla flessibilià richiesta in questo periodo e al ritmo del team.

== Assegnazione dei ruoli
Su proposta dei componenti e a seguito di quanto indicato precedentemente, è stata assegnata la seguente distribuzione dei ruoli:
- Simone Caregnato: Amministratore, Analista;
- Riccardo Costantin: Programmatore, Verificatore;
- Giacomo D'Ovidio: Amministratore, Verificatore;
- Nancy Kalaj: Amministratore;
- Matteo Rango: Responsabile, Amministratore;
- Riccardo Toniolo: Verificatore, Amministratore; 