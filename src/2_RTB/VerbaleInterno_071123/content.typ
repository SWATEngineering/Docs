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
- Verificatore: Riccardo Constantin;
- Verificatore: Giacomo D'Ovidio;
Per il momento i ruoli di Progettista e Programmatore non sono stati assegnati, in quanto non sono significativi per questa fase di progetto.

== Verbali degli Stand-Up
Dato l'importanza di registrare le decisioni prese durante gli incontri, si è sollevato il dibattito sulla necessità di verbalizzare gli Stand-Up. La decisione è stata quella di verbalizzare solo gli incontri in cui sono presenti quattro o più partecipanti, che quindi coinvolgano la maggior parte del gruppo di lavoro; questo perché si tratterà di incontri più importanti, in cui si prenderanno decisioni più rilevanti. Questa prassi dovrà essere aggiunta alle #glossary("NdP") e il compito è stato assegnato a Matteo Rango.

#pagebreak()

== Separazione delle Repository
Per quanto riguarda questo aspetto, abbiamo optato per la suddivisione in due repository distinte: una dedicata al codice, denominata _InnovaCity_, e un'altra per la documentazione, chiamata _Docs_. Questa scelta mira a semplificare la gestione complessiva del progetto e a evitare dispersione all'interno di una singola repository.

== Presentazione del prossimo diario di bordo
Riccardo Toniolo, nel ruolo di responsabile, presenterà il prossimo #glossary("DDB") in data 13/11/2023. Per quanto riguarda la sua redazione viene presa in carico da Matteo Rango.

== Corrispondenza con Sync Lab
A seguito dell'assegnazione del capitolato, si è deciso di contattare l'azienda Sync Lab per chiedere un incontro organizzativo e di chiarimento. L'azienda ha risposto positivamente alla richiesta e ha proposto un incontro in data 10/11/2023 alle ore 10:00. L'incontro si terrà in modalità remota tramite la piattaforma _Google Meet_.

== Modifica del versionamento
Si è deciso di modificare il versionamento del progetto, in risposta ai suggerimenti del committente. Il nuovo versionamento avrà la forma X.Y, dove:
- X viene cambiato una volta che il documento è pronto per la revisione di avanzamento;
- Y viene cambiato ad ogni modifica successiva apportata dai redattori.
La responsabilità della modifica delle sezione Versionamento nelle #glossary("NdP") è stata assegnata a Matteo Rango.

== Modifica dei nomi dei documenti
In seguito ai suggerimenti del committente, si è deciso di modificare i nomi dei documenti, in modo che contengano la versione attuale. Per coerenza, verranno rinominati i documenti pertinenti alla candidatura. Inoltre, sempre sotto suggerimento del committente, verranno rimosse, dalle tabelle change log, le entry relative alle revisioni. La modifica dei nomi, oltre che il riadattamento dei documenti al nuovo sistema di versionamento e la modifica dei change log, saranno attuati da Nancy Kalaj.
#pagebreak()

== Sostituzione note taking system
Attualmente il Notion condiviso viene utilizzato per prendere note relative ai meeting, all'organizzazione dell'_ordine del giorno_ per questi ultimi e per l'allocazione delle risorse temporali dei componenti. Tuttavia, la sua limitatezza a 1000 _blocchi_, con il piano gratuito attualmente utilizzato, rischia in un futuro di non essere più sufficiente. Per questo motivo è stata aperta una issue sul nostro ITS, che ha lo scopo di trovare un sistema valido che possa sostituirlo. La responsabilità di trovare un sistema alternativo è stata assegnata a Giacomo D'Ovidio e Riccardo Toniolo.

== Transizione a Typst
Per quanto riguarda la stesura dei documenti, si è stabilito il cambiamento dal linguaggio _LaTex_ a _Typst_. Di seguito sono riportati i motivi di questa scelta:
- la sintassi risulta molto più semplice e rapida da utilizzare, risultando più efficiente rispetto all'attuale _LatTex_;
- la compilazione è molto più rapida rispetto a _LaTex_ e questo incentiva l'utilizzo delle _GitHub Actions_ per la compilazione automatica dei documenti;
- aggiunge funzionalità utili all'automazione di alcuni processi di stesura dei documenti, come ad esempio l'ultima versione riportata sul frontespizio;
- ci permette di mantenere lo stesso risultato estetico, senza perdita di alcuna funzionalità.
La responsabilità della ricreazione dei template in _Typst_ e del conseguente aggiornamento delle #glossary("NdP") viene affidata a Matteo Rango.
#pagebreak()

== Struttura repository _Docs_
La Repository _Docs_ è stata strutturata in modo da manetenere separato il codice _Typst_ per la produzione dei documenti (_src_) e i documenti pdf prodotti, raccolti nelle cartelle che corrispondono alle milestone. Di seguito viene riportato un esempio della struttura.
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
La compilazione dei documenti avviene tramite _GitHub Actions_ e i documenti prodotti vengono caricati nella cartelle corrispondenti.

== Timing Control
Nel corso della discussione, è emersa l'esigenza di implementare un sistema di tracciamento del tempo lavorativo. Questo consentirà di monitorare attentamente le ore di lavoro dedicate dai membri del gruppo. Al fine di ridurre la dispersione tra le piattaforme utilizzate, si sta valutando l'adozione di un sistema unificato, possibilmente sotto forma di un nuovo software che sostituirà l'attuale utilizzo di Notion.

== Bozza di _Analisi dei Requisiti_
Viene redatta una bozza di _Analisi dei Requisiti_, in modo da avere un documento di partenza per la stesura del documento vero e proprio. La bozza verrà redatta da Nancy Kalaj e Simone Caregnato. La stesura verrà effettuata, per il momento, su Notion e si baserà sulla proposta del capitolato e sulle informazioni raccolte durante l'incontro con l'azienda.