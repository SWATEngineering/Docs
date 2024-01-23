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
== Termini di glossario

L'incontro si è aperto con una breve discussione sul modo in cui i termini di glossario vengono riportati all'interno della documentazione; in particolare, il team aveva adottato l'abitudine di denotare la prima occorrenza di un termine di glossario con il corsivo e la #sub("G") a pedice, mentre le occorrenze successive venivano riportate semplicemente con il corsivo. Per rimuovere qualunque ambiguità, visto che il corsivo viene adottato anche per i nomi dei documenti (come riportato nelle _Norme di Progetto v1.0_), il team ha deciso di marcare tutte le occorrenze di tali termini seguendo la prassi del corsivo unito alla #sub("G") a pedice. Di conseguenza, vanno revisionati i documenti attualmente in fase di redazione per assicurarsi che tutti i termini di glossario siano riportati correttamente, oltre che effettivamente inseriti all'interno del _Glossario v1.0_.

== Ampliamento Analisi dei Rischi nel _Piano di Progetto_

Nel corso degli ultimi due sprint, coincidenti con il periodo di vacanze natalizie, il team ha riscontrato il verificarsi di un rischio di comunicazione non ancora descritto nella sezione *Analisi dei Rischi* del _Piano di Progetto_; in particolare, il rischio consiste nell'apportare modifiche critiche alla documentazione, senza previa comunicazione al resto del team. Modificare un qualsiasi documento in larga parte o aggiungendo modifiche non approvate dal team (o quantomeno dal quorum di 4/6 persone) è altamente rischioso in quanto esiste la possibilità che le modifiche, una volta valutate criticamente dal team, vengano disapprovate e che debbano essere revocate o eliminate del tutto. Riportare il documento alla versione immediatamente precedente alle modifiche non approvate e incaricare un componente del team di rettificarle, comportano, rispettivamente, uno spreco di risorse e uno sforzo significativo che potrebbero essere evitati con una comunicazione più efficace. Di conseguenza, il team ha deciso di impegnarsi a riportare il livello di comunicazione e cooperazione a quello solito, e anche di implementare due misure preventive per far sì che, anche in situazioni o periodi in cui questa comunicazione dovesse venir meno, il team sia comunque in grado di mantenersi quanto più allineato nel proprio modo di lavorare:

  - *Meeting di emergenza*: i componenti del team si riservano la possibilità di invocare un meeting di emergenza ( meeting non preventivato e solitamente con poco preavviso) per discutere di aspetti critici legati allo sviluppo di un documento o di una sezione di codice. Dato il poco preavviso, questi meeting avranno un quorum ridotto da 4 a 3 membri totali, in modo da consentire al gruppo ristretto di prendere decisioni rappresentative della volontà del team con immediatezza;

  - *Stand-up meeting da remoto*: il team è disposto ad effettuare stand-up meeting anche da remoto qualora i componenti non fossero in grado di incontrarsi fisicamente per periodi più o meno prolungati di tempo (questa pratica verrà implementata con ogni probabilità dopo la prima revisione RTB).

== Creazione delle issue

Il modo in cui il team ha gestito il processo di creazione e assegnazione delle issue finora è basato su un approccio a priori, per cui al termine di ogni incontro interno, che sancisce la fine di uno sprint, il team assiste gli Amministratori di turno in questo compito. In pratica, le issue create a priori a inizio sprint devono rappresentare tutte le attività a cui i componenti sono intenzionati a lavorare nel corso dello sprint; questo ha portato il team a creare issue progressivamente sempre più ampie, in modo da lasciare che sia il componente a cui una determinata issue è stata assegnata a valutare esattamente quali attività intraprendere e portare a termine prima della fine dello sprint. In altre parole,  poiché alcune attività emergono solo durante lo sprint, quando un membro del team si rende conto di dover affrontare qualcosa che potrebbe non essere emerso nelle discussioni precedenti, è necessario adottare un approccio leggermente diverso. Questo nuovo approccio mira a creare issue più specifiche e gestibili in modo che il team possa affrontare attività impreviste in corso d'opera, garantendo una maggiore flessibilità e reattività durante lo sviluppo.

Questo non solo migliorerebbe il processo di gestione della configurazione del progetto, ma aiuterebbe il team ad evitare situazioni sfortunate in cui due componenti si ritrovano a lavorare alla stessa attività perché questa non era stata ben specificata e vincolata ad una singola issue precedentemente. Nel momento in cui un componente dovesse creare una issue a posteriori e metterla nella corsia "Ready" della Kanban Board del sistema di ITS, non vi sarebbe più un pretesto perché un altro componente decida di lavorare alla stessa attività in modo inconsapevole.

== Avanzamento del _Piano di Qualifica_

L'incontro è terminato con una breve discussione in merito alla decisione di utilizzare il rapporto ore preventivate/ore totali a disposizione (570) per il calcolo della percentuale di lavoro preventivato necessaria per la metrica del PV (Planned Value) e, similmente, il rapporto ore effettive/ore totali per il calcolo dell'EV (Earned Value). Nonostante non si fosse certi, in partenza, che il rapporto ore potesse riflettere adeguatamente la percentuale di lavoro svolto, nell'osservare i grafici del _Piano di Qualifica_, il team ha riconosciuto come questi riescano a mettere in evidenza aspetti concreti dell'andamento attuale del progetto. Di conseguenza, il team si è convinto della scelta effettuata.

== Rotazione dei ruoli

- Matteo Rango: Amministratore, Verificatore;
- Simone Caregnato: Verificatore;
- Riccardo Toniolo: Programmatore, Verificatore;
- Riccardo Costantin: Verificatore;
- Nancy Kalaj: Responsabile;
- Giacomo D’Ovidio: Amministratore.