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

== Frequenza degli aggiornamenti alla Proponente
Il team si impegna a mantenere la Proponente costantemente informata sull'avanzamento durante lo sprint, con un aggiornamento settimanale. Tale aggiornamento avverrà idealmente a metà sprint; tuttavia, in caso di urgenze o necessità particolari, il team contatterà la Proponente per ottenere il loro feedback in momenti aggiuntivi. Inoltre, comprendendo l'interesse dei referenti della Proponente nell'analizzare il codice sviluppato prima della Sprint Retrospective, il team si impegna a contattarli a tal proposito anche poco prima della fine dello sprint.

== Numerosità dei Verificatori
Il team ha valutato l'assegnazione del ruolo di Verificatore, decidendo di limitarlo a un solo membro per sprint successivi al primo. Questa scelta mira a garantire una maggiore enfasi e supporto ai ruoli le cui mansioni sono attualmente più pressanti, come il Programmatore o l'Analista.
Tuttavia, nel caso si decida in futuro di coinvolgere più di un Verificatore, la politica per assegnare loro le issue da revisionare all'interno dell'ITS è la seguente: il Verificatore seleziona autonomamente la issue con la priorità maggiore all'interno della "corsia" Ready to Review sulla Kanban Board in utilizzo su Github e procede con la revisione.

== Pianificare date di inizio e fine per ogni _issue_
Al termine di ogni meeting interno la prassi è quella di creare e assegnare le issue all'interno dell'ITS, consentendo la definizione di parametri come la dimensione (Size) e la priorità (Priority) di ciascuna. In data odierna si è deciso di concordare anche la data di inizio e soprattutto di fine di ogni issue, al fine di pianificare l'avanzamento del lavoro in maniera più dettagliata, considerando scadenze più immediate rispetto alla fine dello sprint corrente. Questa pratica mira a facilitare il monitoraggio delle interconnessioni tra le diverse issue e favorire una collaborazione più efficace tra i membri del team, permettendo una pianificazione più precisa e agevolando la gestione delle dipendenze tra le varie attività.

== Lavorare in team di due persone
Il team si sta orientando verso un approccio collaborativo dove, durante lo sviluppo del codice, due o più Programmatori lavorano insieme, anche se non in un'esclusiva modalità di pair-programming su una singola issue. Questo approccio mira a favorire lo scambio di consigli e la collaborazione diretta, ma non implica necessariamente un impegno costante su una singola attività.

== Data di scadenza del RTB
Il team ha fissato come termine ultimo di consegna del RTB il 18 dicembre 2023, poco dopo il termine dei primi due sprint e mezzo (che ricoprono il periodo che va dal 10 novembre 2023 al 15 dicembre 2023). È stata prevista una finestra aggiuntiva di qualche giorno per valutare approfonditamente il lavoro completato e per condurre le revisioni necessarie.

== Spostamento dei meeting interni
I meeting interni attualmente pianificati per ogni martedì verranno spostati al venerdì (il giorno della settimana in cui si conclude lo sprint corrente) per consentire una pianificazione più accurata degli obiettivi dello sprint successivo e una conseguente assegnazione dei ruoli. Pertanto, il meeting settimanale si terrà il venerdì alle ore 10:30 a metà sprint (in assenza del meeting di Sprint Retrospective tenuto con la Proponente) e alle ore 11:30 alla conclusione dello sprint (subito dopo lo _Sprint Retrospective_).

== Avanzamento del Piano di Progetto
Il Responsabile corrente si incarica della redazione delle prossime sezioni del _Piano di Progetto_, incluse l'Analisi dei Rischi e il Modello di sviluppo. Il team ha ufficialmente concordato sull'adozione di una metodologia agile per la gestione del progetto. Questo perché le pratiche attuate nelle ultime settimane, come sprint, Sprint Planning, Daily Scrum e Sprint Retrospective, riflettono appieno le caratteristiche dinamiche del modello Scrum.

== Avanzamento dell'Analisi dei Requisiti
Il team ha deciso di sottoporre i casi d'uso in forma testuale a una prima verifica esterna durante il meeting di Sprint Retrospective del 24 Novembre. Inoltre, si è pianificato di creare i corrispondenti diagrammi UML tramite draw.io. Durante questa sessione di verifica, il team intende chiarire con la Proponente alcuni dubbi riguardanti l'_Analisi dei requisiti_, in particolare per quanto riguarda il ruolo dei simulatori di sensori (si intende capire se essi rappresentino attori esterni al sistema o siano da considerare componenti interni al sistema stesso).