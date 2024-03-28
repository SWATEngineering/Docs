#import "../functions.typ": glossary, team

= Pianificazione

Stabilite come #glossary("milestone") principali le #glossary("baseline") corrispondenti alle revisioni del progetto, gli #glossary[sprint] consentono di mantenere un approccio agile e permettono di essere reattivi rispetto ai cambiamenti nelle esigenze o nei requisiti del progetto. Ciascuno #glossary[sprint] contribuirà in modo incrementale al raggiungimento delle #glossary[milestone] e al successo complessivo del progetto.
Sulla base delle scadenze riportate nella sezione *Scadenze* si pianificano: 

- 2 #glossary[sprint] di due settimane e 6 #glossary[sprint] da una settimana per arrivare alla revisione #glossary[RTB]\; 
- 6 #glossary[sprint] della durata di una settimana per arrivare alla revisione #glossary[PB]\; 
- 2 #glossary[sprint] della durata di una settimana per arrivare alla revisione #glossary[CA]\. 

Il documento _Piano di Progetto_ si evolve durante tutto il ciclo di vita del progetto. Inizialmente, il team aveva pianificato #glossary[sprint] della durata di due settimane. Tuttavia, durante lo svolgimento, è risultato preferibile passare a #glossary[sprint] della durata di una settimana. Di conseguenza, il documento del _Piano di progetto_, in particolare nelle sezioni *Pianificazione* e *Preventivo*, viene aggiornato rispetto a questa modifica. 
Nell’intervallo di tempo tra revisione #glossary[RTB] e revisione #glossary[PB], è stata pianificata una diminuzione del carico di lavoro nelle ultime due settimane del mese di Gennaio e le prime due del mese di Febbraio, per permettere ai membri del team di dedicarsi agli altri impegni richiesti dal percorso di studio e allo svolgimento della revisione #glossary[RTB], rispettivamente.

Per ciascuno #glossary[sprint] vengono stabilite le date di inizio e di fine, e il relativo insieme delle attività pianificate.

== Requirements and Technology Baseline #glossary[RTB]
#figure(
  image("../assets/DiagrammiGantt/RTB.png", width: 100%),
  caption: [
    Diagramma di Gantt per le attività da svolgere per la #glossary[RTB].
  ],
)

*Inizio*: 10/11/2023

*Fine*: 19/01/2024 

La definizione delle _Norme di Progetto_ è alla base di questa fase, per rendere chiare a tutti le modalità di lavoro. Parallelamente hanno inizio anche il _Piano di Progetto_, con particolare attenzione all'*Analisi dei rischi* e al *Modello di sviluppo*, l'_Analisi dei Requisiti_, il _Piano di Qualifica_ e il _Glossario_. I documenti in questa fase sono in continua crescita, data la loro natura incrementale.
Per favorire la consultazione online della #glossary[documentazione] stessa si prevede la creazione di un sito web "vetrina".
Si programma di sviluppare il Proof of Concept #glossary[PoC] del progetto secondo le indicazioni della Proponente, il cui feedback è fondamentale per verificare la coesione dello stack tecnologico, i suoi punti di forza e le sue carenze.
Durante questa fase il colloquio con la Proponente e i Committenti viene mantenuto costante; in questo modo, e grazie anche alle conoscenze acquisite dalla costruzione del #glossary[PoC], sarà possibile adattare e migliorare l'_Analisi dei Requisiti_.

#include "PianificazioneSprint/PrimoSprint.typ"
#include "PianificazioneSprint/SecondoSprint.typ"
#include "PianificazioneSprint/TerzoSprint.typ"
#include "PianificazioneSprint/QuartoSprint.typ"
#include "PianificazioneSprint/QuintoSprint.typ"
#include "PianificazioneSprint/SestoSprint.typ"
#include "PianificazioneSprint/SettimoSprint.typ"
#include "PianificazioneSprint/OttavoSprint.typ"

=== Pausa programmata di due settimane e revisione #glossary[RTB]

*Inizio*: Venerdì 19/01/2024

*Fine*: Giovedì 15/02/2024 

Il team ha programmato una pausa di due settimane per consentire ai membri di concentrarsi sugli esami e, successivamente, un periodo di due settimane volto alla preparazione in vista della revisione #glossary[RTB] e al suo svolgimento.

== Product Baseline #glossary[PB]

#figure(
  image("../assets/DiagrammiGantt/PB.png", width: 100%),
  caption: [
    Diagramma di Gantt per le attività da svolgere per la #glossary[PB].
  ],
)

*Inizio*: 16/02/2024

*Fine*: 28/03/2024 

In questa fase la concentrazione, soprattutto nel periodo iniziale, si focalizza sulla progettazione. Si inizia la stesura del documento delle _Specifiche Tecniche_ e lo studio di un'#glossary[architettura] adeguata. Iniziano il loro ciclo di vita anche il _Manuale Utente_ e le _Specifiche Tecniche_.
Attraverso le fasi di progettazione e sviluppo ha inizio la creazione del progetto vero e proprio, utilizzando le conoscenze acquisite durante la creazione del #glossary[PoC]. Lo sviluppo includerà anche le fasi di testing del prodotto.

#include "PianificazioneSprint/NonoSprint.typ"
#include "PianificazioneSprint/DecimoSprint.typ"
#include "PianificazioneSprint/UndicesimoSprint.typ"
#include "PianificazioneSprint/DodicesimoSprint.typ"
#include "PianificazioneSprint/TredicesimoSprint.typ"
#include "PianificazioneSprint/QuattordicesimoSprint.typ"