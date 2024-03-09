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

= Sintesi Elaborazione Incontro
Nell'incontro si è discussa l'organizzazione del lavoro futuro, di seguito se ne riportano i momenti salienti. 

== Nuovi ruoli
Vengono stabiliti i seguenti i nuovi incarichi relativi allo sprint corrente:
- Caregnato Simone: Progettista, Programmatore;
- Costantin Riccardo Alberto: Programmatore, Verificatore; 
- D'Ovidio Giacomo: Responsabile, Programmatore; 
- Kalaj Nancy: Programmatore, Verificatore; 
- Rango Matteo: Programmatore, Amministratore; 
- Toniolo Riccardo: Programmatore, Amministratore.

Per questo sprint il team ha deciso di continuare la codifica di quanto progettato. A differenza dello sprint precedente, l'attività di progettazione ricopre al momento un ruolo più marginale. Di conseguenza, si è valutato opportuno assegnare a tutti i membri il ruolo di Programmatore.

== Aggiornamento metriche PdQ
Nonostante in precedenza si fosse deciso di adottare delle nuove metriche per il processo di fornitura, durante l'incontro odierno il team #team ne ha discusso nuovamente e ha ritrattato tale decisione.
Il team ha infatti considerato che, allo stato attuale del progetto, sarebbe bene spostare l'attenzione dedicata al processo di gestione della qualità al prodotto vero e proprio e, più in generale, alla codifica dello stesso; inoltre, le metriche di fornitura attualmente utilizzate e valutate sembrano  comportarsi come ci si aspetta. 
Inoltre, si è considerato che alla luce dell'attuale pianificazione, tali metriche risulterebbero utili solo per la pianificazione dei pochi sprint mancanti e che, tra l'altro, il team avrebbe poco tempo per imparare ad utilizzarle in maniera efficace. 

Infine, si è deciso che le metriche per la qualità di codifica e quelle per la qualità di prodotto saranno calcolate ufficialmente a partire dallo sprint attuale, utilizzando gli strumenti configurati secondo le modalità normate nelle _Norme di Progetto_.

== Codifica della componente di simulazione
Durante lo sprint attuale il team vuole completare la codifica del componente di simulazione compresi i test corrispondenti. Si elencano di seguito i simulatori mancanti e i membri dei team che se ne occuperanno: 
- Colonne di ricarica: Giacomo D'Ovidio; 
- Biciclette elettriche: Nancy Kalaj;
- Zone ecologiche: Riccardo Alberto Costantin; 
- Parcheggi: Matteo Rango; 
- Congestione stradale: Simone Caregnato.

== Inizio stesura del _Manuale Utente_
Il Responsabile ha indirizzato l'attenzione del team sulla necessità di iniziare la stesura del documento _Manuale Utente_ durante questo sprint.
Si è deciso che la stesura del documento inizierà a partire da lunedì. 
Durante il weekend ogni Programmatore si informerà sui contenuti che ci si aspetta vengano illustrati in tale documento.

== Rimozione di Pydantic
Nel corso della valutazione delle librerie e strumenti attualmente in uso, il team ha preso in considerazione la complessità associata all'utilizzo di Pydantic per la componente di simulazione scritta in Python. 
Di conseguenza, si è deciso di rimuovere Pydantic dallo stack tecnologico e se ne occuperà Riccardo Toniolo. 

== Incontri con la Proponente 
Il team ha riconosciuto l'importanza di riprendere un contatto più stretto con l'azienda proponente. 
A seguito della decisione di non intraprendere la terza revisione CA, risulta di fondamentale importanza per il team arrivare alla seconda revisione PB con un MVP che soddisfi le esigenze della Proponente; è chiaro che per raggiungere tale obiettivo, ricevere più feedback da parte di quest'ultima risulta fondamentale. 

== Incontro con il professor Cardin 
Altro requisito fondamentale per essere pronti a sostenere la PB entro quando pianificato è che l'architettura presentata nel documento _Specifiche Tecniche_ incontri il favore del professor Cardin. 
Perciò si è deciso di organizzare un incontro in cui mostrare i progressi del documento e ottenere un feedback a riguardo. 
Si spera di poter effettuare tale incontro durante lo sprint corrente, così da avere due sprint per poter applicare eventuali correzioni.

