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

== Controllo Ortografico
Durante l'incontro, uno dei punti centrali è stato l'introduzione di un sistema automatizzato per il controllo ortografico all'interno della repository. Il team procederà con una fase di valutazione per determinare quale strumento possa risultare più idoneo.

== Gestione delle issue
È emersa una proposta significativa per la gestione delle attività con maggior efficienza: creare issue al manifestarsi delle necessità, svolgendo anche tutto il lavoro di assegnazione delle priorità, delle grandezze, sia durante le riunioni, sia durante gli stand-up. Inoltre è stato creato il nuovo tag "Ruolo" all'interno delle issue al fine di agevolare coloro responsabili di quella attività. La decisione è stata accolta positivamente dai partecipanti, che hanno visto in questa pratica un modo per ottimizzare il tempo durante le riunioni.

== Tecnologie
La tecnologia "Pydantic" per il linguaggio Python è stata riconosciuta come parte integrante per l'MVP, in modo da semplificare la verifica e la validazione del software, anche attraverso l'ampio uso di type hints, facilitando la dichiarazione e l'uso di tipi di dati all'interno del codice.

== Gestione del tempo
È stata presa un'altra significativa decisione riguardo l'adozione dell'assegnazione delle ore in multipli di trenta minuti (0.5 h), all'interno del foglio condiviso di time tracking, con l'obiettivo di evitare complicazioni non necessarie e garantire una gestione più precisa del tempo.
A questo si collega lo sviluppo di un'automazione in grado di aggiornare il _Piano di Progetto_ secondo quanto svolto dal team durante gli sprint. Oltre che a far risparmiare tempo ai Responsabili e agli Amministratori, questo script comporterà un notevole vantaggio in termini di sicurezza nell'elaborazione dei calcoli del consuntivo.

== Terminologia
Una discussione è stata condotta per esaminare la terminologia utilizzata nei documenti, e si è raggiunto un consenso sull'adozione del termine "Verificatore" anziché "Revisore", per essere più consistenti in tutti i documenti.

== Assegnazione dei ruoli
Su proposta dei componenti e a seguito di quanto indicato precedentemente, è stata assegnata la seguente distribuzione dei ruoli:
- Simone Caregnato: Amministratore, Analista;
- Riccardo Costantin: Programmatore, Verificatore;
- Giacomo D'Ovidio: Amministratore, Verificatore;
- Nancy Kalaj: Amministratore;
- Matteo Rango: Responsabile, Amministratore;
- Riccardo Toniolo: Verificatore, Amministratore. 