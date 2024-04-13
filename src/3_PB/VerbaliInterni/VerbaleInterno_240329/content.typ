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

== Nuovi ruoli

Vengono stabiliti i seguenti i nuovi incarichi relativi allo sprint corrente:
- Caregnato Simone: Verificatore;
- Costantin Riccardo Alberto: Progettista; 
- D'Ovidio Giacomo: Programmatore, Verificatore; 
- Kalaj Nancy: Amministratore, Progettista, Verificatore; 
- Rango Matteo: Analista;
- Toniolo Riccardo: Responsabile, Verificatore.

== Conclusione _Manuale Utente v1.0_

L'incontro si è aperto discutendo dello stato di completamemnto del _Manuale Utente_, che è necessario terminare e revisionare interamente entro la fine dello sprint corrente; la stesura del documento può dirsi terminata, se non che occorre aggiungere qualche dettaglio in più:

- Nella sezione riguardante l'installazione del prodotto software, occorre specificare la procedura da seguire per ottenere ed impostare:
  - API key del servizio utilizzato per simulare percorsi realistici per le biciclette elettriche;
  - API key del webhook Discord utilizzato per impostare un canale testuale come ente di ricezione delle notifiche che denotano il superamento di soglie predeterminate sui dati simulati;
- Aggiungere una breve sezione riguardante la componente di allarmi e relative notifiche menzionata sopra;
- Corredare le descrizioni testuali di screenshot che aiutino l'utente a comprendere meglio la funzionalità in esame.
Matteo Rango si occupa del primo punto, mentre Nancy Kalaj si occupa degli ultimi due punti.

== Conclusione _Piano di Qualifica v2.0_

Anche il _Piano di Qualifica_ deve essere terminato inserendo i dati pertinenti allo sprint corrente al termine dello stesso e aggiornando i grafici di conseguenza; occorre, inoltre, fare una breve analisi dell'andamento delle metriche negli sprint 9-15 (periodo pre-PB), confrontandolo anche con l'andamento nel periodo precedente, e riportarla sotto i grafici (se ne occupa Riccardo Costantin). Infine, dato che le modifiche apportate all'_Analisi dei Requisiti_ sono state riportate anche all'interno dei test di accettazione e di sistema, è necessario revisionarli ulteriormente e modificarne lo stato di soddisfacimento, una volta eseguiti in presenza della Proponente.

== Conclusione _Specifica Tecnica v1.0_ e _Analisi dei Requisiti v2.0_

La _Specifica Tecnica_ è già stata terminata, occorre semplicemente assicurarsi che lo stato di soddisfacimento dei vari requisiti funzionali, di vincolo e di qualità riportati nella sezione conclusiva dedicata al tracciamento sia aggiornato rispetto a quanto sviluppato nel MVP. Se ne occupa Simone Caregnato. Allo stesso modo anche l'_Analisi dei Requisiti_ è conclusa, occore però aggiornare alcuni diagrammi UML dei casi d'uso e se ne occupa Matteo Rango. 

Una volta svolto quanto descritto, i due documenti saranno pronti per essere sottoposti alla valutazione del Prof. Cardin in occasione della PB imminente. Similmente, anche il resto della documentazione richiesta per la seconda parte della PB verrà terminato e revisionato a fondo prima di ottenere l'approvazione finale del Responsabile che ne sancirà anche lo "scatto" di versione.

== Validazione del prodotto software come MVP

In vista della presentazione programmata verso la fine dello sprint corrente (il 02/04/24 in sede Sync Lab a Padova), occorre poter garantire che il prodotto sia aderente ai requisiti definiti e che l'interfaccia risulti chiara e comprensibile, oltre che esteticamente gradevole (se ne occupano Riccardo Toniolo e Giacomo D'Ovidio). Scopo della presentazione è esporre le funzionalità implementate all'interno del prodotto software ed eseguire i test di accettazione, in modo da poter ottenere la validazione di quest'ultimo come MVP da parte della Proponente. 