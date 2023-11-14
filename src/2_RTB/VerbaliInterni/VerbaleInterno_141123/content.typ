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

Nella riunione tenuta in data odierna sono stati trattati i seguenti punti, espressi nelle successive sezioni.

== Chiarire conflitto riguardante le versioni del software e della documentazione
È stato deciso di consultare i professori al fine di trovare una best practice per poter definire come la versione della documentazione e del prodotto software possano progredire in sincronia.

== Elementi da aggiungere al documento "Norme di progetto"
È stato fatto notare che i seguenti punti devono essere aggiunti al documento "Norme di progetto":
- Va aggiunta una procedura per definire come le issues possano essere aggiunte in maniera asincrona, al _backlog_, da qualsiasi componente, nell'eventualità in cui si verifichino problemi o necessità da affrontare;
- Va reso più dettagliato il ruolo del responsabile. È stata quindi proposta l'aggiunta della specifica riguardo le mansioni relative al suo compito:
  - Gestire la comunicazione con la Proponente (e.g. mail o l'uso della piattaforma Element);
  - Preparare l'ordine del giorno per la successiva riunione;
  - Redigere i verbali interni ed esterni;
  - Stendere e far progredire il documento "Piano di progetto";
  - Creare i diari di bordo;
- Va inserita la procedura per cambiare la _size_ della issue da parte dell' assegnatario, nel caso in cui esso pensi che sia sovrastimata (o sottostimata).

== Cambiamento dei ruoli straordinaro

È stato ritenuto necessario un cambiamento dei ruoli per via dei seguenti motivi:
- La proponente ha suggerito la stesura del _Proof of Concept_ in contemporanea alla definizione dell'analisi dei requisiti e non era stata prevista la figura del progettista nello sprint attuale;
- Si ritiene che un verificatore sia più che sufficiente per lo sprint attuale;
- La rotazione dei ruoli tuttavia, verrà attuata venerdì 17/11/2023, in quanto sono da portare a termine delle _issue_ con i ruoli precedentemente assegnati.

La nuova assegnazione dei ruoli è la seguente:
- *Simone Caregnato*: Amministratore;
- *Riccardo Albero Costantin*: Analista;
- *Giacomo D'Ovidio*: Analista;
- *Nancy Kalaj*: Responsabile;
- *Matteo Rango*: Verificatore;
- *Riccardo Toniolo*: Progettista.

D'ora in poi si cercherà di rispettare la pratica di non cambiare ruoli durante lo sprint, ad eccezione di adesso, in quanto è stato ritenuto necessario, date le esigenze imposte dal contesto.

== Creare sito web per la presentazione dei documenti

Per migliorare l'accessibilità ai documenti è stato deciso di creare un sito web ufficiale per la repository documentale.
Lo strumento che verrà utilizzato sarà _GitHub.io_: uno strumento offerto dalla piattaforma GitHub.

== Passaggio dall'uso di Notion alla Google Suite

Per via di notevoli limitazioni imposte da Notion nel suo uso per team composti da più di due persone, abbiamo deciso di rimpiazzarlo con la Google Suite, dove documenti come note e appunti verranno redatti in Google Documents e elementi di natura tabellare verranno conservati mediante l'uso di Google Fogli.