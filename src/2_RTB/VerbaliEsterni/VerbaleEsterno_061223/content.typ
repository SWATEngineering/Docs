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

== Esposizione dei progressi raggiunti 

Nell'incontro con la Proponente, il team ha illustrato in dettaglio l'evoluzione del Proof of Concept, evidenziandone gli importanti progressi compiuti nel corso dello sprint. La Proponente ha manifestato un apprezzamento molto positivo per i risultati raggiunti finora, confermando la validità della direzione intrapresa per il successo del progetto.Inoltre, sono stati  dati feedback per migliorare quanto sviluppato, a livello grafico, per rendere più veloce e facile la comprensione dei vari pannelli.

In seguito, la riunione è proseguita con una dettagliata discussione riguardo la parte inerente la documentazione, ponendo particolare enfasi sull'Analisi dei Requisiti.

== Avanzamento del codice        
 
Gli obiettivi prefissati comprendevano l'archiviazione dei dati provenienti da Kafka nel database OLAP ClickHouse, nonché lo sviluppo di una dashboard in Grafana. La dashboard avrebbe dovuto visualizzare una mappa della città indicando la posizione dei sensori di temperatura e presentare in modo chiaro le temperature medie rilevate e un grafico che mostrasse l'andamento sinusoidale della temperatura.


== FeedBack della proponente

La Proponente ha sollevato una critica sostanziale in merito alla comprensibilità della dashboard, evidenziando la difficoltà di interpretare il grafico sinusoidale a causa della sovrapposizione di dati. La soluzione proposta è quella di rendere le temperature più singolari e differenziare il modo in cui i sensori generino l'onda sinusoidale, accelerando il ciclo per rappresentare una "giornata" in pochi minuti e aumentare il tasso di generazione dei dati per una rappresentazione più dinamica, inoltre è stato consigliato di aggiungere un pannello descrittivo.

Per ottimizzare le query, è stato suggerito di integrare, ove necessario, le funzioni aggregate di movingAverage e di ridurre l'intervallo per una maggior visuale.

Inoltre, è stata proposta l'implementazione della capacità di filtraggio in Grafana, focalizzata sulla possibilità di effettuare confronti tra sensori.


== Obiettivo del prossimo sprint     

La Proponente ha mostrato un forte entusiasmo per i progressi raggiunti in poche settimane, indicando che, dal loro punto di vista, si era già pronti per il PoC. In vista del prossimo sprint, hanno suggerito alcune potenziali migliorie estetiche per rendere più comprensibile il prodotto e la possiblità di aggiungere già un altra tipologia di sensore.

== Documentazione  

La proponente risultava essere soddisfatta anche della nuova versione dell'Analisi dei Requisiti, l'unica perplessità riguardava il numero complessivo della tipoliogia di sensori, ritenuto eccessivamente elevato anche in termini di visualizzazione sulla dashboard, e alcuni casi d'uso considerati ridondanti. 
Da notare che la proponente ha sottolineato la preferenza per la qualità rispetto alla quantità. In altre parole, si è manifestato un interesse più marcato verso sensori altamente efficaci e pertinenti piuttosto che un vasto assortimento che potrebbe risultare difficile da gestire o che potrebbe includere elementi superflui.
La proponente ha anche sottolineato che l'individuazione dei casi d'uso risulta essere più complessa a causa del fatto che il sistema è quasi esclusivamente backend. 

















