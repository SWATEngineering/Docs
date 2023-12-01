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


Si è deciso che la durata dello sprint attuale rimarrà invariata, come pianificato in precedenza, mantenendo la cadenza bisettimanale con termine fissato il giorno 7/12/2023.
Tuttavia, a partire dal prossimo sprint, effettueremo una transizione a sprint settimanali. Tale decisione è motivata dalla volontà di ottimizzare la sincronizzazione con il cambio dei ruoli, e di favorire un aumento degli incontri con la Proponente. Inoltre questa modifica è stata raccomandata dalla Proponente stessa, riflettendo la volontà di adottare un approccio più flessibile e adattabile. L'unico svantaggio di avere sprint settimanali riguarda la pianificazione a lungo termine poiché la loro frequenza potrebbe complicare la formulazione di piani dettagliati. 


== Assegnazione ruoli 

Su proposta dei componenti è stata assegnata questa  distribuzione dei ruoli:
- Responsabile: Riccardo Costantin;
- Amministratore: Nancy Kalaj;
- Analista: Riccardo Toniolo;
- Analista: Matteo Rango;
- Analista: Giacomo D'ovidio;
- Verificatore: Simone Caregnato ;

Il ruolo di programmatore non è stato assegnato, poiché la struttura finale del PoC si è conclusa. Il ruolo di progettista non è stato assegnato in quanto si ritiene che sia prematuro rispetto all'attuale stato di avanzamento del progetto. 


== Date Planning

Si sono definite le ipotetiche date del PB e della CA:

  - *RTB*: fissata per il 15-03-2024;
  -*CA*: fissata per il 01-04-2023.

== Context Switch

Per _Context Switch_ ci si riferisce al cambiamento settimanale dei ruoli all'interno del team. Questo passaggio da un ruolo ad un altro comporta la necessità di adattarsi rapidamente alle nuove responsabilità e di comprendere appieno ciò che è stato svolto dal membro del team precedentemente.
Di conseguenza, è stata presa la decisione di includere il _Context Switch_ nell'analisi dei rischi del piano di progetto. Inoltre, si rende necessario rivedere la pianificazione nel piano di progetto per adeguarla agli sprint settimanali.

Le soluzioni proposte, per ovviare al problema,sono le seguenti:

      - La persona che ha precedentemente occupato quel ruolo specifico, offre supporto al membro del team che ha assunto ora quella posizione, facilitandone la transizione e assistendo il responsabile o l'amministratore nella creazione delle attività per il prossimo sprint;
      - Il primo giorno si dedica unicamente allo studio di quanto fatto precedentemente per riuscire a sincronizzarsi con il contesto del ruolo.


== Pausa degli Sprint 

In vista della sessione invernale, il team ha deciso di ridurre l'attività lavorativa per un periodo di due settimane, precisamente dal 19 gennaio al 2 febbraio. La motivazione principale dietro questa decisione è la consapevolezza che durante questo periodo gli impegni di studio potrebbero rendere difficile mantenere un ritmo a pieno regime.
Pertanto, pur non essendo una vera e propria pausa,  il gruppo ridurrà temporaneamente l'intensità del lavoro sul progetto.

== Sprint Review o Retrospective

Si è discusso se si devono intendere gli incontri settimanali con la Proponente come Sprint Review o Retrospective, o se si tengano come normali incontri e si trasferisca il tutto alla riunione interna successiva. Abbiamo stabilito che gli incontri esterni debbano essere interpretati come Sprint Review, poiché si focalizzano sull'esame del lavoro completato durante lo sprint e sulla raccolta dei vari feedback. Per quanto riguarda gli incontri interni abbiamo deciso che  debbano essere intesi come Sprint Retrospective in quanto dedicati alla riflessione interna del team, esaminando criticamente il processo di sviluppo, identificando punti di forza e criticità.

== Diagrammi di Gantt

Si è discusso sulla necessità di creare diagrammi di Gantt per l'intero periodo, suddividendo il progetto in tre macro milestone, che verranno scomposte in milestone più piccole definite per funzioni relative ai ruoli da usare. Questo compito verrà preso in carico dal responsabile, dall'amministratore e dal verificatore.
Come strumento per la creazione dei diagrammi si è deciso di usare onlinegantt.


