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

== Analisi dei Requisiti

=== Superamento delle soglie

L'incontro si è aperto con una breve discussione riguardo la #glossary[dashboard] contenente tabelle dedicate alla visualizzazione di dati anomali e di dati che hanno superato soglie preimpostate; in particolare, il team ha illustrato l'idea di fare in modo che le soglie siano variabili, ovvero impostabili e modificabili da parte dell'utente. Tale funzionalità potrebbe essere realizzata tramite #glossary[Grafana] variables, che consentirebbero anche di condizionare le notifiche di allerta in base al valore corrente delle soglie. Tuttavia, avendo appreso che l'implementazione di tale funzionalità necessiterebbe di soluzioni che prevedono la modifica del file di configurazione #glossary[Docker Compose] per includere suddette variabili o simili (le variabili non sarebbero direttamente istanziabili all'interno di #glossary[Grafana]), il team ha deciso, su consiglio della Proponente, di mantenere le soglie fisse (ovvero impostate a priori e non modificabili da parte dell'utente). Inoltre, come canale di ricezione delle notifiche si è concordato di utilizzare Discord, dato che sarebbe più semplice da utilizzare rispetto a email, Slack o altro.

=== #glossary[Dashboard] contenente informazioni sul singolo sensore

La discussione si è poi orientata verso la possibilità di implementare una #glossary[dashboard] dedicata alla visualizzazione dei dati pertinenti ad un singolo sensore, a cui si accederebbe cliccando sull'icona di un sensore specifico all'interno della mappa contenente la totalità dei sensori che l'utente visualizza inizialmente. La Proponente ha proposto l'idea di includere una panoramica dello stato del sistema che monitora la città in aggiunta alla mappa all'interno della #glossary[dashboard] iniziale, delineando eventuali superamenti di soglie, lo stato corrente dei sensori e i dati più recenti inviati dai sensori stessi, possibilmente raggruppati in modo opportuno. 

== Progettazione dopo il #glossary[PoC]

Infine, il team ha espresso l'intenzione di utilizzare "Pydantic" (libreria Python che semplifica la validazione e l'analisi dei dati, permettendo di definire in modo dichiarativo la struttura dei dati e di specificarne i vincoli di validazione) all'interno della componente del progetto software che verrà realizzata in Python; la Proponente ha sottolineato come, nonostante questa scelta rientri nelle #glossary[best practice] che sarebbe ideale adottare per migliorare la qualità del prodotto, il team non è tenuto a considerarla, specie se implica il dispendio di risorse che potrebbero essere impiegate per implementare funzionalità aggiuntive. Tuttavia, considerando l'ottica in cui l'uso di Pydantic andrebbe a rafforzare e rendere più rigidi i controlli qualitativi che verranno fatti sui dati generati dai sensori, la scelta di utilizzarlo rimane comunque lecita, sempre che sia giustificata in modo opportuno.
Per quanto riguarda il formato dei dati generati, sarebbe interessante focalizzarsi in particolare sulle coordinate geo-spaziali dei sensori e implementarle come un campo di tipo "GeoJSON" all'interno dei dati stessi, dato che ad oggi è il modo standard di gestire questa tipologia di informazioni. 

L'ultimo punto di discussione è stata la possibilità di introdurre un contesto comune per poter fare in modo che i dati generati dai sensori (che agirebbero in maniera asincrona, ognuno sul proprio thread) possano influenzarsi reciprocamente e si vengano a creare delle correlazioni tra tipologie di dati che emulino la realtà; la Proponente ha suggerito l'adozione di un "burattinaio" a monte in grado di generare e monitorare i dati di un certo tipo per poi scegliere di generare i dati di un tipo potenzialmente correlato al primo in modo sensato, andando a realizzare concretamente la correlazione. Tuttavia, è importante tenere a mente il fatto che i simulatori di dati non fanno formalmente parte del prodotto software finale e, di conseguenza, le risorse da dedicare alla loro realizzazione devono essere pianificate e valutate con attenzione. D'altro canto, nell'ottica di un progetto non esclusivamente didattico, l'implementazione di vere e proprie correlazioni realistiche potrebbe apportare un vantaggio dal punto di vista della presentazione, in quanto consentirebbe al cliente di visualizzare dati che si comportano in modo realistico e, di conseguenza, di comprendere meglio le funzionalità del prodotto finale. 