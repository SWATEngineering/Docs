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

Durante l'incontro odierno sono state prese le seguenti decisioni organizzative
e trattati i seguenti punti.

== Prossimo diario di bordo (\#10)
Riccardo Toniolo si occuperà della sua stesura mentre Matteo Rango di esporlo
durante la presentazione.

== Chiarimento dubbi progettazione
Riccardo Toniolo e Giacomo D'Ovidio si occuperanno di contattare per email il professor
Cardin per chiarire dubbi relativi alla progettazione, in particolare:
- Se applicare design patterns ai simulatori;
- Come impostare il diagramma UML delle classi;
- Se considerare o meno i simulatori nell'ottica di metriche relative al codice e/o ai test.

== Stesura del verbale odierno
Matteo Rango si occuperà della stesura del verbale odierno.

== Script consuntivi
Riccardo Toniolo si occuperà di sistemare lo script per i consuntivi automatico che usa il
documento interno "Time & Resource Manager", in vista della nuova organizzazione degli sprint
e con l'incorrere del nuovo anno.

== Stand-up remoti
Si è deciso all'unanimità di effettuare stand-up meeting remoti tutti i lunedì ed i mercoledì alle
ore 15:00 a partire da lunedì 19/02/2024.

== Sistemazione documento "Analisi dei Requisiti"
Riccardo Costantin è incaricato di sistemare il documento _Analisi dei Requisiti_ secondo le
indicazioni dateci dal professor Cardin durante la revisione RTB.

== Creazione spazio PB
Riccardo Costantin è incaricato di creare la cartella per i documenti relativi alla revisione PB
e di spostare i relativi documenti già creati.

== Altre discussioni
Sono state fatte altre discussioni relative al come e quando calcolare le metriche relative ai
consuntivi di periodo e come incorporarle in questi ultimi. In merito a questo è stato deciso di
implementare l'attività di chiusura dello sprint alle 17:30 del giovedì, utilizzando i seguenti passaggi:
- Calcolare le metriche relative allo sprint concluso e aggiornare i grafici del _Piano di Qualifica_;
- Assicurarsi che tutti abbiano immesso le loro ore produttive nel documento interno "Time & Resource Manager" per calcolare le tabelle del consuntivo.

In seguito, si è deciso di studiare il contenuto da inserire nel documento _Specifiche Tecniche_, in particolare:
- Architetture layered (a strati) ed event-driven;
- "Pipes & filters".

== Nuovi ruoli
Di seguito un elenco con i nuovi incarichi per lo sprint in corso:
- Caregnato Simone, Verificatore;
- Costantin Riccardo Alberto, Analista e Amministratore;
- D'Ovidio Giacomo, Progettista;
- Kalaj Nancy, Verificatore;
- Rango Matteo, Responsabile;
- Toniolo Riccardo, Progettista.
