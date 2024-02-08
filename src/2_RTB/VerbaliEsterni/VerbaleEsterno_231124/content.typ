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

=== Esposizione dei progressi avvenuti nello sprint
La Propontente ha da subito rivolto la sua attenzione verso i progressi compiuti nel corso dello sprint appena concluso. 

La discussione si è articolata in due fasi distinte: inizialmente si sono discussi gli aspetti relativi al codice, successivamente si è discusso della parte relativa alla documentazione. 

=== Avanzamenti nel codice
Per quanto concerne il codice gli obiettivi che si erano concordati erano l'*Implementazione di uno script di simulazione* e la *Creazione di un Ambiente Containerizzato*. 
Il team ha presentato in modo chiaro e compatto i progressi ottenuti: e' stato implementato un file Docker Compose che orchestra un ambiente di esecuzione composto da uno script di simulazione scritto in Python che invia dati simulati a un'istanza di Kafka.

La Proponente ha affermato che il prodotto mostrato corrispondeva pienamente alle loro aspettative per questo sprint.

=== Progressi documentali
L'attenzione si è focalizzata sul documento di analisi dei requisiti.
Si sono discussi i casi d'uso riportati all'interno del documento e il team ne ha approfittato per esprimere alcuni dubbi irrisolti. 

Si riportano i momenti salienti della discussione: 
- *Necessità di interagire con i Sensori*: il team ha espresso il dubbio relativo all'inserimento di un caso d'uso che permetta all'attore di interagire direttamente con il singolo sensore. La Proponente ha affermato che per fare ciò servirebbe andare a realizzare un flusso inverso (da sistema di controllo a sensore) e dunque non si tratta di un requisito necessario ma al più opzionale. In aggiunta viene affermato che solitamente gli strumenti di Asset Management non vengono integrati nelle dashboard, ma trovano spazio in sezioni distinte; 
- *Sistemi di allerting*: la Proponente ha invitato il team a riflettere sulle modalità di _allerting_ in quanto non erano state definite all'interno del documento. Si sono poi discusse alcune strategie per generare dati che possano effettivamente innescare il sistema di allerte. La Proponente ha affermato che tali dati non devono necessariamente provenire dal simulatore stesso, ma possono anche essere inviati a Kafka manualmente con lo scopo di scatenare un'allerta.

Non è stata espressa una vera e propria opinione, ma i requisiti riportati nel documento sembrano essere in linea con l'idea della Proponente. 

=== Incontro di formazione su Docker

Alla luce del fatto che la quasi totalità dei componenti del nostro team ritiene che le proprie competenze in ambito Docker e tecnologie di containerizzazione siano ridotte, e che l'impiego di tali tecnologie rimane fondamentale al fine della buona riuscita del progetto, è stata avanzata l'idea di organizzare un incontro di allineamento sul tema in maniera tale da colmare le lacune esistenti. 
La Proponente ha accettato la proposta e l'incontro è stato fissato per mercoledì 29 novembre.


=== Obiettivi dello sprint
L'intenzione iniziale della Proponente per questo sprint era quella di introdurre nel sistema la componente di persistenza dei dati simulati.

Una volta confermata l'intenzione del team di effettuare la prima revisione entro il 18 dicembre, è stato invece deciso di accorpare nello _Sprint Backlog_ anche la componente di visualizzazione che era stata inizialmente pianificata come parte dello sprint successivo. In altre parole, il team avrà realizzato una prima versione completa del _Proof of Concept_ entro la fine dello sprint attuale, programmata per il 7 Dicembre.

La decisione di cui sopra è stata motivata dalla volontà di consentire un ulteriore sprint, dedicato alla risoluzione di eventuali problemi.

Il team ha inoltre dichiarato la volontà di continuare la stesura della documentazione relativa al _Requirements and Technology Baseline_ (RTB).

=== Chiarimenti tecnici
- *Persistenza di Grafana:* La Proponente consiglia di assicurare la persitenza delle visualizzazioni in Grafana utilizzando i volumi Docker; 
- *Formato JSON o divisione in colonne:* Viene consigliato di indagare sul comportamento di ClickHouse ed effettuare una scelta sulla base delle operazioni sui dati che si intendono effettuare; 
- *ZooKeeper e KRaft:* La Proponente ha fatto notare che ZooKeeper quest'anno è stato sostituito in produzione da Kafka stesso con KRaft. I metadati erano inizialmente gestiti tramite ZooKeeper, ora vengono gestiti dal Broker stesso tramite KRaft. La necessità di rimuovere la dipendenza da ZooKeeper era dovuta alla presenza di alcune limitazioni relative alla scalabilità. Per quanto riguarda il progetto InnovaCity, mantenere ZooKeeper non sarebbe comunque problematico. 

=== Prossimo Incontro 
Il prossimo incontro è stato fissato per giovedì 7 dicembre. 