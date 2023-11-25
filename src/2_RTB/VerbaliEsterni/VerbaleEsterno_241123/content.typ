#import "meta.typ": inizio_incontro, fine_incontro, luogo_incontro, company
#import "functions.typ": glossary, team
#let participants = csv("participants.csv")
#let participants_company = csv("participants_company.csv")

= Partecipanti
/ Inizio incontro: #inizio_incontro
/ Fine incontro: #fine_incontro
/ Luogo incontro: #luogo_incontro

== Partecipanti di #team
#table(
  columns: (3fr, 1fr),
  [*Nome*], [*Durata presenza*],
  ..participants.flatten()
)
== Partecipanti di #emph[#company]
#for member in participants_company.flatten() [
  - #member
]


= Sintesi Elaborazione Incontro

== Argomenti affrontati
Di seguito si riportano gli argomenti affrontati durante la riunione:

=== Esposizione dei Progressi avvenuti nello Sprint
La Propontente ha da subito rivolto la sua attenzione verso i progressi compiuti nel corso dello Sprint appena concluso. 

La discussione si è articolata in due fasi distinte: inizialmente si sono discussi gli aspetti relativi al codice, successivamente si è discussa la parte relativa alla documentazione. 

=== Avanzamenti nel Codice
Per quanto concerne il codice gli obbiettivi che si erano concordati erano l'*Implementazione di uno script di simulazione* e la *Creazione di un Ambiente Containerizzato*. 
Il team ha presentato in modo pratico e conciso i risultati ottenuti: è stato attivato un file *Docker Compose*, all'interno del quale lo script di simulazione realizzato in Python, ed eseguito singolarmente in un container, inviava dati simulati a un'istanza di Kafka, anch'essa un container. 

La proponete ha affermato che il prodotto mostrato corrispondeva pienamente alle loro aspettative per questo sprint.

=== Progressi Documentali
L'attenzione si è focalizzata sul documento di analisi dei requisiti.
Si sono discussi i casi d'uso riportati all'interno del documento e il team ne ha approfittato per esprimere alcuni dubbi irrisolti. 

Si riportano gli argomenti salienti: 
- *Necessità di interagire con i Sensori*: il team ha espresso il il dubbio relativo all'inserimento di un caso d'uso che permettesse all'attore di interagire direttamente con il singolo sensore. La proponente ha affermato che per fare ciò servirebbe andare a realizzare un flusso inverso (da sistema di controllo a sensore) e dunque non si tratta di un requisito necessario ma al più opzionale. Tralatro viene affermato che solitamente questi strumenti, denominati _Asset Management_ non vengono realizzati all'interno di strumenti di _dashboarding_, ma in sezioni separate.
- *Sistemi di Allerting*: la proponente ha invitato il team a riflettere sulle modalità di Allerting in quanto non erano state definite all'interno del documento. Si sono poi discusse alcune strategie per poter generare dati che effettivamente potessero andare ad innescare questi sistemi. 
La proponente afferma che tali dati non siano necessariamente da ricondurre alla produzione effettuata dai simulatore, ma possano essere trasmessi a kafka manualmente. 

Non è stata espressa una vera e propria opinione, ma i requisiti riportati nel documento sembrano essere in linea con l'idea della proponente. 

=== Workshop su Docker

Alla luce del fatto che la quasi totalità dei componenti del nostro team ritiene che le proprie competenze in ambito Docker e tecnologie di containerizzazione siano ridotte, e che l'impiego di tali tecnologie rimane fondamentale al fine della buona riuscita del progetto, è stata avanzata l'idea di organizzare un workshop di allineamento sul tema in maniera tale da colmare le lacune esistenti. 
La proponente ha accettato la proposta e ne è stata fissata la data: il 29 novembre alle ore 15.30. 


=== Obbiettivi dello Sprint
L'intenzione iniziale della proponente per questo sprint era quello di introdurre nel sistema la componente di persistenza dei dati simulati.

Confermata l'intenzione del team di effettuare la prima revisione entro il 18 dicembre, è stato invece deciso di accorpare nel backlog dello sprint anche componente di dashboarding era stata inizialmente pensata come parte dello sprint successivo. 

La scelta è stata motivata dalla volontà di avere a disposizione un ulteriore sprint, seppure di durata ridotta, da dedicare alla risoluzione di eventuali problemi.

=== Chiarimenti tecnici
- *Persistenza di Grafana:* La proponente consiglia di garantire la persitenza delle viste tramite i volumi Docker.
- *Formato JSON o dvisione in colonne:* Viene consigliato di indagare sul comportamento di ClickHouse e effettuare una scelta sulla base delle operazioni che si intendono effettuare. 
- *ZooKeeper e KRaft:* La proponente ha fatto notare che ZooKeeper quest'anno è stato sostituito in produzione da Kafka stesso con KRaft. I metadati inizialmente erano gestiti in ZooKeeper, sono ora gestiti dal Broker stesso tramite KRaft. 
La necessità di rimuovere la dipendenza da ZooKeeper era dovuta alla volontà rimuovere alcune limitazioni in termini di scalibilità. 
Per quanto riguarda il progetto InnovaCity, mantenere ZooKeeper non sarebbe problematico. 

=== Prossimo Incontro 
Il prossimo incontro è stato fissato per giovedi 7 dicembre. 