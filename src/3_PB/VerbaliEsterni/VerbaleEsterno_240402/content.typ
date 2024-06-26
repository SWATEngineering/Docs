#import "meta.typ": inizio_incontro, fine_incontro, luogo_incontro, company
#import "functions.typ": glossary, team
#let participants = csv("participants.csv")
#let participants_company = csv("participants_company.csv")
#show link: underline
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

== Presentazione prodotto software
L'incontro si è aperto con la presentazione del prodotto software da parte del team. Il prodotto, nella sua Release 2.0, è stato presentato esponendo le dashboard sviluppate, ovvero "Ambientale", "Urbanistica", "Dati grezzi" e "Superamento Soglie"; la presentazione ha esposto le funzionalità di ciascuna dashboard e le modalità di utilizzo, concentrandosi in particolare sulle novità introdotte rispetto a quanto presentato alla Proponente nell'incontro precedente. Le novità includevano, in particolare, il miglioramento dell'aspetto visuale delle dashboard, il completamento dei pannelli, l'introduzione del sistema di notifica tramite Discord e l'intera dashboard "Superamento Soglie". I referenti della Proponente hanno espresso apprezzamento per i miglioramenti apportati e hanno valutato positivamente l'impegno del team nella realizzazione della simulazione dei dati in modo realistico e variegato in base al tipo.

#pagebreak()

== Validazione MVP
La Proponente ha espresso piena soddisfazione per il lavoro svolto e attesta che il prodotto soddisfa la definizione di MVP (Regolamento progetto didattico: #link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/PD2.pdf")).

== Conclusione
L'incontro si è concluso con lo scambio di feedback tra il team e la Proponente. Quest'ultima ha espresso apprezzamento per il lavoro svolto dal team, sottolineando la qualità del prodotto sviluppato e la professionalità dimostrata. Il team ha ringraziato la Proponente per la collaborazione, sottolineando l'importanza del confronto e del supporto ricevuto. Infine, su richiesta della Proponente, il gruppo ha condiviso suggerimenti per il miglioramento dei progetti da proporre per il corso in futuro, indicando i punti di forza e gli aspetti migliorabili di "InnovaCity". 

Tra i punti di forza sono stati menzionati l'interesse suscitato nel team da parte dell'ambito di applicazione del progetto (big data e data streaming), le tecnologie utilizzate che, essendo molto diffuse, risultano sicuramente utili da includere nel proprio bagaglio formativo e il supporto ricevuto dalla Proponente. Tra gli aspetti migliorabili, invece, è stato consigliato di proporre un progetto che comporti una parte di codifica più ampia e strutturata; questo anche per permettere che, nel contesto dell'insegnamento di Ingegneria del Software, si possano approfondire maggiormente architetture e design pattern nel corso della progettazione. La Proponente ha accolto con favore i suggerimenti, indicando che una possibile evoluzione per i progetti degli anni successivi potrebbe includere l'aggiunta di un layer di data processing in modo da sopperire a questa necessità.