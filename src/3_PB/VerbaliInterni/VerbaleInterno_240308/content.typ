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
Nell'incontro si è discussa l'organizzazione del lavoro futuro, di seguiti si ne riportano i momenti salienti. 

== Nuovi ruoli
Vengono stabiliti i seguenti i nuovi incarichi relativi allo sprint corrente:
- Caregnato Simone: Progettista, Programmatore;
- Costantin Riccardo Alberto: Programmatore, Verificatore; 
- D'Ovidio Giacomo: Responsabile, Programmatore; 
- Kalaj Nancy: Programmatore, Verificatore; 
- Rango Matteo: Programmatore, Amministratore; 
- Toniolo Riccardo: Programmatore, Amministratore.

Per questo sprint il team ha deciso di continuare la codifica di quanto progettato. A differenza dello sprint precedente l'attività di progettazione in questo sprint ricopre un ruolo più marginale. Di conseguenza si è valutato come opportuno assegnare a tutti i membri il ruolo di programmatore.

== Aggiornamento metriche PdQ
Durante lo scorso incontro si era deciso di adottare delle nuove metriche per il processo di fornitura, durante l'incontro si è nuovamente risollevata la discussione a riguardo e dopo una breve discussione, il #team ha ritrattato tale decisione.
Il team ha infatti considerato che, allo stato attuale del progetto, l'attenzione del processo di gestione della qualità fosse da rivolgere al prodotto e più in generale alla codifica dello stesso e che le metriche di fornitura attualmente valutate siano consistenti. 
Inoltre si è considerato che alla luce dell'attuale pianificazione, tali metriche potrebbero essere utili solo nella pianificazione dei pochi sprint mancanti, e che, tralatro, il team avrebbe poco tempo per imparare ad utilizzarle in maniera efficace. 

Inoltre si è deciso che le metriche per la qualità di codifica e quelle per la qualità del prodotto saranno calcolate ufficialmente a partire dallo sprint attuale, utilizzando gli strumenti configurati durante lo sprint attuale secondo le modalità normate nelle Norme di Progetto.

== Codifica della componente di simulazione
Durante lo sprint attuale il team vuole completare la codifica del componente di simulazione compresi i test corrispondenti. Si elencano di seguito i simulatori mancanti e i membri dei team che se ne occuperanno: 
colonne di ricarica: Giacomo D'Ovidio; 
biciclette elettriche: Nancy Kalaj;
zone ecologiche: Riccardo Alberto Costantin; 
parcheggi: Matteo Rango; 
congestione stradale: Simone Caregnato.

== Inizio stesura del manuale utente
Il Responsabile ha indirizzato l'attenzione del team sulla necessità di iniziare la stesura del documento Manuale Utente durante questo sprint.
Si è deciso che la stesura del documento sarebbe iniziata Lunedì. 
Durante il weekend ogni Programmatore si informerà sui contenuti che ci si aspetta vengano illustrati in tale documento.

== Rimozione di Pydantic
Nel corso della valutazione delle nostre attuali librerie e strumenti in uso, il team ha preso in considerazione la complessità associata all'utilizzo di Pydantic per la componente in Python. 
Di conseguenza, si è deciso di rimuovere Pydantic dal nostro stack tecnologico, se ne occuperà Riccardo Toniolo. 

== Incontri con la Proponente 
Il team ha riconosciuto l'importanza di riprendere un contatto più stretto con l'azienda proponente. 
A seguito della decisione di non intraprendere la fase CA, risulta di fondamentale importanza per il team arrivare alla PB con un MVP e ricevere un maggiore quantitativo di feedback risulta fondamentale per persistere tale obiettivo. 

== Incontro con il professor Cardin 
Altro requisito fondamentale per terminare la fase PB entro quanto pianificato è che l'architettura presentata nel documento Specifiche Tecniche incontri il favore del professor Cardin. 
Perciò si è deciso di organizzare un incontro in cui mostrare i progressi del documento e ottenere un feedback a riguardo. 
Si spera di poter effettuare tale incontro durante lo sprint corrente, così da avere due sprint per poter applicare eventuali correzioni.

