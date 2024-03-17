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

Nell'incontro si è discussa l'organizzazione del lavoro futuro, di seguito se ne riportano i momenti salienti. 

== Nuovi ruoli

Vengono stabiliti i seguenti i nuovi incarichi relativi allo sprint corrente:
- Caregnato Simone: Amministratore, Progettista, Programmatore, Verificatore;
- Costantin Riccardo Alberto: Responsabile, Programmatore; 
- D'Ovidio Giacomo: Programmatore, Verificatore; 
- Kalaj Nancy: Programmatore, Verificatore, Progettista; 
- Rango Matteo: Verificatore, Amministratore; 
- Toniolo Riccardo: Verificatore.

== Test di integrazione 

Durante la riunione odierna, si è sollevata la questione dell'organizzazione dei test di integrazione e dell'effettiva utilità di questo processo all'interno del nostro progetto. Tuttavia, non si è giunta a una conclusione definitiva in merito, e la discussione è stata rimandata per consentire un'ulteriore valutazione. È stato evidenziato il bisogno di approfondire il ruolo dei test di integrazione nel contesto specifico del nostro progetto, valutando attentamente i potenziali benefici e svantaggi di questa pratica.

== Modifiche all'_Analisi dei Requisiti_

È stata discussa una modifica all'_Analisi dei requisiti_, riguardante la terminologia utilizzata per riferirsi alla sezione relativa alla visualizzazione della tabella relativa ai sensori. Si è deciso di modificare il termine "Dashboard Sensori" in "Dati grezzi". Se ne occupano i futuri Analisti.

== Norme di progetto: _Manuale Utente_

Si è deciso di aggiungere alle _Norme di Progetto_ la sezione riguardante il _Manuale Utente_. Questa sezione ha il duplice scopo di fungere da guida e di fornire una struttura organizzativa per lo sviluppo del documento. Nancy Kalaj si occupa sia di normarne la struttura e i contenuti all'interno delle _Norme di Progetto_, che di procedere con la stesura iniziale del documento vero e proprio, riflettendo le funzionalità attualmente implementate all'interno della dashboard di visualizzazione Grafana.


== Mypy

È stata discussa l'introduzione di MyPy nell'attività di codifica (in sostiuzione di Pydantic) ma è stata presa la decisione di non procedere con tale implementazione. Si è ritenuto che l'introduzione di MyPy potesse aggiungere complessità senza fornire vantaggi significativi nel contesto attuale del progetto.

== Incontro con Cardin 

Si è deciso di pianificare un incontro con il Professor Cardin la prossima settimana, per risolvere alcuni dubbi sul documento _Specifiche Tecniche_.



