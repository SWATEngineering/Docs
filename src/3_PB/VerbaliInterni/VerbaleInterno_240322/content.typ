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

/*************************************/
/*    INSERIRE SOTTO IL CONTENUTO    */ 
/*************************************/

Nell'incontro si è discussa l'organizzazione del lavoro futuro sotto un punto di vista più tecnico del solito, in quanto il gruppo è in procinto di consegna per la seconda revisione e di conseguenza cerca di raffinare il prodotto secondo quanto enunciato dalla documentazione.
Di seguito se ne riportano i momenti salienti. 

== Nuovi ruoli

Vengono stabiliti i seguenti i nuovi incarichi relativi allo sprint corrente:
- Caregnato Simone: Verificatore, Programmatore;
- Costantin Riccardo Alberto: Responsabile, Programmatore; 
- D'Ovidio Giacomo: Programmatore, Verificatore; 
- Kalaj Nancy: Analista, Progettista, Verificatore; 
- Rango Matteo: Progettista, Verificatore; 
- Toniolo Riccardo: Responsabile, Programmatore.

== Analisi dei Requisiti

Il team si è reso conto che il prodotto non rispecchia appieno quanto enunciato all'interno dell'_Analisi dei Requisiti_, per funzionalità o modalità di funzionamento.
Di conseguenza si è deciso di allocare risorse nella correzione del prodotto ove necessario e nella chiarificazione del documento _Analisi dei Requisiti_ dove la chiarezza non risulta adeguatamente sufficiente.

== Manuale Utente

Il team si è accorto di alcune mancanze all'interno del documento _Manuale Utente_ che non permettono una corretta installazione e conseguentemente uso del prodotto.
Perciò sono state allocate risorse nell'ampiamento delle sezioni di installazione e uso, al fine di rimuovere queste lacune.

== Spercifiche Tecniche

Il team ha notato che ci sono dei passaggi ambigui nel passaggio relativo alla discussione dei requisiti soddisfatti. Si sono quindi create delle task con il fine di correggere queste sezioni.

== Dashboard Grafana 

Durante questo sprint, verranno implementate due dashboard: una relativa ai dati grezzi e l'altra al superamento delle soglie. La dashboard dei dati grezzi verrà utilizzata come sistema di filtraggio per i dati generati dai simulatori, consentendo di filtrare sia per i nomi dei sensori che per la loro tipologia. Se ne occupa Riccardo Costantin. La dashboard relativa al superamento delle soglie mostrerà i dati che superano determinati valori, in formato tabellare. Se ne occupa Giacomo D'Ovidio.

== _Piano di Qualifica_

Si è discusso relativamente a dover aggiornare le metriche sia relative alla documentazione che al prodotto, oltre al dover aggiornare lo stato di superamento dei test di sistema e di accettazione.

== MVP

Sono state discusse inoltre un gran numero di modifiche relativamente al prodotto software, per raffinarlo a livello estetico, a livello di efficienza e per renderlo più aderente ai documenti che lo definiscono nei suoi vari aspetti.