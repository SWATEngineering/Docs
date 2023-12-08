#import "functions.typ": glossary, team

/*************************************/
/*    INSERIRE SOTTO IL CONTENUTO    */ 
/*************************************/

= Introduzione

== Scopo del Documento
Il presente documento ha come scopo la definizione delle #glossary[best practices] e del #glossary[way of working] che ogni componente del team #team ha l'obbligo di rispettare durante l'intero svolgimento del progetto. In questo modo si prova a garantire un metodo di lavoro omogeneo, verificabile e migliorabile nel tempo. La formulazione delle norme avviene in modo progressivo, consentendo al team di apportare aggiornamenti continui in base alle attività e agli strumenti di utilizzo concordati nel corso del lavoro.

== Scopo del progetto
Il progetto "InnovaCity" si concentra sulla creazione di una dashboard intuitiva che permetta a personale amministrativo di monitorare e analizzare il continuo sviluppo di una #glossary[smart city]. L'applicazione comprende una #glossary[data pipeline] progettata per elaborare dati provenienti da una varietà di simulatori di sensori. Questa pipeline consente la gestione e la visualizzazione ottimale di tali dati, permettendo agli utenti di ottenere rapidamente informazioni rilevanti. L'obiettivo finale è fornire uno strumento per prendere decisioni informate riguardo alla gestione delle risorse della città.

== Glossario
Al fine di evitare possibili ambiguità relative al linguaggio utilizzato nei documenti, viene
fornito il _Glossario_, nel quale sono presenti tutte le definizioni di termini aventi un significato specifico che vuole essere disambiguato. Tali termini, sono scritti in _corsivo_ e marcati con una #sub("G") a pedice.
Un'attività che comprende l'inserimento di un termine di glossario può considerarsi conclusa, nella sua interezza, solo nel momento in cui il termine viene scritto e spiegato nel _Glossario_.

== Riferimenti

=== Riferimenti normativi
        - Capitolato d'appalto C6 - InnovaCity:
        https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C6.pdf

=== Riferimenti informativi
        - Documentazione git:
        https://git-scm.com/docs
        - Documentazione GitHub:
        https://docs.github.com/en
        - Materiale didattico del corso Metodi e Tecnologie per lo Sviluppo Software 2022/2023:
        https://stem.elearning.unipd.it/course/view.php?id=5359
                - Lezione 4: GIT;
                - Laboratorio 2: GitHub Version Control System.
        - Documentazione Typst:
        https://typst.app/docs

#pagebreak()

= Processi Primari

== Fornitura

=== Descrizione e scopo

Il processo di fornitura si propone di dettagliare le attività del fornitore per comprendere e soddisfare le richieste della Proponente.
Dopo la completa comprensione delle esigenze, il fornitore, in collaborazione con la Proponente, stabilisce tramite contratto la data di consegna del prodotto. Successivamente, viene redatto il Piano di Progetto per pianificare dettagliatamente le varie attività da svolgere, garantendo un chiaro processo di sviluppo del prodotto finale. L'obiettivo principale è soddisfare in modo chiaro le richieste della Proponente evitando possibili incomprensioni attraverso una collaborazione continua.

Il processo si articola in diverse fasi:

        - Definizione chiara dei requisiti soddisfatti dal prodotto finale;
        - Contrattazione, durante la quale ci si propone di: 
                + Richiedere incontri di formazione sulle tecnologie consigliate per ottimizzare lo sviluppo;
                + Ottenere _feedback_ approfondito sull'utilizzo delle tecnologie proposte.
        - Pianificazione: consiste nell'individuare a priori una ripartizione esatta di tutte le ore produttive a disposizione con conseguente stima dei costi per ciascun incremento di lavoro (sprint);
        - Esecuzione: la progettazione e il conseguente sviluppo del prodotto vengono svolti parallelamente alla stesura della documentazione relativa al progetto;
        - Continuo controllo e verifica;
        - Completamento e consegna.

=== Rapporti con la Proponente
La Proponente si è resa disponibile attraverso vari canali, come e-mail, _Google Meet_ e _Element_, per stabilire una comunicazione frequente e risolvere prontamente eventuali dubbi o domande che possono emergere durante lo svolgimento del progetto. Sin dall'inizio è stato concordato di organizzare incontri regolari, in particolare al termine di ciascuno sprint, fissati per il venerdì alle 10:30. Questi incontri assumono la forma di una sessione di _Sprint Review_, in cui il team esibisce quanto prodotto e ottiene _feedback_ sull'andamento del lavoro.

Gli incontri con la Proponente si suddividono principalmente in tre categorie:

        - Incontri di formazione: utilizzati per acquisire familiarità con nuove tecnologie, approfondire determinati concetti o migliorare competenze specifiche richieste dal progetto;
        - Incontri di analisi dei requisiti: mirati a chiarire, discutere e validare i requisiti del progetto, garantendo una comprensione chiara e condivisa tra il team e la Proponente;
        - Sprint Review: momenti conclusivi di ciascuno sprint in cui vengono presentati i risultati ottenuti, con l'obiettivo di ricevere _feedback_ da parte della Proponente.

Ogni incontro con la Proponente sarà sintetizzato e documentato all'interno del Verbale Esterno di riferimento. Il verbale verrà successivamente presentato alla Proponente per essere validato tramite firma, ottenendo in tal modo un'approvazione formale del resoconto delle discussioni avvenute all'incontro.

=== Documentazione fornita
Di seguito si elencano i documenti che il team #team si impegna a consegnare ai Committenti Prof. Tullio Vardanega e Prof. Riccardo Cardin e alla Proponente Sync Lab.

==== Analisi dei Requisiti
L’analisi dei requisiti, svolta dagli Analisti, costituisce una fase cruciale nello sviluppo del sistema software. Il suo obiettivo principale è definire in dettaglio le funzionalità necessarie affinché il prodotto soddisfi pienamente le richieste della Proponente. Il documento omonimo comprenderà una serie di elementi essenziali:

        - Descrizione e scopo del prodotto;
        - *Definizione degli attori*: entità o persone che interagiscono con il #glossary[sistema];
        - *Definizione dei casi d'uso*: rappresentazione narrativa di scenari specifici che descrivono come gli attori interagiscono con il sistema. I casi d'uso offrono una visione chiara delle azioni che possono essere eseguite all'interno del sistema e come gli utenti interagiscono con esso; un elenco preciso di azioni intraprese dall'attore per provocare un determinato caso d'uso viene fornito all'interno dello stesso, in modo da facilitare l'estrazione dei requisiti corrispondenti;
        - *Definizione di requisiti*: individuazione dei requisiti obbligatori e desiderabili e loro categorizzazione in:
                - Requisiti funzionali: specificano le operazioni che il sistema deve essere in grado di eseguire;
                - Requisiti di qualità: riguardano gli aspetti di qualità del software, inclusi gli attributi prestazionali, affidabilità, usabilità e sicurezza;
                - Requisiti di vincolo: delineano vincoli e limitazioni che il sistema deve rispettare. Possono includere restrizioni tecnologiche, normative o di risorse.

==== Piano di Progetto

Documento redatto dal Responsabile che offre una visione dettagliata dell'intero processo di sviluppo di un progetto, fornendo al team coinvolto una guida approfondita per mantenere l'allineamento con gli obiettivi, gestire le risorse in modo efficace e affrontare le sfide che potrebbero emergere durante lo sviluppo del progetto.

Si compone di:

        - *Analisi dei rischi*: identifica, valuta e gestisce i potenziali rischi che potrebbero influenzare il successo del progetto; è  essenziale per consentire al team di adottare misure preventive. I rischi vengono categorizzati in rischi tecnologici, di comunicazione e di pianificazione e per ogni rischio si compie un analisi mirata ad individuarne i segnali di manifestazione, valutarne l'occorrenza e la pericolosità, pianificare strategie di mitigazione e valutare l'efficacia di tali strategie nel contenere gli effetti del rischio in esame;
        - *Modello di sviluppo*: approccio metodologico che viene scelto per guidare il processo di sviluppo del prodotto; definisce la struttura di lavoro che sarà seguita durante l'intero ciclo di vita del progetto. Avendo adottato il modello di sviluppo agile Scrum, questa sezione descrive le pratiche e gli eventi principali del _framework_ per come vengono utilizzati ed implementati da parte del team;
        - *Pianificazione*: fornisce una roadmap dettagliata delle attività, delle risorse, e delle scadenze associate al progetto; in particolare, vengono pianificate le attività necessarie per raggiungere gli obiettivi previsti per ogni sprint dall'inizio al termine del progetto e la loro distribuzione temporale;
        - *Preventivo*: a partire dalla pianificazione eseguita a priori, determina la ripartizione delle ore produttive a disposizione di ogni componente del team nei vari ruoli per ogni sprint, in modo da garantire il raggiungimento degli obiettivi prefissati e un utilizzo accorto delle risorse; la ripartizione delle ore determina anche il costo preventivato per ogni sprint;
        - *Consuntivo*: a partire dalla rendicontazione delle ore produttive impiegate da ciascun componente del team eseguita a posteriori, determina la ripartizione effettiva delle ore osservata durante lo sprint e, di conseguenza, anche il costo effettivo; inoltre, viene eseguita una breve analisi a posteriori per motivare le scelte eseguite nel preventivo, evidenziare eventuali discostamenti e delineare i cambiamenti nella strategia utilizzata per pianificare il resto del lavoro, qualora dovessero rendersi necessari.
        
==== Piano di Qualifica

Documento che descrive le strategie e gli approcci adottati per garantire la qualità del prodotto o del servizio che si sta sviluppando. Il suo scopo principale è quello di definire le modalità di verifica e validazione, nonché gli standard e le procedure di qualità che verranno seguite durante l'intero ciclo di vita del progetto.

È caratterizzato da:

        - *Qualità di processo*: standard e procedure adottate per garantire la qualità durante lo sviluppo del progetto. Informazioni sulle attività di gestione della qualità, le metodologie utilizzate, e come vengono misurati e migliorati i processi stessi;
        - *Qualità di prodotto*: standard, specifiche e caratteristiche che il prodotto deve soddisfare per essere considerato di qualità. Include anche le metriche e i criteri di valutazione utilizzati per misurare la qualità del prodotto;
        - *Specifiche dei test*: specifiche dettagliate dei test che verranno condotti durante lo sviluppo del progetto;
        - *Resoconto e valutazioni*: resoconto delle attività svolte e delle valutazioni effettuate durante il progetto. Utili per capire come il progetto si sta sviluppando rispetto agli obiettivi e alle aspettative, e per identificare eventuali azioni correttive necessarie.

==== Glossario
Il Glossario funge da catalogo esaustivo che raccoglie i termini tecnici impiegati all'interno del progetto, offrendo definizioni chiare e precise. Questo documento non solo previene fraintendimenti e ambiguità ma favorisce anche una comprensione condivisa della terminologia propria del settore, migliorando la coerenza e la qualità della documentazione prodotta. Inoltre, contribuisce a garantire un allineamento efficace tra tutti i partecipanti al progetto, consentendo un flusso di lavoro più efficiente e risultati più accurati.

==== Lettera di Presentazione
La Lettera di Presentazione accompagna la consegna del prodotto software e della documentazione pertinente ad ogni revisione e sottolinea l'impegno che il team #team si assume nel completare e consegnare il prodotto entro le scadenze concordate. Inoltre, espone un preventivo aggiornato rispetto a quello presentato in occasione dell'ultima revisione, dove costo e data di consegna del progetto vengono analizzati rispetto all'andamento corrente e confermati, o eventualmente modificati, in seguito a scelte ragionate.

=== Strumenti
Gli strumenti adottati per agevolare il processo di fornitura sono i seguenti:

==== Google Calendar
Strumento di calendario, utilizzato dal team per gestire impegni e attività in modo organizzato, oltre che per condividere eventi con la Proponente.

==== Google Slides
Servizio di creazione di presentazioni multimediali, utilizzato dal team per assemblare i diari di bordo.

==== Google Sheets
Servizio di creazione di _spreadsheet_, utilizzato dal team per la rendicontazione delle ore produttive impiegate da ciascun componente nel corso di uno sprint.

==== Google Meet
Servizio per creare e partecipare a videochiamate, utilizzato dal team per gli incontri telematici con la Proponente.

==== Online Gantt
Online software per creare diagrammi di Gantt, utilizzato dal Responsabile per delineare la distribuzione temporale delle attività pianificate per ogni sprint nella sezione di *Pianificazione* del Piano di Progetto.

==== Draw.io
Software per creare diagrammi e grafici di varia natura, utilizzato dagli Analisti per creare i diagrammi UML dei casi d'uso nella sezione *Casi d'uso* dell'Analisi dei Requisiti.

== Sviluppo

=== Descrizione e scopo
Il processo di sviluppo include la serie di attività che devono essere svolte da parte del team #team affinchè questo possa riuscire nell'implementazione del prodotto software rispettando i requisiti e le date di scadenza concordate con la Proponente. In particolare, si ha:
        - *Analisi dei Requisiti*;
        - *Progettazione*;
        - *Codifica*;
        - *Verifica*.

=== Analisi dei Requisiti

==== Descrizione e scopo
L'Analisi dei Requisiti viene redatta dagli Analisti e contiene:
        - *Introduzione*: esplicita lo scopo del documento, lo scopo del prodotto e i riferimenti utilizzati;
        - *Descrizione*: esplicita le funzionalità attese del prodotto e le caratteristiche degli utenti;
        - *Casi d'uso*: individua gli attori e tutte le interazioni che possono avere con il sistema;
        - *Requisiti*: le caratteristiche da soddisfare e le fonti da cui sono state estratte.

==== Identificazione dei casi d'uso

  I casi d'uso sono identificati nel seguente modo:

          *UC[Numero].[Numero sottocaso] [Titolo]*
        
        *legenda*:
        - *Numero*: numero del caso d'uso;
        - *Numero sottocaso*: numero del sottocaso del caso d'uso generale se presente;
        - *Titolo*: breve titolo che descrive il contesto del caso d'uso in questione.

==== Struttura dei casi d'uso

I casi d'uso sono strutturati nel seguente modo:

    - Attore;
    - Precondizioni;
    - Postcondizioni;
    - Scenario Principale;
    - Scenari Secondari (ove necessario);
    - Estensioni, se presenti;
    - Specializzazioni, se presenti.

==== Requisiti 

I requisiti trovati vengono classificati nei seguenti modi:

    - *Funzionali*:

        un requisito funzionale specifica una funzionalità che il sistema deve essere in grado di svolgere;

    - *Qualità*:

        un requisito di qualità stabilisce gli standard e i criteri che il sistema deve soddisfare per garantire prestazioni, affidabilità, sicurezza e altri aspetti relativi alla qualità;

    - *Vincolo*:

        un requisito di vincolo è una restrizione o una condizione imposta al progetto.

==== Identificazione dei requisiti

I requisiti trovati avranno un codice univoco con la seguente sintassi:

        *R[Importanza][Tipo][Numero]*

        *legenda*:
        
        - *Importanza*:
                - O -> se requisito obbligatorio;
                - D -> se requisito desiderabile;
                - P -> se requisito opzionale.
        - *Tipo*:
                - F -> se funzionale;
                - Q -> se di qualità;
                - V -> se di vincolo.
        - *Numero*:
                per ogni requisito aggiunto il numero viene incrementato.

==== Metriche
        - *MROS*: requisiti obbligatori soddisfatti;
        - *MRDS*: requisiti desiderabili soddisfatti;
        - *MROPZS*: requisiti opzionali soddisfatti.

=== Progettazione 

==== Descrizione e scopo 

L'attività di progettazione verrà svolta dai Progettisti, i quali avranno il compito di definire le caratteristiche del prodotto finale basandosi sui requisiti specificati nel documento _Analisi dei Requisiti_. 
La fase di progettazione segue l'analisi dei requisiti, nella quale sono definite le necessità e le aspettative per il prodotto. I Progettisti traducono queste informazioni in una struttura architteturale definita, organizzando il sistema in componenti specifici e definendo le interazioni tra di essi. In tal modo, la progettazione costituisce un passo essenziale nel percorso di sviluppo, contribuendo a trasformare i requisiti in un piano tangibile per la creazione del prodotto finale.

Si definiscono tre sottoattività: 

        + *_Technology Baseline_*: scelta e definizione delle tecnologie di base che saranno utilizzate per la realizzazione del sistema, comprende decisioni riguardanti linguaggi di programmazione, librerie e #glossary("framework"). Tale processo porterà alla creazione di un Proof of Concept(#glossary("PoC"));
                Include:
                - *Proof of Concept*: consiste nella creazione di una versione parziale del prodotto con alcune delle funzionalità determinate durante l'analisi dei requisiti con lo scopo di valutare la fattibilità del prodotto completo;
                - *scelte tecnologiche*: consiste nello stabilire quali tecnologie adottare per lo sviluppo del Poc, anche su consiglio della Proponente.
        + *_Progettazione Architteturale_*: definizione ad alto livello dell'archittettura del sistema; si concentra sulla suddivisione del sistema in componenti e moduli, definendo le relazioni tra di essi e specificando le linee guida per l'organizzazione e l'interazione delle varie parti;
        + *_Product Baseline_*: segna un punto stabile nel processo di progettazione, in cui le specifiche tecniche, le funzionalità principali e l'architettura del prodotto sono definite in modo dettagliato e accettate dalle parti coinvolte. Include tutti gli elementi essenziali e i requisiti chiave del prodotto che devono essere soddisfatti, fornendo una base solida per lo sviluppo continuo del prodotto. Questo processo porterà infine alla realizzazione di un _Minimum Viable Product_ (#glossary("MVP"));
                Include:
                - #glossary("Design Patterns");
                - Definizione delle classi;
                - Diagrammi UML che includono:
                        - classi;
                        - _package_;
                        - sequenze: utilizzato per descrivere uno scenario che costituisce una determinata sequenza di azioni in cui tutte le scelte sono state già effettuate;
                        - attività: diagramma comportamentale che illustra il flusso delle attività attraverso un sistema.
                - Test di Unità su ogni componente.

==== Metriche
        - *MAC*: accoppiamento tra classi;
        - *MATC*: attributi per classe;
        - *MPM*: parametri per metodo;
        - *MLCM*: linee di codice per metodo.

==== Diagrammi UML dei casi d'uso
[...]

=== Codifica 

==== Descrizione e scopo 
L'attività di codifica viene svolta dai Programmatori, che hanno come compito la traduzione delle decisioni progettuali in codice sorgente.
I Programmatori seguono le linea guida e le _best practices_ stabilite durante la fase di progettazione architteturale.

==== Aspettative 
Ci si aspetta che il codice sviluppato rispetti determinate caratteristiche:

        - Conformità alle specifiche;
        - Chiarezza e comprensibilità;
        - Ottimizzazione delle prestazioni;
        - Supplemento di test per verificare la correttezza e il funzionamento.

==== Stile di codifica 
[...]

==== Metriche
        - *MCCM*: Complessità Ciclomatica per metodo;
        - *MCC*: Code Coverage;
        - *MSC*: Statement Coverage;
        - *MBC*: Branch Coverage.

=== Verifica

==== Descrizione e scopo
Come sistema di controllo di versione si utilizza _Git_ all'interno del servizio online _Github_.

All'interno dei repository si utilizza il #glossary[Rebase workflow] come metodo di gestione, con piccoli accorgimenti, segnalati nelle apposite sezioni.

In particolare si nota la differenza tra il repository di documentazione, chiamato _Docs_ e quello di progetto (codice) chiamato _InnovaCity_: per entrambi si utlizza il _Rebase workflow_, con l'utilizzo dei _Feature branch_ per separare logicamente il lavoro da svolgere. Nel primo repository però, i _Feature branch_ si derivano direttamente dal _main_, mentre nel secondo si derivano dal branch _dev_.
Questo impone quindi che, prima di andare ad effettuare la chiusura di una _Pull request_, si vada ad effettuare un _rebase_ del branch di derivazione, per rendere il nostro branch di sviluppo aggiornato rispetto alla base.

I _Feature branch_ vengono aperti a partire dalle issue create nell' _Issue Tracking System_ (vedi @its). Si procede poi ad associare una _Pull request_, a una o più issue collegate tra loro, per effettuare la verifica.

Nel caso del repository _InnovaCity_ il branch _main_ viene utilizzato per la pubblicazione di cambiamenti _major_, cioè quando si è implementato un numero di funzionalità significativo all'avanzamento del progetto. In quel caso è il Responsabile che esegue l'approvazione finale.

==== Analisi statica
L'analisi statica rappresenta un'esplorazione approfondita del codice o della documentazione associata al prodotto. Questa metodologia mira a individuare potenziali problemi o irregolarità, senza attivare effettivamente il sistema software. Quando si tratta di documentazione, l'analisi statica si concentra sulla struttura, sulla coerenza, sulla completezza e sulla chiarezza del testo. In particolare, verifica la presenza di errori grammaticali, di formattazione e concettuali, garantendo un livello ottimale di qualità nel materiale consegnato.

Il Verificatore, nel contesto della documentazione o del codice, è tenuto a condurre un #glossary[walkthrough], o lettura a pettine, se tali elementi non sono mai stati verificati precedentemente. Tale processo prevede una revisione completa e ha come obiettivo una valutazione approfondita della struttura e del contenuto dell'intero documento. Di conseguenza, i walkthrough vengono effettuati soprattutto all'inzio e al termine del lavoro su un particolare documento, quando ci si avvicina ad una revisione.

GitHub offre una funzionalità di "review" all'interno delle Pull request, permettendo al Verificatore di visualizzare facilmente le ultime modifiche apportate al prodotto. Il Verificatore inserisce commenti specifici che indicano le correzioni o le migliorie necessarie e, al termine della review, la invia richiedendo le modifiche indicate; in seguito all'intervento correttivo dell'autore, il Verificatore esegue ulteriori revisioni fino a quando il documento non presenta più errori e rispetta i criteri di conformità richiesti.

L'utilizzo delle review in GitHub non solo facilita il tracciamento dell processo di verifica, ma consente anche al team di accedere e consultare facilmente l'intera cronologia del codice o documento di interesse all'interno della #glossary[repository] del progetto. Questo approccio garantisce un processo di verifica trasparente, tracciabile e conforme alle linee guida stabilite.

==== Analisi dinamica

===== Test di unità

===== Test di integrazione

===== Test di sistema

===== Test di accettazione

#pagebreak()

= Processi di Supporto

== Documentazione

=== Descrizione e scopo

La documentazione è l'insieme di informazioni rappresentate sotto forma di testo scritto che accompagna un prodotto software, svolgendo un ruolo essenziale nella descrizione del prodotto per coloro che lo sviluppano, lo distribuiscono e lo utilizzano. Il suo obiettivo primario è facilitare l'attività di sviluppo  ai membri del team durante l'intero ciclo di vita del progetto e garantirne la coerenza,tracciando tutti i processi e le attività coinvolte per migliorare la qualità del risultato finale e semplificare la manutenzione. L'implementazione di regole chiare e di una struttura uniforme non solo migliora la fruibilità e la comprensione, ma favorisce anche la collaborazione all'interno del team, contribuendo in modo significativo al successo complessivo del progetto software.

=== Lista Documenti

I documenti che verranno prodotti sono:

        - _Norme di Progetto_;
        - _Piano di Progetto_;
        - _Piano di Qualifica_;
        - _Analisi dei Requisiti_;
        - _Glossario_;
        - _Verbali_:
                + _Interni_;
                + _Esterni_.

=== Ciclo di vita dei documenti

Ogni documento segue le fasi del seguente #glossary[workflow]:
+ Si crea un branch per lo sviluppo del documento nell'apposita repository _Docs_ e si mette in uso.
+ Si copia dall'apposita repository `Templates` il template relativo al file che si deve redigere, e lo si inserisce nella cartella appropriata.
+ Si redige il documento o una sua sezione. Nel caso di documenti nuovi, in cui è necessario un elevato parallelismo di lavoro, è possibile usare _Google Drive_ per la prima stesura e successivamente caricare il documento all'interno del branch.
+ Nel file `changelog.typ` si aggiunge una riga *in coda*, secondo il seguente formato: `<versione>,<data-modifica>,<descrizione-modifica>,<nome-autore>,<ruolo-autore>`; la versione segue le regole descritte nella @versionamento.
+ Si esegue la commit sul branch creato.
+ Si apre una _pull request_ dal branch appena creato verso il branch `main`: se il documento non è pronto per la verifica, ma ha bisogno di ulteriori modifiche, si apre la _pull request_ in modalità `draft`, altrimenti in modalità normale, spostando la issue nell'apposita corsia _Ready to Review_.
+ Per ulteriori modifiche richieste dal/dai verificatore/i si ripetono i punti, *in ordine*, dal punto _3_ al punto _5_.
+ Si elimina, *solo quando la pull request viene chiusa o risolta*, il branch creato.

La modifica di un documento avviene allo stesso modo, saltando il passo 2.
Ogni cambiamento di stato è accompagnato dal conseguente movimento della issue, associata allo sviluppo, attraverso le diverse corsie dell'issue tracking system.

=== Template Typst

Per la stesura dei documenti viene usato un template in formato _Typst_. Il template fornisce una struttura e un formato predefinito per semplificare la creazione di documenti. Serve a garantire coerenza, risparmiare tempo, standardizzare la presentazione e contribuire a una produzione di documenti più efficiente e professionale.
Sono stati sviluppati quattro template distinti per adattarsi alle diverse esigenze di documentazione: 
          - documentazione ufficiale;
          - lettere di presentazione;
          - verbali per incontri interni ed esterni.

 Ogni template è progettato per garantire coerenza e facilità d'uso, con piccole modifiche per rispecchiare le specificità di ciascun tipo di documento.

=== Nomenclatura
La consueta nomeclatura per i documenti si ottiene unendo, attraverso un underscore (`_`), il nome del file in _CamelCase_ senza spazi (`NomeDelFile`) e la sua versione (`3.5`). Ad esempio `NormeDiProgetto_2.6.pdf`.
Nel caso di documenti il cui nome contiene una data, essa si inserisce dopo il nome, ma prima della versione, sempre separandolo con gli underscores, nella forma `ggmmaa` senza separatori tra i singoli componenti della data: `gg` rappresenta il giorno, sempre scritto in due cifre, allo stesso modo `mm` rappresenta il mese, mentre l'anno è rappresentato da `aa`, corrispondente alle ultime due cifre dell'anno corrente.

=== Versionamento <versionamento>
Il versionamento avviene secondo il seguente formato *x.y*:
- *y* si incrementa una volta effettuata una modifica e la sua conseguente verifica;
- *x* si incrementa quando si effettua la modifica definitiva in vista di una verifica di avanzamento, questo comporta l'azzeramento di *y*.

Due modifiche, fatte in momenti diversi, differiscono l'una dall'altra solo se hanno scopi diversi. Ad esempio non è necessario incrementare la versione se viene fatta una modifica alla stessa sezione in due giorni differenti; anche se faccio una modifica, ed essa non viene approvata, non è necessario incrementare la versione con le nuove modifiche proposte dal/dai verificatore/i, dal momento che modifica e verifica "viaggiano" parallelamente.

=== Struttura 

==== Prima Pagina 

        - *logo team*: situato in alto a destra;
        - *Titolo*: 
                - Nome del documento, se diverso dai verbali;
                - per i verbali interni: Verbale Interno;
                - per i verbali esterni: Verbale Esterno;
        - *Data*: solo se si tratta di verbali, vedere @formato;
        - *Contatti*: l'email del team;
        - *Versione*: l'ultima versione del documento;
        - *logo università*: in basso a destra.

==== Intestazione

Su ogni pagina del documento, eccetto la prima, si trova il titolo del documento seguito dalla sua versione e il logo del team.

==== Registro delle modifiche

Tabella con l'intestazione: 
        - *Versione*: versione del documento;
        - *Data*: data della modifica apportata;
        - *Descrizione*: cosa è stato modificato o aggiunto al file;
        - *Autore*: l'autore della modifica;
        - *Ruolo*: ruolo dell'autore al momento della modifica.

==== Indice 

In una nuova pagina deve essere presente l'indice, utile per facilitare la ricerca e la navigazione all'interno del documento.

==== Verbali 

I verbali differiscono leggermente da un documento ufficiale, in quanto non evolvibili nel tempo.

Si compongono principalmente di 2 sezioni:
        - *Partecipanti*: si indica data di inizio e fine incontro e il luogo in cui si è svolto. A seguire, i nomi dei partecipanti del team e la durata della presenza di ciascuno vengono rappresentati in forma tabellare. Se il verbale è esterno si indicano anche i partecipanti della Proponente;
        - *Sintesi dell'incontro*: Riassunto degli argomenti trattati durante la riunione.


Il verbale esterno oltre alle sezioni sopra elencate ha una pagina per la convalida, attraverso firma, del documento.

=== Convenzioni stilistiche
        - *Grassetto*:
                - Titoli di sezioni/sottosezioni/paragrafi di un documento;
                - Parole a cui si vuole dare enfasi;
                - Definizioni di termini negli elenchi puntati.
        - *Corsivo*: 
                - I nomi dei documenti;
                - I termini di glossario (seguiti da #sub[G]).
        - *Caratteri maiuscoli*: 
                - Le iniziali dei nomi;
                - Le lettere che compongono un acronimo;
                - Le iniziali dei ruoli svolti dai componenti del gruppo;
                - L'iniziale del termine "Proponente".

==== Elenchi puntati

Le voci di ogni elenco iniziano con lettera maiuscola e terminano con punto e virgola ';', eccetto l'ultima voce che termina con punto normale '.'.

==== Formato delle date <formato>
Viene adottato il formato "DD-MM-YYYY":
        - DD: giorno con 2 cifre;
        - MM: mese con 2 cifre;
        - YYYY: anno con 4 cifre.

=== Strumenti 

Il gruppo utilizza:

        - *Typst*: linguaggio di markup utilizzato per la redazione di documenti, noto per la sua semplicità e flessibilità nella formattazione di testi strutturati;

        - *Visual Studio Code*: un popolare ambiente di sviluppo integrato (IDE), noto per la sua leggerezza, versatilità e la vasta gamma di estensioni che permettono la personalizzazione e offrono supporto per numerosi linguaggi di programmazione;

        - *GitHub*: una piattaforma di hosting per progetti di sviluppo software basati su Git. Fornisce un sistema di controllo delle versioni distribuito e strumenti per la gestione del codice sorgente, delle issue e delle pull request, facilitando la collaborazione all'interno di un team di sviluppo.

=== Metriche
        - *MCO*: correttezza ortografica;
        - *MIG*: indice di Gulpease.

== Gestione della Configurazione

=== Descrizione e scopo

=== Issue Tracking System <its>
Come ITS si utilizza _Github_ che, attraverso le funzioni di _Project_, _Issues_ e _Pull requests_, garantisce una struttura all'organizzazione di progetto.

Le #glossary[Corsie di Stato] descrivono lo stato attuale delle attività, all'interno del _Project_ nell'_ITS_ sono presenti:
/ Backlog: attività individuate da svolgere.
/ Ready: attività individuate per il completamento durante il prossimo #glossary[sprint].
/ In Progress: attività che sono in corso d'opera da parte dei redattori.
/ Ready to Review: attività svolte che sono pronte per essere verificate.
/ In Review: attività in corso di verifica da parte dei verificatori.
/ Done: attività le cui modifiche sono state verificate e accettate.

=== Strumento di Condivisione
Per la condivisione veloce o la creazione di bozze si utilizza _Google Drive_. Uno dei suoi principali casi d'uso consiste nella collaborazione in tempo reale nella stesura di sezioni testuali ampie, da inserire successivamente nella documentazione (questo risulta particolarmente utile nel momento in cui il documento è alla sua prima stesura). Viene inoltre utilizzato come sistema per l'immagazzinamento di conoscenze acquisite durante lo svolgimento del progetto.

=== Tracciamento del Tempo Speso
Al fine di tracciare il tempo speso nel corso del progetto, nei diversi ruoli, si userà uno spreadsheet appositamente creato, disponibile all'interno di _Google Drive_ dove, a fine giornata, ogni membro del team andrà ad inserire le proprie ore *produttive* svolte quel giorno, secondo la sua miglior stima del rapporto tra ore di orologio e ore produttive. Si inserisce _una sola_ riga per ogni giornata e nella descrizione si andranno ad inserire dei brevi titoli rappresentativi delle attività svolte.

=== Repository

Vengono utilizzate le seguenti _repository_:
        - https://github.com/SWATEngineering/Docs: questa repository viene impiegata dal team per condividere e revisionare il codice sorgente legato alla documentazione del progetto. Viene utilizzata per collaborare, revisionare e mantenere aggiornati i documenti di lavoro, consentendo ai membri del team di contribuire e gestire in modo efficiente la documentazione;
        - https://github.com/SWATEngineering/SWATEngineering.github.io: questa repository funge da piattaforma per i documenti compilati e approvati. Il sito web https://swatengineering.github.io/ rappresenta la versione web della documentazione finale e approvata dal team. È utilizzata per presentare al pubblico una visione consolidata e approvata dei documenti di progetto;
        - https://github.com/SWATEngineering/InnovaCity: questa repository è dedicata alla condivisione e revisione del codice sorgente relativo al prodotto software "InnovaCity". È qui che il team lavora e collabora sul codice del prodotto stesso, consentendo una gestione centralizzata del lavoro di sviluppo e delle modifiche apportate al software.

== Verifica

=== Elementi Interni al Repository
La verifica del documento avviene tramite apposito metodo nell'ITS, attraverso la _Pull request_, indicando i punti in cui si richiede la modifica, il motivo della richiesta e una proposta se necessario. Anche in questo caso i verificatori si occupano di spostare la issue di riferimento nelle corsie appropriate, chiudendola se la verifica è terminata con successo, o spostandola nuovamente nella corsia _In Progress_ in caso vengano richieste altre modifiche.

=== Elementi Esterni al Repository
Potrebbero esservi delle issue aperte all'interno dell'_ITS_ che non hanno un corrispondente documento o prodotto in generale, all'interno del repository, ma che fungono come attività di gestione. Per queste, il ciclo di vita segue il normale flusso attraverso i diversi stati elencati nella @its. La verifica viene effettuata attraverso i commenti della issue stessa, che avranno la seguente forma:
- caso _richiesta cambiamenti_:
  ```
  [REV]
  - richiesta 1;
  - richiesta 2;
  ```
- caso _approvazione_:
  ```
  [REV] done
  ```

== Gestione della Qualità 

=== Descrizione 

La gestione della qualità è un insieme di processi e attività volte a garantire che un prodotto soddisfi gli standard di qualità definiti, assicurando che il prodotto sviluppato sia affidabile ed efficiente.  È fondamentale garantire che il prodotto soddisfi a pieno i requisiti funzionali e non, stabiliti durante la fase di progettazione.

=== Obiettivi 

        - Controllo continuo della qualità del prodotto, verificando che rispetti le aspettative della Proponente;
        - Minimizzare la presenza di errori o anomalie nel prodotto;
        - Riduzione dei rischi che potrebbero influenzare la qualità;
        - Consegna del progetto rispettando il budget preventivato inizialmente e i requisiti individuati assieme alla Proponente.

Per la valutazione della qualità viene fornito il documento _Piano di Qualifica_, in cui sono presenti varie metriche con le relative soglie di valori accettabili ed ideali.


=== Denominazione Metriche 

Per identificare  le metriche si usa la seguente formattazione:

#align(center)[*M[Tipo]-[Nome]*]

*legenda*:
        - *Tipo*: specifica la tipologia di metrica:
                        + *PC* se si tratta di qualità di processo;
                        + *PD* se si tratta di qualità di prodotto;
        - *Nome*: abbreviazione del nome della metrica.



= Processi Organizzativi

== Gestione Organizzativa

=== Decisioni
Per poter prendere una qualsiasi decisione è necessario vi siano due condizioni:
+ Si deve raggiungere il #glossary[quorum] di quattro persone su sei;
+ La decisione deve essere verbalizzata e motivata.

=== Pianificazione

==== Descrizione e scopo
Il Responsabile assume il ruolo cruciale di pianificare dettagliatamente gli obiettivi per ciascuno sprint fino alla conclusione del progetto. Questo implica una distribuzione coerente del lavoro in linea con le scadenze fissate per le revisioni RTB, PB e CA. Il suo compito principale è delineare chiaramente come il team dovrebbe gestire e completare le attività relative allo sviluppo del software e alla redazione della documentazione in periodi di tempo specifici.

Oltre a definire gli obiettivi per ogni sprint, il Responsabile si occupa di stimare accuratamente il tempo necessario per ciascuna attività e di pianificare la distribuzione dei ruoli all'interno del team. Questa pianificazione è sensata rispetto all'andamento generale del progetto e agli obiettivi imminenti. Queste previsioni vengono formalizzate nel Piano di Progetto, diventando il punto di riferimento durante l'evento di Sprint Planning per definire gli obiettivi del successivo sprint.

Eventuali variazioni nella distribuzione dei ruoli, rispetto alla pianificazione iniziale, vengono documentate e giustificate nel Consuntivo del Piano di Progetto. Questo approccio consente al team di adattarsi in modo flessibile alle esigenze emergenti, mantenendo sempre un quadro chiaro delle variazioni e delle ragioni che stanno dietro a queste modifiche.

==== Ruoli Progetto

Durante il periodo di sviluppo del progetto, ogni membro assumerà 6 ruoli distinti con compiti diversificati, al fine di garantire una gestione completa ed efficace delle diverse fasi e aspetti del lavoro. Questi ruoli contribuiranno a promuovere la collaborazione sinergica e l'ottimizzazione delle risorse all'interno del team. 

I ruoli assunti sono i seguenti:

===== Responsabile  

        Figura chiave che supervisiona, coordina e gestisce le attività del team. Si occupa di garantire l'allineamento tra gli obiettivi del progetto e le azioni intraprese, gestisce le risorse disponibili, stabilisce e mantiene le relazioni esterne con la Proponente e assicura il flusso efficace delle informazioni all'interno del team e al di fuori di esso.

        I suoi compiti sono:

         - Gestione della comunicazione con la Proponente (si fa uso della piattaforma Element);
         - Preparazione dell'ordine del giorno per la successiva riunione, anche sulla base
           dei punti individuati dagli altri componenti;
         - Redazione dei verbali interni ed esterni;
         - Stesura e e avanzamento del documento “Piano di progetto”;
         - Creazione dei diari di bordo;
         - Upload dei verbali esterni convalidati, tramite firma, dalla Proponente in una cartella apposita su Google Drive.

===== Amministratore 
        
        Figura professionale con la responsabilità della creazione, manutenzione e ottimizzazione degli strumenti, delle risorse e dei processi necessari per il corretto svolgimento del progetto.

        I suoi compiti sono:

         - Configurazione e gestione gli ambienti di sviluppo;
         - Implementazione delle procedure operative;
         - Assicurare la disponibilità degli strumenti necessari per la collaborazione e la comunicazione all'interno del team;
         - Creazione e assegnazione delle _issue_ ai membri del team;
         - Stesura e avanzamento del documento "Norme di Progetto";
         - Implementazione di script dedicati per automatizzare processi nell'ambiente di lavoro;
         - Gestione del versionamento dei documenti.

===== Analista
     
     Figura professionale che si occupa di analizzare, comprendere e definire i requisiti e le specifiche di un sistema software prima che venga sviluppato. Questa figura svolge un ruolo fondamentale nel processo di sviluppo del software, contribuendo a garantire che il prodotto finale soddisfi le esigenze e le aspettative degli utenti e della Proponente.

     I suoi compiti:

        - Studio del contesto applicativo e relativa complessità;
        - Specifica dei casi d'uso per comprendere in dettaglio i requisiti funzionali del sistema;
        - Raccolta dei requisiti per definire le necessità e le funzionalità richieste;
        - Stesura del documento Analisi dei Requisiti;
        - Creazione diagrammi UML;

===== Progettista

        Figura professionale specializzata nella progettazione architetturale e strutturale di sistemi. La sua responsabilità principale è definire la configurazione, la disposizione e l'organizzazione dei vari componenti del sistema, concentrandosi su come questi elementi interagiscono tra loro per raggiungere determinati obiettivi di funzionalità, prestazioni e scalabilità.

        I suoi compiti sono:

        - Scelta degli aspetti tecnici e tecnologici;
        - Progettazione architetturale che miri all'economicità e alla manutenibilità del sistema;
        - Ottimizzazione delle prestazioni usando algoritmi efficienti e gestione memoria;
        - Gestione dei rischi: cerca di mitigare problemi che possono sorgere durante lo sviluppo;
        - Redazione della Specifica tecnica e di una parte del documento Piano di Qualifica.

===== Programmatore

        Figura professionale incaricata di trasformare le specifiche tecniche in codice eseguibile, garantendo un'implementazione efficiente e accurata delle funzionalità richieste dal progetto.

        I suoi compiti:

        - Traduzione delle specifiche tecniche in codice funzionante;
        - Scrittura di codice chiaro, leggibile e mantenibile;
        - Creazione di test per la verifica del software;
        - Ampliamento delle Specifiche Tecniche conforme alle esigenze del progetto.
        - Risoluzione di bug e problemi di performance;
        - Realizzazione del Manuale Utente;
        - Collaborazione con il team per l'integrazione del codice e il mantenimento della coerenza del progetto.

===== Verificatore

        Figura professionale che si occupa di esaminare il lavoro prodotto dagli altri membri del team.

        I suoi compiti:

        - Revisione e valutazione della documentazione prodotta dal team;
        - Analisi critica del codice per individuare errori, discrepanze o possibili miglioramenti;
        - Identificazione e segnalazione di problemi;
        - Collaborazione con il team per garantire che il lavoro sia conforme alle linee guida e agli standard richiesti.


==== Cambio dei ruoli

Per fare in modo che ogni membro svolga almeno 1 volta tutti i ruoli di cui sopra, il team si impegna a cambiarli ogni settimana.

=== Procedure 

==== Gestione delle comunicazioni

===== Comunicazioni Interne 

Riguardano esclusivamente i membri del Team e si svolgono tramite:

        - *_Whatsapp_*: utilizzato per messaggistica istantanea e una comunicazione veloce;
        - *_Discord_*: piattaforma utilizzata per:
                + Creare server suddivisibili in vari canali testuali o vocali, dove verranno svolte le riunioni;
                + Supplementare la comunicazione all'interno della piattaforma con funzionalita' offerte da servizi esterni quali GitHub.

===== Comunicazioni Esterne

Le comunicazioni esterne vengono affidate al Responsabile attraverso i seguenti mezzi:

        - _Email_ : si usa l'email di gruppo swateng.team\@gmail.com;
        - _Element_: si usa il canale creato appositamente dalla Proponente per avere una comunicazione diretta.

==== Gestione degli Incontri 

===== Incontri Interni 

Negli incontri interni possono partecipare solamente i membri del gruppo. Si svolgono principalmente una volta a settimana, il giorno può variare in caso di imprevisti, ma solitamente si tiene il venerdì mattina in modalità sincrona.

Le linee guida per le riunioni:
                + Prima dell'incontro avere un ordine del giorno, ovvero i punti eventuali da discutere;
                + Discussione dei punti;
                + Pianificazione attività per la settimana (valutate rispetto a quanto pianificato nel Piano di Progetto) e assegnazione issue.
                
        Alla fine dell'incontro:
                + Il Responsabile ha il compito della stesura del verbale interno, fornendo una sintesi dei punti salienti dell'incontro. 

Gli incontri hanno due modalità:

        - *Fisici*: per gli stand-up meeting quotidiani (#glossary("Daily Scrum")) di 5 minuti in cui si discutono brevemente le attività completate il giorno precedente e si espongono le attività pianificate per il futuro;
        - *Virtuali*: si svolgono chiamate o video di gruppo in cui si discutono eventuali dubbi o difficoltà riscontrate. Lo strumento adatto per questo scopo è Discord.

===== Incontri Esterni 

Negli incontri esterni i partecipanti sono i membri del team e i referenti della Proponente. Questi incontri sono pianificati ogni due settimane in concomitanza con l'inizio e fine sprint. Durante queste sessioni, i partecipanti del team hanno l'opportunità di presentare gli sviluppi recenti, condividere i progressi raggiunti e discutere eventuali sfide o questioni emerse nel corso del lavoro. 
Inoltre si possono richiedere incontri di formazione specifici su particolari tecnologie, il che offre al team l'opportunità di approfondire la comprensione di una tecnologia specifica, imparare le _best practice_ e acquisire competenze più avanzate.

Il Responsabile ha il compito della stesura del verbale esterno, che viene successivamente convalidato, con firma, dalla Proponente.

=== Metriche

        - *MVP*: Valore Pianificato;
        - *MCE*: Costo Effettivo;
        - *MVdP*: Variazione di Piano;
        - *MVC*: Variazione di Costo;
        - *MVR*: Variazione dei Requisiti.

= Metriche per la qualità
[...]
