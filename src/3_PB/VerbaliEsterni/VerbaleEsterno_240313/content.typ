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
Durante l'incontro il gruppo ha chiarito con la Proponente alcuni dubbi che vengono esposti in seguito e ha condiviso con essa lo stato di avanzamento del progetto.

== Stato di avanzamento del prodotto
L'incontro si è aperto con la presentazione dello stato attuale della componente di visualizzazione del prodotto software (Grafana) e con una breve discussione riguardo ai progressi effettuati dall'ultimo SAL, ovvero la ridefinizione dell'architettura sottostante e l'aggiunta di molteplici simulatori. Successivamente, si è discussa la pianificazione temporale dell'attività di codifica per i prossimi sprint.
La proponente si è detta soddisfatta del lavoro che il team sta svolgendo e ha approvato la pianificazione presentata.

== Candidatura revisione PB
Il team ha messo al corrente la Proponente della decisione intrapresa di recente di non affrontare la revisione CA e dunque di volersi limitare alla revisione PB, pianificata orientativamente verso la prima settimana di Aprile. 

== Test di integrazione
Il team ha domandato alla Proponente quali potrebbero essere le modalità preferibili per testare l'integrazione dei componenti del prodotto software.
In particolare, un membro del gruppo ha domandato se utilizzare il software Selenium per testare l'effettivo funzionamento della pipeline fino a Grafana fosse adeguato. In risposta, la Proponente ne ha sconsigliato l'utilizzo onde evitare un ulteriore dispendio di risorse e una maggiore complessità.
Viene consigliato di testare l'integrazione delle componenti solo per la prima parte di pipeline, fino all'archiviazione dei dati su ClickHouse tramite codice Python.

== Performance e qualità 
In quanto le statistiche offerte direttamente da Docker potrebbero essere influenzate dalle specifiche tecniche della macchina utilizzata, il team ha domandato alla Proponente quali sarebbero le migliori tecnologie per poter testare le performance del prodotto.
Viene consigliato di verificare se la tecnologia "Portainer" possa essere utile allo scopo. Inoltre, viene consigliato di contattare il rappresentante aziendale Andrea Dorigo tramite email per ricevere ulteriori consigli in merito.

== MVP
La Proponente ha sollevato un interrogativo riguardo alle modalità di attestazione del prodotto come Minimum Viable Product (MVP), e se la procedura sia rimasta la medesima rispetto all'anno accademico 2022/2023. Il team non ne è al momento a conoscenza, provvederà ad informarsene durante il diario di bordo programmato per venerdì 15 Marzo e riporterà tale informazione alla Proponente quanto prima.

== Pianificazione SAL 
Infine, si è deciso di fissare il prossimo SAL in data mercoledì 20 Marzo alle ore 16.30. Questo in quanto il team ha rimarcato la volontà di mantenere un contatto più stretto con la Proponente, accingendosi ad entrare nel periodo conclusivo del progetto. In tale periodo è infatti molto importante perseguire una risoluzione tempestiva di eventuali problemi che potrebbero emergere e, di conseguenza, portare a ritardi rispetto alla pianificazione. 



