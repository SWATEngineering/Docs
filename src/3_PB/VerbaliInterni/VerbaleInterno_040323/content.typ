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
Nell'incontro si è discussa l'organizzazione del lavoro futuro con la discussione e risoluzione di alcune problematiche, discusse qui in seguito.

== Nuovi ruoli
Vengono stabiliti i seguenti i nuovi incarichi relativi allo sprint corrente:
- Caregnato Simone: Progettista, programmatore;
- Costantin Riccardo Alberto: Progettista, programmatore;
- D'Ovidio Giacomo: Verificatore, amministratore, analista;
- Kalaj Nancy: Progettista, programmatore;
- Rango Matteo: Programmatore, progettista;
- Toniolo Riccardo: Responsabile, programmatore.
Per questo sprint il team ha deciso di iniziare a sviluppare quanto progettato, continuando però a definire il resto dell'architettura del sistema. Proprio per questo in questo sprint si è deciso di far avanzare contemporaneamente l'attività di progettazione con quella di codifica allocando molte ore ad entrambe le attività.

== Discussione relativa alla revisione _Customer Acceptance_
Il team #team ha deciso di non effettuare la revisione _Customer Acceptance_ poiché vari componenti del team hanno espresso una forte volontà nel voler laurearsi per la sessione di luglio, e protrarre ulteriormente la durata del progetto ne sarebbe un ostacolo.

== Aggiornamento metriche PdQ
Si è deciso di aggiungere le seguenti metriche al documento _Piano Di Qualifica v2.0_:
- Dimensioni dello sprint (espresse in ore produttive): al fine di avere tracciamento quantitativo dell'ammontare di lavoro svolto per sprint;
- Tasso di completamento delle issue assegnate: per avere un punto di vista sulla produttività del gruppo e sulla capacità di perseguire l'efficacia di sprint in sprint;

In seguito si è discusso di approfondire ed informarsi, mediante l'uso di standard noti, riguardo ad ulteriori metriche da usare per perseguire qualità andando a creare un cruscotto più completo.

== Aggiornamento NdP
Essendo che all'interno del documento _Specifiche Tecniche v1.0_ viene utilizzato il #glossary("data flow diagram"), questo va normato nel documento _Norme di Progetto v2.0_.

== Altre discussioni
=== Ridisciplinamento del team
Il team ha preso nota del fatto che nell'ultimo periodo i vari componenti hanno fatto fatica a partecipare ai vari meeting interni, oltre che agli standup.
Si è quindi deciso di fissare a priori blocchi temporali (non spostabili) presi come impegni importanti, durante la settimana, al fine di perseguire maggior rigore nella partecipazione ai vari colloqui.

=== Aumento del carico di lavoro
Ora che la sessione d'esami è veramente finita per ogni componente del gruppo, il team #team ha deciso di aumentare il carico di lavoro stando circa sulle 11 ore di lavoro produttivo a settimana, per poter perseguire con successo la prossima revisione.