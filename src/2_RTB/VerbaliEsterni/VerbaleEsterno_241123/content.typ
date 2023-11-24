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

/*************************************/
/*    INSERIRE SOTTO IL CONTENUTO    */ 
/*************************************/

= Sintesi Elaborazione Incontro

== Argomenti affrontati
Di seguito si riportano gli argomenti affrontati durante la riunione:

== Esposizione dei Progressi avvenuti nello Sprint
La Propontente ha da subito rivolto la sua attenzione verso i progressi compiuti nel corso dello Sprint appena concluso. 

La discussione si è articolata in due fasi distinte: inizialmente si sono discussi gli aspetti relativi al codice, successivamente si è discussa la parte relativa alla documentazione. 

== Avanzamenti nel Codice
Per quanto concerne il codice gli obbiettivi che si erano concordati erano l'*Implementazione di uno script di simulazione* e la *Creazione di un Ambiente Containerizzato*. 
Il team ha presentato in modo pratico e conciso i risultati ottenuti: è stato attivato un file *Docker Compose*, all'interno del quale lo script di simulazione realizzato in Python, ed eseguito singolarmente in un container, inviava dati simulati a un'istanza di Kafka, anch'essa un container. 

La proponete ha affermato che il prodotto mostrato corrispondeva pienamente alle loro aspettative per questo sprint.

== Progressi Documentali
L'attenzione si è focalizzata sul documento di analisi dei requisiti.
Si sono discussi i casi d'uso riportati all'interno del documento e il team ne ha approfittato per esprimere alcuni dubbi irrisolti. 

Si riportano gli argomenti salienti: 
- *Necessità di interagire con i Sensori*: il team ha espresso il il dubbio relativo all'inserimento di un caso d'uso che permettesse all'attore di interagire direttamente con il singolo sensore. La proponente ha affermato che per fare ciò servirebbe andare a realizzare un flusso inverso (da sistema di controllo a sensore) e dunque non si tratta di un requisito necessario ma al più opzionale. Tralatro viene affermato che solitamente questi strumenti, denominati _Asset Management_ non vengono realizzati all'interno di strumenti di _dashboarding_, ma in sezioni separate.
- *Sistemi di Allerting*: la proponente ha invitato il team a riflettere sulle modalità di Allerting in quanto non erano state definite all'interno del documento. Si sono poi discusse alcune strategie per poter generare dati che effettivamente potessero andare ad innescare questi sistemi. 
La proponente afferma che tali dati non siano necessariamente da ricondurre alla produzione effettuata dai simulatore, ma possano essere trasmessi a kafka manualmente. 

Non è stata espressa una vera e propria opinione ma i requisiti riportati nel documento sembrano essere in linea con l'idea della proponente. 

