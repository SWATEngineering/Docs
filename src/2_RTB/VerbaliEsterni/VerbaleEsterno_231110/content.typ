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

== Argomenti affrontati
Di seguito si riportano gli argomenti affrontati durante la riunione:

=== Durata degli Sprint
L'incontro ha preso avvio con la discussione sulla durata degli Sprint da adottare a partire da oggi in avanti. Il team ha comunicato alla Proponente la decisione interna di optare per Sprint della durata di due settimane, scelta motivata principalmente dalla constatazione che i membri del team non saranno in grado di dedicare al progetto un impegno a tempo pieno. Dunque, l'adozione di periodi di lavoro di due settimane dovrebbe agevolare la pianificazione e il monitoraggio delle attività attraverso incontri dedicati.

Inoltre, dato che i ruoli all'interno del team ruoteranno ad ogni Sprint, una durata media più estesa dovrebbe contribuire a consolidare le responsabilità connesse ai vari ruoli. La Proponente ha espresso la sua approvazione riguardo a tale modalità di lavoro e si è offerta di organizzare incontri periodici alla conclusione di ciascuno Sprint, volti all'analisi di quanto implementato e alla pianificazione dello Sprint successivo.

A titolo di esempio, considerando che il primo Sprint è iniziato oggi, il prossimo incontro sarà fissato per venerdì 24 novembre, a distanza di esattamente due settimane.

=== Strumentazione di lavoro
Nonostante la proposta iniziale di utilizzare Discord avanzata dalla Proponente, durante l'incontro odierno si è optato per l'adozione della piattaforma Element, basata sul protocollo Matrix, come principale strumento di comunicazione. La Proponente ha espresso la volontà di utilizzare Element rispetto ad altre opzioni come Discord o Slack, motivando tale scelta con considerazioni legate alla sicurezza e alla facilità di comunicazione asincrona.

=== Stack tecnologico conosciuto dal team
La Proponente ha manifestato l'interesse di approfondire la conoscenza dello stack tecnologico del team al fine di definire un carico di lavoro adeguato per il completamento del primo Sprint. Durante la discussione, il team ha comunicato alla Proponente la decisione di adottare Python come linguaggio principale per gli script di simulazione dei sensori. Questa scelta è stata motivata dalla preferenza per un linguaggio meno verboso e di apprendimento più agevole rispetto ad altri come Go o Rust, con l'obiettivo di garantire un livello uniforme di padronanza all'interno del team. La Proponente ha approvato questa decisione, sottolineando la necessità di evitare l'introduzione di nuove tecnologie che potrebbero complicare l'apprendimento nel breve periodo e influire negativamente sull'avanzamento del progetto.

=== Obiettivi dello Sprint
Dopo aver comunicato alla Proponente l'intenzione del team di effettuare la prima revisione con il Committente entro il 18 dicembre, sono stati concordati gli obiettivi chiave per il primo Sprint:

- *Documentazione RTB:* Il team si impegna a continuare il lavoro sulla documentazione relativa al _Requirements and Technology Baseline_ (RTB), ponendo particolare attenzione a Norme di Progetto e Analisi dei Requisiti;

- *Implementazione di uno script di simulazione:* Sarà sviluppato uno script in grado di simulare l'attività di uno o più sensori. Lo script emetterà uno stream di dati strutturati, inviandoli a Kafka;

- *Ambiente Containerizzato:* Il team si impegna a realizzare un script Docker Compose che configuri i singoli servizi dell'architettura come _container_ e che definisca le loro connessioni al fine di permettere una più facile gestione e distribuzione delle risorse.

=== Chiarimenti tecnici
La Proponente ha consigliato di sviluppare un singolo script in Python per simulare l'attività di uno o più dispositivi operanti in modalità asincrona. Lo sviluppo di un singolo script è preferibile per la sua semplicità di gestione, uniformità nell'implementazione, maggiore parametrizzazione, efficienza nell'esecuzione e facilità di testing.
In questa fase iniziale, l'attenzione principale sarà sulla struttura e il funzionamento del meccanismo di simulazione, senza necessariamente prestare particolare attenzione al realismo dei dati in uscita. I master data dei dispositivi possono essere definiti all'interno di un file CSV seguendo un formato predefinito che include informazioni anagrafiche come:

- *Nome o ID:* Un identificatore univoco per il dispositivo;
- *Tipologia:* La categoria o la tipologia del dispositivo;
- *Codice di fabbrica:* Un codice che identifica il produttore o la provenienza del dispositivo;
- *Coordinate geospaziali:* Le coordinate geografiche che rappresentano la posizione del dispositivo.

Questi dati anagrafici forniranno una base per la simulazione, consentendo al team di concentrarsi sulla corretta implementazione delle funzionalità asincrone e di creare un primo ambiente di test per il flusso di dati. Successivamente, sarà possibile affinare ulteriormente la simulazione per includere dati più realistici.

=== Analisi dei requisiti
La Proponente suggerisce di avviare una prima fase di analisi dei requisiti concentrandosi sulle esigenze degli utenti. In questo contesto, è essenziale delineare come gli utenti intendano osservare i dati provenienti dai sensori in modalità _near real-time_, analizzarli attraverso operazioni che riflettano query SQL per manipolare il database, e monitorare lo stato attuale dei sensori, tra altre funzionalità.

Successivamente, l'analisi potrebbe estendersi per comprendere requisiti relativi alle prestazioni del sistema, alla qualità dei dati, alle funzioni di auto-affidabilità, alla scalabilità orizzontale e al parallelismo, alla sicurezza, e altri aspetti critici. Si consiglia, quindi, di effettuare una distinzione chiara tra i requisiti utente e quelli applicativi, prestando anche attenzione alla categorizzazione tra requisiti obbligatori e opzionali. Questo approccio garantirà una comprensione approfondita delle aspettative degli utenti e consentirà di definire una _roadmap_ chiara per lo sviluppo del sistema, con priorità chiaramente definite.

=== Contatti con la Proponente
Oltre agli incontri pianificati ogni due settimane per stabilire gli obiettivi dello Sprint successivo, la Proponente offre di organizzare anche incontri di SAL intermedi. La frequenza e la distribuzione di tali incontri saranno adattate alle esigenze del team, consentendo una maggiore flessibilità e la possibilità di affrontare tempestivamente eventuali questioni o necessità emergenti.
