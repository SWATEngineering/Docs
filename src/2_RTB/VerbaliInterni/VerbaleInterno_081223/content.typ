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

== Piano di Progetto
=== Dettaglio pianificazione
Il Responsabile ha riscontrato difficoltà nella pianificazione degli sprint a lungo termine, sia nella definizione del tempo necessario per le attività, sia nell'effettuare stime accurate del progresso in sprint distanti nel tempo. Di conseguenza, si è deciso di richiedere al Committente ulteriori chiarimenti in merito al livello di dettaglio richiesto per questa sezione.

=== Analisi dei rischi
Durante l'incontro, è stato suggerito e concordato di includere, nell'analisi dei rischi del _Piano di Progetto_(PdP), la sessione di esami che i membri del gruppo dovranno affrontare. Questa situazione è stata identificata come un potenziale fattore di criticità, in quanto si colloca all'interno del periodo di attività del gruppo. Tale decisione è motivata dalla constatazione che durante questo periodo i membri potrebbero trovarsi con limitato tempo a disposizione per il progetto, con il rischio di possibili ritardi.

=== Ore per ruolo
È stato oggetto di discussione come trattare, all'interno del _Piano di Progetto_ (PdP), la distribuzione delle ore per ogni ruolo e membro del team, specialmente in situazioni di modifiche non previste. La decisione adottata prevede di mantenere nel preventivo le ore stimate per ciascun ruolo, mentre nel consuntivo devono essere indicate eventuali variazioni, corredate dalla motivazione delle scelte effettuate. Inoltre, è emersa la necessità di giustificare, all'interno del preventivo, la distribuzione delle ore tra i vari ruoli, in particolare focalizzandosi sul loro andamento nel corso degli sprint.

== Modifica sito vetrina
È stato deciso di apportare modifiche al sito vetrina, concentrandosi principalmente sulla riorganizzazione della documentazione in due categorie, ovvero "Documentazione esterna" e "Documentazione interna". In concomitanza con questa modifica, si adeguerà, di conseguenza, la struttura delle cartelle nella repository. L'obiettivo di questa iniziativa è semplificare il processo di consultazione dei documenti.

== Discordanza tra sprint e RTB
È stata evidenziata una discrepanza tra la data di conclusione dello sprint (prevista per il 21/12/2023) e la data di consegna dell'RTB, fissata per lunedì 18/12/2023. Di conseguenza, si è presa la decisione di posticipare la data dell'RTB al 22/12/2023. Questo aggiustamento è stato effettuato al fine di ottimizzare la pianificazione, fornendo dei giorni aggiuntivi, per gestire eventuali ritardi e per perfezionare la presentazione dell'RTB.

== Diminuzione tipi di sensori
Sotto suggerimento della proponente, sono state escluse alcune tipologie di sensori.Ciò è stato fatto al fine di migliorare l'aspetto complessivo dell'interfaccia, evitando un eccessivo "affollamento" e concentrandosi in particolare sulle funzionalità principali del prodotto. Questa scelta è stata motivata dalla volontà di ottimizzare il tempo dedicato alla realizzazione, concentrandosi sulle categorie di sensori più rilevanti.  I sensori mantenuti sono: temperatura, umidità, velocità e direzione del vento, precipitazioni, inquinamento dell'aria, livello dei bacini idrici, disponibilità di parcheggi, colonne di ricarica elettrica, biciclette elettriche, riempimento zone ecologiche, congestione stradale.

== Piano d'azione per l'AdR
Per quanto riguarda l'_Analisi dei Requisiti_, è stato stabilito il processo da seguire. Per prima cosa si prosegue con il migioramento dei casi d'uso, con successiva verifica della qualità tramite uno sportello col professor Cardin,  prenotato al termine del rifacimento dei casi d'uso. Se il professore approvasse quanto realizzato, si procederà con la stesura dei requisiti, in caso contrario si tornerà alla correzione dei casi d'uso.

== Ruoli concomitanti
Nella previsione a lungo termine degli sprint, è emersa la limitatezza delle ore riservate ad alcuni ruoli, come il Responsabile e l'Amministratore. Per affrontare questa sfida, è stata avanzata la proposta di consentire ai membri del team di ricoprire contemporaneamente più ruoli durante una stessa turnazione, coincidente con uno sprint. L'obiettivo è ridurre lo spreco di ore e migliorare l'efficienza complessiva. Al fine di implementare questa soluzione, è stato richiesto il parere del Committente, il quale ha chiarito che tale approccio è accettabile, anche per il ruolo di Responsabile, a condizione che i ruoli assegnati alla stessa persona non presentino conflitti di interesse (ad esempio, un individuo non può essere il verificatore di se stesso).

== Assegnazione dei ruoli
Su proposta dei componenti e a seguito di quanto indicato precedentemente, è stata assegnata la seguente distribuzione dei ruoli:
- Simone Caregnato: Responsabile, Amministratore;
- Riccardo Costantin: Verificatore;
- Giacomo D'Ovidio: Programmatore;
- Nancy Kalaj: Analista, Amministratore;
- Matteo Rango: Analista, Amministratore;
- Riccardo Toniolo: Verificatore, Amministratore; 
Il ruolo di Progettista non è ancora stato assegnato, in
quanto si ritiene non necessario in questa fase di avanzamento del progetto.