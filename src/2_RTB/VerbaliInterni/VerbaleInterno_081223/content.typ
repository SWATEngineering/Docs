#import "meta.typ": inizio_incontro, fine_incontro, luogo_incontro
#import "functions.typ": glossary, team
#let participants = csv("participants.csv")

= Partecipanti
/ Inizio incontro: 10:30
/ Fine incontro: 12:00
/ Luogo incontro: Discord

#table(
  columns: (3fr, 1fr),
  [*Nome*], [*Durata presenza*],
  ..participants.flatten()
)
= Sintesi Elaborazione Incontro

== Piano di Progetto
=== Dettaglio pianificazione
Gli analisti hanno trovato difficoltà nel riuscire a pianificare gli sprint con lunga prospettiva, sia nel determinare il tempo necessario per le attività, sia nello stimare il progresso raggiunto in sprint molto lontani. Per questo motivo, è stato stabilito che si chiederà al Committente dei chiarimenti sul livello di dettaglio richiesto in tale sezione.

=== Analisi dei rischi
Durante l'incontro, è stato suggerito e concordato che, all'interno dell'analisi dei rischi del PdP, andrà aggiunta come problematica la sessione di esami che i membri del gruppo dovranno sostenere, in un momento che sta all'interno del periodo di lavoro del gruppo. Questo perché è stato rilevato che in questo periodo, i membri del gruppo avranno meno tempo da dedicare al progetto e quindi potrebbero esserci dei ritardi.

=== Ore per ruolo
È stato discusso come trattare, all'interno del PdP, la distribuzione delle ore, soprattutto in caso di modifiche non previste. La decisione è stata quella di mantenere nel preventivo le ore previste per ogni ruolo, mentre nel consuntivo vanno indicati eventuali cambiamenti, motivandone la scelta. Un'altra necessità che è emersa è quella di giustificare, all'interno del preventivo, la distribuzione delle ore tra i ruoli, in particolare nel loro andamento rispetto al proseguire degli sprint.

== Modifica sito vetrina
È stato deciso di modificare il sito vetrina, in particolare raggruppando la documentazione in "Documentazione esterna" e "Documentazione interna" e adattare di conseguenza la struttura delle cartelle nella repository. Questo, in modo da facilitare la consultazione dei documenti.

== Discordanza tra sprint e RTB
È stato fatto notare la discrepanza tra la data di fine sprint e la data di consegna dell'RTB, infatti la prima è prevista per il 21/12/2023, mentre la seconda per lunedì 18/12/2023. È stato quindi deciso di spostare la data dell'RTB al 22/12/2023, in modo da migliorare la pianificazione e avere un giorno disponibili in più per eventuali ritardi e per mettere a punto la presentazione dell'RTB.

== Diminuzione tipi di sensori
Sotto suggerimento della proponente, sono stati scartati alcune tipologie di sensori. Questo, per un miglioramento dell'interfaccia finale, che altrimenti sarebbe risultata troppo "affollata", ma soprattutto per concentrarci su quelle che sono le funzionalità principali del prodotto e non sprecare tempo sulla realizzazione di eccessive tipologie di sensori. I sensori mantenuti sono: temperatura, umidita, velocità-direzione del vento, precipitazioni, inquinamento dell'aria, livello dei bacini idrici, disponibilità parcheggi, colonne di ricarica elettrica, biciclette elettriche, riempimento zone ecologiche, congestione stradale.

== Piano d'azione per l'AdR
Per quanto riguarda l'_Analisi dei Requisiti_, è stato stabilito come si procederà. Per prima cosa si proseguirà con il migioramento dei casi d'uso, con successiva verifica della qualità tramite uno sportello col professor Cardin, che andrà prenotato una volta terminato il rifacimento dei casi d'uso. Se il professore approvasse quanto realizzato, si procederà con la stesura dei requisiti, in caso contrario si tornerà alla correzione dei casi d'uso.

== Ruoli concomitanti
Nella previsione a lungo termine degli sprint, è emersa la limitatezza delle ore riservate ad alcuni ruoli, come il responsabile e l'amministratore. Per questo motivo, è stato proposta la possibilità da parte dei membri, di mantenere contemporaneamente più ruoli all'interno di una stessa turnazione (che coincide con uno sprint), in modo da limitare lo spreco di ore e migliorare l'efficienza. Per poter applicare questa soluzione, è stato chiesto consiglio al Committente, il quale ci ha chiarito che è una soluzione accettabile, anche per il ruolo di responsabile, col vincolo che i ruoli assunti da una stessa persona non abbiano conflitti di interessi (ad. esempio uno stesso individuo non può essere verificatore di sé stesso).

== Assegnazione dei ruoli
Su proposta dei componenti e a seguito di quanto indicato precedentemente, è stata assegnata la seguente distribuzione dei ruoli:
- Simone Caregnato: responsabile, amministratore;
- Riccardo Costantin: Verificatore;
- Giacomo D'Ovidio: Programmatore;
- Nancy Kalaj: Analista, amministratore;
- Matteo Rango: Analista, amministratore;
- Riccardo Toniolo: Verificatore, amministratore; 
Il ruolo di progettista non è ancora stato assegnato, in
quanto si ritiene non necessario in questa fase di avanzamento del progetto.