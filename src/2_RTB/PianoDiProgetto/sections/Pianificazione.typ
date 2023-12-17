#import "../functions.typ": glossary, team

= Pianificazione

Stabilite come #glossary("milestone") principali le #glossary("baseline"), corrispondenti alle revisioni del progetto, gli sprint consentono di mantenere un approccio agile e permettono di essere reattivi rispetto ai cambiamenti nelle esigenze o nei requisiti del progetto. Ciascuno sprint contribuirà in modo incrementale al raggiungimento delle milestone e al successo complessivo del progetto.
Sulla base delle scadenze riportate nella sezione *Scadenze* si pianificano: 

- 2 sprint di due settimane e 2 sprint da una settimana per arrivare alla revisione RTB; 
- 10 sprint della durata di una settimana per arrivare alla revisione PB; 
- 2 sprint della durata di una settimana per arrivare alla revisione CA. 

Inizialmente, il team aveva pianificato sprint della durata di due settimane. Tuttavia, durante lo svolgimento, è risultato preferibile passare a sprint della durata di una settimana. Di conseguenza, il documento del Piano di progetto, in particolare nelle sezioni *Pianificazione* e *Preventivo*, viene aggiornato in base a questa modifica stabilita. 
Il documento Piano di Progetto si evolve durante tutto il ciclo di vita del progetto, la modifica della pianificazione deriva dall'esigenza di reagire ai problemi, dovuti ad una durata degli sprint inadeguata. 
Nell’intervallo di tempo tra revisione RTB e revisione PB, è stata pianificata una diminuzione del carico di lavoro nelle ultime due settimane del mese di Gennaio, permettendo ai membri del team di potersi dedicare agli altri impegni che il percorso di studio richiede. 

Per ciascun Sprint, vengono stabilite le date di inizio e di fine,e il relativo insieme delle attività pianificate, rappresentate tramite diagrammi di Gantt.

== Requirements and Technology Baseline
#figure(
  image("../assets/DiagrammiGantt/RTB.png", width: 100%),
  caption: [
    Diagramma di Gantt per le attività da svolgere per la RTB.
  ],
)

#include "PianificazioneSprint/PrimoSprint.typ"
#include "PianificazioneSprint/SecondoSprint.typ"
#include "PianificazioneSprint/TerzoSprint.typ"
#include "PianificazioneSprint/QuartoSprint.typ"

== Product Baseline

#figure(
  image("../assets/DiagrammiGantt/PB.png", width: 100%),
  caption: [
    Diagramma di Gantt per le attività da svolgere per la PB.
  ],
)


#include "PianificazioneSprint/QuintoSprint.typ"
#include "PianificazioneSprint/SestoSprint.typ"
#include "PianificazioneSprint/SettimoSprint.typ"
#include "PianificazioneSprint/OttavoSprint.typ"

=== Sessione d'esame

In vista della sessione invernale di esami, è prevista una sospensione temporanea dello sviluppo del progetto. Questo permette ai membri del gruppo di potersi dedicare allo studio individuale.

#include "PianificazioneSprint/NonoSprint.typ"
#include "PianificazioneSprint/DecimoSprint.typ"
#include "PianificazioneSprint/UndicesimoSprint.typ"
#include "PianificazioneSprint/DodicesimoSprint.typ"
#include "PianificazioneSprint/TredicesimoSprint.typ"
#include "PianificazioneSprint/QuattordicesimoSprint.typ"

== Customer Acceptance Baseline

#include "PianificazioneSprint/QuindicesimoSprint.typ"
#include "PianificazioneSprint/SedicesimoSprint.typ"