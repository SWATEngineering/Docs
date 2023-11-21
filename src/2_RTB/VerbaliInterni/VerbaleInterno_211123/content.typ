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
In data odierna sono stati trattati i seguenti temi.

== Frequenza degli aggiornamenti alla Proponente
Il team si impegna a mantenere la Proponente costantemente informata sull'avanzamento durante lo Sprint, con un aggiornamento settimanale. Tale aggiornamento avverrà idealmente a metà Sprint; tuttavia, in caso di urgenze o necessità particolari, il team contatterà la Proponente per ottenere il loro _feedback_ in momenti aggiuntivi. Inoltre, comprendendo l'interesse dei referenti della Proponente nell'analizzare il codice sviluppato prima della _Sprint Retrospective_, il team si impegna a contattarli anche poco prima della fine dello Sprint, immediatamente dopo aver completato il _merge_ del _feature branch_ di interesse nel _branch_ di derivazione nella _repository_ InnovaCity.

== Numerosita' dei Verificatori
Il team ha valutato l'assegnazione del ruolo di Verificatore, decidendo di limitarlo a un solo membro per Sprint successivi al primo. Questa scelta mira a garantire una maggiore enfasi e supporto ai ruoli le cui mansioni sono attualmente più pressanti, come il Programmatore o l'Analista.
Tuttavia, nel caso si decida in futuro di coinvolgere più di un Verificatore, la politica per assegnare loro le _issue_ da revisionare all'interno dell'ITS è la seguente: il Verificatore seleziona autonomamente la _issue_ con la priorità maggiore all'interno della corsia _Ready to Review_ sulla Kanban Board in utilizzo su Github e procede con la revisione.

== Pianificare date di inizio e fine per ogni _issue_
Al termine di ogni meeting interno la prassi è quella di creare e assegnare le _issue_ all'interno dell'ITS, consentendo la definizione di parametri come la dimensione (_Size_) e la priorità (_Priority_) di ciascuna. In data odierna si è deciso di concordare anche la data di inizio e soprattutto di fine di ogni _issue_, al fine di pianificare l'avanzamento del lavoro in maniera più dettagliata, considerando scadenze più immediate rispetto alla fine dello Sprint corrente. Questa pratica mira a facilitare il monitoraggio delle interconnessioni tra le diverse _issue_ e favorire una collaborazione più efficace tra i membri del team, permettendo una pianificazione più precisa e agevolando la gestione delle dipendenze tra le varie attività.

== Lavorare in team di due persone
Il team è intenzionato ad adottare un approccio per cui determinate _issue_ vengono assegnate a coppie di persone all'interno del team in un futuro prossimo; tuttavia, nello Sprint corrente le responsabilità dei componenti sono prevalentemente distinte, con un'eccezione per i due Analisti. In altre parole, l'associazione tra membri avviene solo nel caso in cui due individui si trovino a ricoprire lo stesso ruolo. Quando l'implementazione del codice richiederà un ruolo più attivo da parte dei Programmatori e coinvolgerà almeno due persone, queste lavoreranno in coppia. In sostanza, l'approccio collaborativo di due persone per task specifiche verrà maggiormente adottato quando le attività richiederanno un coinvolgimento più diretto dei Programmatori.

== Data di scadenza del RTB
Il team ha fissato come termine ultimo di consegna del RTB il 18 dicembre 2023, poco dopo il termine dei primi due Sprint e mezzo (che ricoprono il periodo che va dal 10 novembre 2023 al 15 dicembre 2023). È stata prevista una finestra aggiuntiva di qualche giorno per valutare approfonditamente il lavoro completato e per condurre le revisioni necessarie. Queste decisioni saranno integrate nel Piano di Progetto dal Responsabile corrente.

== Spostamento dei meeting interni
I meeting interni attualmente pianificati per ogni martedì verranno spostati al venerdì (il giorno della settimana in cui si conclude lo Sprint corrente) per consentire una pianificazione più accurata degli obiettivi dello Sprint successivo e una conseguente assegnazione dei ruoli. Pertanto, il meeting settimanale si terrà il venerdì alle ore 10:30 a metà Sprint (in assenza del meeting di _Sprint Retrospective_ tenuto con la Proponente) e alle ore 11:30 alla conclusione dello Sprint (subito dopo lo _Sprint Retrospective_).

== Avanzamento del Piano di Progetto
Il Responsabile corrente si incarica della redazione delle prossime sezioni del Piano di Progetto, incluse l'"Analisi dei Rischi" e il "Modello di sviluppo". Il team ha ufficialmente concordato sull'adozione di una metodologia agile per la gestione del progetto. Questo perchè le pratiche attuate nelle ultime settimane, come Sprint, Sprint Planning, Daily Scrum e Sprint Retrospective, riflettono appieno le dinamiche caratteristiche del modello Scrum.

== Avanzamento dell'Analisi dei Requisiti
Il team ha deciso di sottoporre i casi d'uso in forma testuale a una prima verifica esterna durante il meeting di _Sprint Retrospective_ del 24 Novembre. Inoltre, si è pianificato di creare i corrispondenti diagrammi UML tramite _draw.io_. Durante questa sessione di verifica, il team intende chiarire con la Proponente alcuni dubbi riguardanti l'Analisi dei requisiti, in particolare per quanto riguarda il ruolo dei simulatori di sensori (si intende capire se essi rappresentino attori esterni al sistema o siano da considerare componenti interni al sistema stesso).