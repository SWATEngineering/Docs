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

== Assegnazione dei ruoli
Su proposta dei componenti è stata assegnata questa prima distribuzione dei ruoli:
- Responsabile: Riccardo Toniolo;
- Amministratore: Matteo Rango;
- Analista: Simone Caregnato;
- Analista: Nancy Kalaj;
- Verificatore: Riccardo Costantin;
- Verificatore: Giacomo D'Ovidio.
Per il momento i ruoli di Progettista e Programmatore non sono stati assegnati, in quanto per il momento hanno operatività limitata.

== Verbali degli Stand-Up
Data l'importanza di registrare le decisioni prese durante gli incontri, si è sollevato il dibattito sulla necessità di verbalizzare gli Stand-Up. La decisione è stata quella di verbalizzare esclusivamente gli incontri Stand-Up in cui si affrontano decisioni di particolare rilevanza. Si è concordato che, per prendere una decisione, è necessaria la presenza di almeno 4 membri del team. Pertanto, saranno documentati soltanto gli Stand-Up che coinvolgono almeno 4 componenti, assicurando così la registrazione delle decisioni più significative. Questa prassi dovrà essere aggiunta alle NdP (_Norme di Progetto_) e il compito è stato assegnato a Matteo Rango.

#pagebreak()

== Separazione delle Repository
Per quanto riguarda questo aspetto, abbiamo optato per la suddivisione in due repository distinte: una dedicata al codice, denominata _InnovaCity_, e un'altra per la documentazione, chiamata _Docs_. Questa scelta mira a semplificare la gestione complessiva del progetto e a evitare dispersione all'interno di una singola repository.

== Presentazione del prossimo diario di bordo
Riccardo Toniolo, nel ruolo di Responsabile, si occupa della redazione e della presentazione del prossimo DDB (Diario Di Bordo) in data 13/11/2023.

== Corrispondenza con Sync Lab
A seguito dell'assegnazione del capitolato, si è deciso di contattare l'azienda Sync Lab per chiedere un incontro organizzativo e di chiarimento. L'azienda ha risposto positivamente alla richiesta e ha proposto un incontro in data 10/11/2023 alle ore 10:30. L'incontro si terrà in modalità remota tramite la piattaforma _Google Meet_.

== Modifica del versionamento
Si è deciso di modificare il versionamento del progetto, in risposta ai suggerimenti del committente. Il nuovo versionamento avrà la forma X.Y, dove:
- X viene cambiato una volta che il documento è pronto per la revisione di avanzamento;
- Y viene cambiato ad ogni modifica successiva apportata dai redattori.
La responsabilità della modifica della sezione Versionamento nelle NdP è stata assegnata a Matteo Rango.

== Modifica dei nomi dei documenti
In seguito ai suggerimenti del Committente, si è deciso di modificare i nomi dei documenti, in modo che contengano la versione attuale. Inoltre, sempre sotto suggerimento del Committente, verranno rimosse, dalle tabelle changelog, le entry relative alle revisioni.
#pagebreak()

== Sostituzione note taking system
Attualmente Notion viene utilizzato per prendere note relative ai meeting, all'organizzazione dell'ordine del giorno per questi ultimi, per l'allocazione delle risorse temporali dei componenti e in generale come strumento di condivisione di idee e informazione. Tuttavia, la sua limitatezza a 1000 blocchi, con il piano gratuito attualmente utilizzato, rischia in un futuro di non essere più sufficiente. La responsabilità di trovare un sistema alternativo è stata assegnata a Giacomo D'Ovidio e Riccardo Toniolo.

== Transizione a Typst
Per quanto riguarda la stesura dei documenti, è stata presa la decisione di cambiare il linguaggio utilizzato, passando da LaTeX a Typst. Di seguito sono riportati i motivi di questa scelta:
- La sintassi risulta molto più semplice e rapida da utilizzare, risultando più efficiente rispetto all'attuale _LatTex_;
- La compilazione è molto più rapida rispetto a _LaTeX_ e questo incentiva l'utilizzo delle _GitHub Actions_ per la compilazione automatica dei documenti;
- Aggiunge funzionalità utili all'automazione di alcuni processi di stesura dei documenti, come ad esempio l'ultima versione riportata sul frontespizio;
- Ci permette di mantenere lo stesso risultato estetico, senza perdita di alcuna funzionalità.
La responsabilità della ricreazione dei template in Typst e del conseguente aggiornamento delle NdP viene affidata a Matteo Rango.
#pagebreak()

== Struttura repository _Docs_
La Repository _Docs_ è stata strutturata in modo da mantenere separato il codice Typst per la produzione dei documenti (src) e i documenti pdf prodotti, raccolti nelle cartelle che corrispondono alle milestone. Di seguito viene riportato un esempio della struttura.
- src: (contiene i sorgenti)
    - 1_Candidatura:
        - Verbali:
            - Interni:
                - VerbaleXXX:
                    - main.typ
                    - ...
            - Esterni:
                - VerbaleXXX:
                    - main.typ
                    - ...
- 1_Candidatura (prodotto)
- 2_RTB (prodotto)
- …  (prodotto)
La compilazione dei documenti avviene tramite GitHub Actions e i documenti prodotti vengono caricati nella cartelle corrispondenti.

== Timing Control
Nel corso della discussione, è emersa l'esigenza di implementare un sistema di tracciamento del tempo lavorativo. Questo consentirà di monitorare attentamente le ore di lavoro dedicate dai membri del gruppo. Al fine di ridurre la dispersione tra le piattaforme utilizzate, si sta valutando l'adozione di un sistema unificato, possibilmente sotto forma di un nuovo software che sostituisca l'attuale utilizzo di Notion.

== Bozza di _Analisi dei Requisiti_
Nella riunione è sorta la necessità di avere una bozza dell'_Analisi dei Requisiti_. Questa bozza servirà come punto di partenza per la redazione del documento definitivo e ci preparerà all'incontro con l'azienda in data 10/11. L'obiettivo è iniziare a chiarire alcuni requisiti fondamentali e avere degli spunti di discussione con la Proponente. La bozza verrà redatta da Nancy Kalaj e Simone Caregnato. La stesura verrà effettuata, per il momento, su Notion e si baserà sulla proposta del capitolato e sulle informazioni raccolte durante l'incontro con l'azienda.