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

Ecco la correzione degli eventuali errori di ortografia nel testo:

Durante l'incontro il gruppo ha chiarito con la Proponente alcuni dubbi che vengono esposti in seguito e ha condiviso con essa lo stato di avanzamento del progetto.

== Stato di avanzamento del prodotto
L'incontro si è aperto con la presentazione dell'attuale componente di visualizzazione e con una breve discussione riguardo ai progressi effettuati dall'ultimo SAL. Successivamente si è discussa la pianificazione temporale dell'attività di codifica per i rimanenti sprint.
La proponente si è detta soddisfatta del lavoro che il team sta svolgendo e ha approvato la pianificazione presentata.

== Candidatura revisione PB
Il team ha messo al corrente la Proponente della recente decisione intrapresa di non affrontare la revisione CA e dunque di volersi limitare alla revisione PB pianificata orientativamente la prima settimana di aprile. 

== Test di integrazione
Il team ha domandato alla Proponente riguardo quali sarebbero state le modalità preferibili per testare l'integrazione dei componenti.
Un membro del gruppo ha domandato se utilizzare il software Selenium per testare l'effettivo funzionamento della pipeline fino a Grafana fosse adeguato. La risposta è stata negativa.
Viene consigliato di testare l'integrazione delle componenti solo per la prima parte di pipeline, fino all'archiviazione dei dati su ClickHouse tramite codice Python.

== Performance e qualità 
In quanto le statistiche offerte direttamente da Docker potrebbero essere influenzate dalle specifiche tecniche della macchina utilizzata, il team ha domandato alla Proponente riguardo quali sarebbero le migliori tecnologie per poter testare le performance del prodotto.
Viene consigliato di verificare se la tecnologia "Portainer" possa essere utile allo scopo. Inoltre viene consigliato di contattare il rappresentante aziendale Andrea Dorigo tramite mail per avere una risposta più completa.

== MVP
Viene sollevato l'interrogativo riguardo alle modalità di attestazione del prodotto come minimum viable product (MVP), e se la procedura sia rimasta la medesima rispetto all'anno accademico 2022/2023. Il team non ne è al momento a conoscenza, provvederà ad informarsene durante il diario di bordo programmato per venerdì 15 aprile e riporterà tale informazione alla Proponente quanto prima possibile.

== Pianificazione SAL 
Viene pianificato il prossimo SAL mercoledì 20 Aprile alle ore 16.30. In questo contesto il team presenta la sua volontà di, ormai verso 



