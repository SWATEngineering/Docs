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

Nell'incontro è stata discussa la proposta di modificare la durata degli sprint, attualmente fissata a due settimane. È stato deciso che la durata dello sprint corrente rimarrà invariata e, come precedentemente pianificato, terminerà il giorno 7/12/2023.
Tuttavia, a partire dal prossimo sprint, effettueremo una transizione a sprint settimanali. Tale decisione è motivata dalla volontà di ottimizzare la sincronizzazione con il cambio dei ruoli, e di favorire un aumento degli incontri con la Proponente. Inoltre, questa modifica è stata raccomandata dalla Proponente stessa, riflettendo la volontà di adottare un approccio più flessibile e adattabile. L'unico svantaggio, che è stato evidenziato per gli sprint settimanali, riguarda la pianificazione a lungo termine, poiché la loro frequenza potrebbe complicare la formulazione di piani dettagliati. 
In aggiunta, si rende necessario rivedere la pianificazione nel _Piano di progetto_ per adeguarla agli sprint settimanali.


== Assegnazione ruoli 

Su proposta dei componenti è stata assegnata questa  distribuzione dei ruoli:
- Responsabile: Riccardo Costantin;
- Amministratore: Nancy Kalaj;
- Analista: Riccardo Toniolo;
- Analista: Matteo Rango;
- Analista: Giacomo D'Ovidio;
- Verificatore: Simone Caregnato.

Il ruolo di Programmatore non è stato assegnato, poiché la struttura finale del PoC è stata conclusa. Il ruolo di Progettista, invece, non è stato assegnato, in quanto si ritiene che sia prematuro rispetto all'attuale stato di avanzamento del progetto. 


== Date Planning

Si sono definite le ipotetiche date del PB e della CA:

  - *RTB*: fissata per il 15-03-2024;
  - *CA*: fissata per il 01-04-2023.

== Context Switch

Con Context Switch ci si riferisce al cambiamento settimanale dei ruoli all'interno del team. Questo passaggio, da un ruolo ad un altro, comporta la necessità di adattarsi rapidamente alle nuove responsabilità e di comprendere appieno ciò che è stato svolto dal membro del team precedentemente.
Per questa motivazione, verrà incluso il Context Switch all'interno dell'analisi dei rischi del _Piano di progetto_. 

Le soluzioni proposte, per ovviare al problema, sono le seguenti:

      - La persona che ha precedentemente occupato quel ruolo specifico, offre supporto al membro del team che ha assunto ora quella posizione, facilitandone la transizione e assistendo il Responsabile o l'Amministratore nella creazione delle issue per il prossimo sprint;

      - Il primo giorno si dedica unicamente allo studio di quanto fatto precedentemente per riuscire a sincronizzarsi con il contesto del ruolo.


== Pausa degli Sprint 

In vista della sessione di esami invernale, il team ha deciso di ridurre il carico di lavoro per un periodo della durata di 2 settimane, precisamente dal 19 gennaio al 2 febbraio. La motivazione principale dietro questa decisione è la consapevolezza che durante questo periodo gli impegni di studio potrebbero rendere difficile mantenere un ritmo a pieno regime.
Pertanto, pur non essendo una vera e propria pausa, il gruppo ridurrà temporaneamente l'intensità del lavoro sul progetto.

== Sprint Review o Retrospective

Durante la discussione è stato affrontato il quesito se gli incontri settimanali con la Proponente debbano essere considerati come Sprint Review, come Sprint Retrospective o normali incontri, trasferendo le due attività citate alla riunione interna successiva. La decisione presa stabilisce che gli incontri esterni con la Proponente debbano essere interpretati come Sprint Review, poiché si focalizzano sull'esame del lavoro completato durante lo sprint e sulla raccolta dei vari feedback. Gli Sprint Retrospective saranno invece inclusi negli incontri interni, in quanto dedicati alla riflessione interna del team, con la possibilità di esaminare criticamente il processo di sviluppo, identificando punti di forza e criticità.

== Diagrammi di Gantt

Si è discusso della necessità di creare diagrammi di Gantt per l'intero periodo, suddividendo il progetto in tre macro milestone, che verranno scomposte in milestone più piccole definite per funzioni relative ai ruoli da usare. Questo compito verrà preso in carico dal Responsabile, dall'Amministratore e dal Verificatore.
Come strumento per la creazione dei diagrammi si è deciso di usare onlinegantt.


