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
Di conseguenza si è deciso di allocare risorse nella correzione del prodotto ove necessario e nella chiarificazione del documento _Analisi dei Requisiti_ dove la chiarezza non risulta sufficiente.

== Manuale Utente

Sono state rilevate alcune mancanze nel processo di installazione illustrato all'interno del documento _Manuale Utente_ e che dunque non consentirebbero all'utente di poter installare e utilizzare il prodotto. 
Perciò sono state allocate risorse nell'ampiamento delle sezioni di installazione e uso, al fine di rimuovere queste lacune.

== Spercifiche Tecniche

Il team ha rilevato alcune ambiguità nella sezione relativa al tracciamento dei requisiti soddisfatti. Viene creata una task in modo tale da poter risolvere tali ambiguità.

== Grafana 

 Sono stati rilevati alcuni problemi relativi alla componente Grafana: il primo relativo alla tabella dei dati grezzi la seconda relativa alla componente di notifica. La dashboard dei dati grezzi infatti risulta al momento troppo caotica e di difficile consultazione. Se ne occupa Riccardo Costantin. La componente di notifica di Grafana invece risulta particolarmente ostica e sta richiedendo  più risorse di quanto previsto. Alla luce del fatto che tale componente sia comunque il frutto di un requisito desiderabile permette al team di non preoccuparsene eccessivamente. Se ne occupa Giacomo D'Ovidio.

== _Piano di Qualifica_

Si è discusso relativamente a dover aggiornare le metriche sia relative alla documentazione che al prodotto, oltre al dover aggiornare lo stato di superamento dei test di sistema e di accettazione.

== MVP

Sono state discusse inoltre un gran numero di modifiche relativamente al prodotto software, per raffinarlo a livello estetico, a livello di efficienza e per renderlo più aderente ai documenti che lo definiscono nei suoi vari aspetti.