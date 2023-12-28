#import "functions.typ": glossary, team

/*************************************/
/*    INSERIRE SOTTO IL CONTENUTO    */ 
/*************************************/

#show link: underline

= Introduzione

== Scopo del Documento

Il presente documento ha l'obiettivo di definire le #glossary[best practices] e la #glossary[way of working] che ogni componente del team #team ha l'obbligo di rispettare durante l'intero svolgimento del progetto. In questo modo si prova a garantire un metodo di lavoro omogeneo, verificabile e migliorabile nel tempo. La formulazione delle norme avviene in modo progressivo, consentendo al team di apportare aggiornamenti continui in linea con le attività e gli strumenti concordati nel corso del lavoro.

== Scopo del progetto

Il progetto "InnovaCity" si concentra sulla creazione di una dashboard intuitiva, ovvero facilmente comprensibile e accessibile, che permetta al personale amministrativo di monitorare e analizzare il continuo sviluppo di una #glossary[smart city]. L'applicazione comprende una #glossary[data pipeline], appositamente progettata per elaborare dati provenienti da una varietà di simulatori di sensori. Questa pipeline consente la gestione e la visualizzazione ottimale di tali dati, permettendo agli utenti di ottenere rapidamente informazioni rilevanti. L'obiettivo finale è fornire uno strumento per prendere decisioni informate riguardo alla gestione delle risorse della città.

== Glossario

Al fine di evitare possibili ambiguità relative al linguaggio utilizzato nei documenti, viene
fornito il _Glossario v1.0_, nel quale sono presenti tutte le definizioni di termini aventi un significato specifico che vuole essere disambiguato. Tali termini, sono scritti in _corsivo_ e marcati con una #sub("G") a pedice.
L'attività di inserimento di un termine nel glossario può considerarsi completata solo quando il termine viene correttamente definito e spiegato all'interno del _Glossario v1.0_.

== Riferimenti

=== Riferimenti normativi
        - *Capitolato d'appalto C6 - InnovaCity*:\

                #link("https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C6.pdf")

=== Riferimenti informativi
        - *Documentazione git*:\
                #link("https://git-scm.com/docs")

        - *Documentazione GitHub*:\
                #link("https://docs.github.com/en")

        - *Materiale didattico del corso Metodi e Tecnologie per lo Sviluppo Software 2022/2023*:\
                #link("https://stem.elearning.unipd.it/course/view.php?id=5359")

                - Lezione 4: GIT;
                - Laboratorio 2: GitHub Version Control System.
        - *Documentazione Typst*:\
                #link("https://typst.app/docs")

#pagebreak()

= Processi Primari

== Fornitura

=== Descrizione e scopo

Il processo di fornitura si propone di dettagliare le attività del fornitore per comprendere e soddisfare le richieste della Proponente.
Dopo la completa comprensione delle esigenze, il fornitore, in collaborazione con la Proponente, stabilisce tramite contratto la data di consegna del prodotto. Successivamente, si procede con la redazione del _Piano di Progetto v1.0_, per pianificare dettagliatamente le varie attività da svolgere, garantendo un chiaro processo di sviluppo del prodotto finale. L'obiettivo principale è soddisfare in modo chiaro le richieste della Proponente, evitando possibili incomprensioni attraverso una collaborazione continua.

Il processo si articola in diverse fasi:

        - Definizione chiara dei requisiti soddisfatti dal prodotto finale;
        - *Contrattazione*: 
                + Richiesta di incontri di formazione sulle tecnologie consigliate per ottimizzare lo sviluppo;
                + Ricezione di un feedback approfondito sull'utilizzo delle tecnologie proposte.
        - *Pianificazione*: individuazione preventiva di una suddivisione precisa di tutte le ore produttive disponibili, seguita da una stima dei costi per ciascun incremento di lavoro (sprint);
        - *Esecuzione*: progettazione e sviluppo del prodotto procedono di pari passo con la stesura della documentazione relativa al progetto;
        - Continuo controllo e verifica;
        - Completamento e consegna.

=== Rapporti con la Proponente
La Proponente si è resa disponibile attraverso vari canali, come e-mail, _Google Meet_ e _Element_, per stabilire una comunicazione frequente e risolvere prontamente eventuali dubbi o domande che possono emergere durante lo svolgimento del progetto. Sin dall'inizio è stato concordato di organizzare incontri regolari, in particolare al termine di ciascuno sprint, fissati per il venerdì alle 10:30.  Questi incontri, che assumono la forma di sessioni di _Sprint Review_, consentono al team di esporre quanto realizzato e di ricevere feedback sull'andamento del lavoro.

Gli incontri con la Proponente si suddividono principalmente in tre categorie:

        - *Incontri di formazione*: finalizzati ad acquisire familiarità con nuove tecnologie, approfondire concetti specifici o migliorare competenze richieste dal progetto;
        - *Incontri di analisi dei requisiti*: mirati a chiarire, discutere e validare i requisiti del progetto, garantendo una comprensione chiara e condivisa tra il team e la Proponente;
        - *Sprint Review*: fase conclusiva di ogni sprint durante la quale vengono presentati i risultati ottenuti, con l'intento di ricevere feedback dalla Proponente.

Ogni incontro con la Proponente viene sintetizzato e documentato nel Verbale Esterno di riferimento. Il verbale viene successivamente presentato alla Proponente per essere validato tramite firma, ottenendo così un'approvazione formale del resoconto delle discussioni avvenute all'incontro.

=== Documentazione fornita

Di seguito vengono elencati i documenti che il team #team si impegna a consegnare ai Committenti Prof. Tullio Vardanega e Prof. Riccardo Cardin, nonché alla Proponente Sync Lab.

==== Analisi dei Requisiti

L’_Analisi dei requisiti v1.0_, redatto dagli Analisti, rappresenta un documento fondamentale nello sviluppo del sistema software. Il suo obiettivo principale è definire in dettaglio le funzionalità necessarie affinché il prodotto soddisfi pienamente le richieste della Proponente. Il documento omonimo comprende una serie di elementi essenziali:

        - Descrizione e scopo del prodotto;
        - *Definizione degli attori*: entità o persone che interagiscono con il #glossary[sistema];
        - *Definizione dei casi d'uso*: rappresentazione narrativa di scenari specifici che descrivono come gli attori interagiscono con il sistema. I casi d'uso offrono una visione chiara delle azioni eseguibili all'interno del sistema e delle interazioni degli utenti con esso. All'interno di ciascun caso d'uso, viene fornito un elenco preciso delle azioni intraprese dall'attore per attivare il caso d'uso, facilitando così l'estrazione dei requisiti corrispondenti;
        - *Definizione di requisiti*: individuazione dei requisiti obbligatori e desiderabili e loro categorizzazione in:
                - *Requisiti funzionali*: specificano le operazioni che il sistema deve essere in grado di eseguire;
                - *Requisiti di qualità*: riguardano gli aspetti di qualità del software, inclusi gli attributi prestazionali, affidabilità, usabilità e sicurezza;
                - *Requisiti di vincolo*: delineano vincoli e limitazioni che il sistema deve rispettare. Possono includere restrizioni tecnologiche, normative o di risorse.

==== Piano di Progetto

Documento redatto dal Responsabile che offre una visione dettagliata dell'intero processo di sviluppo di un progetto. Esso fornisce al team una guida approfondita per mantenere l'allineamento con gli obiettivi, gestire le risorse in modo efficace e affrontare le sfide che possono emergere durante lo sviluppo del progetto.

È composto da:

        - *Analisi dei rischi*: identifica, valuta e gestisce i potenziali rischi che possono influenzare il successo del progetto. Questo processo è essenziale per consentire al team di adottare misure preventive. I rischi vengono categorizzati in rischi tecnologici, di comunicazione e di pianificazione. Per ogni rischio, si compie un'analisi mirata per individuarne i segnali di manifestazione, valutarne l'occorrenza e la pericolosità, pianificare strategie di mitigazione e valutare l'efficacia di tali strategie nel contenere gli effetti del rischio preso in esame;
        - *Modello di sviluppo*: approccio metodologico che viene scelto per guidare il processo di sviluppo del prodotto. Esso definisce la struttura di lavoro che viene seguita per l'intero ciclo di vita del progetto. Con l'adozione del modello di sviluppo agile Scrum, questa sezione descrive le pratiche e gli eventi principali del _framework_, illustrando il modo in cui vengono utilizzati ed implementati dal team;
        - *Pianificazione*: fornisce una roadmap dettagliata delle attività, delle risorse, e delle scadenze associate al progetto. In particolare, vengono pianificate le attività necessarie per raggiungere gli obiettivi previsti per ogni sprint, dall'inizio sino al termine del progetto, e la loro distribuzione temporale;
        - *Preventivo*: basandosi sulla pianificazione eseguita a priori, determina la ripartizione delle ore produttive a disposizione di ogni componente del team nei vari ruoli per ogni sprint. Questo assicura il conseguimento degli obiettivi prefissati e un utilizzo oculato delle risorse. La suddivisione delle ore determina altresì, il costo preventivato per ogni sprint;
        - *Consuntivo*: partendo dalla rendicontazione delle ore produttive impiegate da ciascun membro del team eseguita a posteriori, determina la ripartizione effettiva delle ore osservata durante lo sprint e, di conseguenza, anche il costo effettivo. Inoltre, si conduce una breve analisi retrospettiva per giustificare le scelte effettuate nel preventivo, evidenziare eventuali deviazioni e delineare i cambiamenti nella strategia utilizzata per pianificare il resto del lavoro,  qualora dovessero rendersi necessari.
        
==== Piano di Qualifica

Documento, redatto dall'Amministratore, che descrive le strategie e gli approcci adottati per garantire la qualità del prodotto o del servizio che si sta sviluppando. Il suo scopo principale è quello di definire le modalità di verifica e validazione, nonché gli standard e le procedure di qualità che verranno seguite durante l'intero ciclo di vita del progetto.

È caratterizzato da:

        - *Qualità di processo*: standard e procedure adottate per garantire la qualità durante lo sviluppo del progetto. Include informazioni sulle attività di gestione della qualità, le metodologie utilizzate, e come vengono misurati e migliorati i processi stessi;
        - *Qualità di prodotto*: standard, specifiche e caratteristiche che il prodotto deve soddisfare per essere considerato di qualità. Include anche le metriche e i criteri di valutazione utilizzati per misurare la qualità del prodotto;
        - *Specifiche dei test*: specifiche dettagliate dei test che verranno condotti durante lo sviluppo del progetto;
        - *Resoconto e valutazioni*: resoconto delle attività svolte e delle valutazioni effettuate durante il progetto. Utili per capire come il progetto si sta sviluppando rispetto agli obiettivi e alle aspettative. Inoltre, aiutano a identificare eventuali azioni correttive necessarie per mantenere o migliorare la qualità complessiva del progetto.

==== Glossario

Il _Glossario v1.0_ funge da catalogo esaustivo che raccoglie i termini tecnici impiegati all'interno del progetto, offrendo definizioni chiare e precise. Questo documento previene fraintendimenti, promuove una comprensione condivisa della terminologia specifica del settore, migliorando così la coerenza e la qualità della documentazione prodotta tra i partecipanti al progetto.

==== Lettera di Presentazione
La Lettera di Presentazione accompagna la consegna del prodotto software e della documentazione pertinente, sottolineando l'impegno che il team #team si assume nel completare e consegnare il prodotto entro le scadenze concordate. Inoltre, espone un preventivo aggiornato rispetto a quello presentato in occasione dell'ultima revisione. In questo contesto, costo e data di consegna del progetto sono attentamente valutati in relazione all'andamento corrente e vengono confermati o eventualmente modificati attraverso scelte ragionate effettuate durante lo sviluppo.

=== Strumenti

Gli strumenti adottati per agevolare il processo di fornitura sono i seguenti:

==== Google Calendar

Strumento di calendario, utilizzato dal team per gestire impegni e attività in modo organizzato, oltre che per condividere eventi con la Proponente.

==== Google Slides

Servizio di creazione di presentazioni multimediali, utilizzato dal team per assemblare i diari di bordo.

==== Google Sheets

Servizio di creazione di #glossary[spreadsheet], utilizzato dal team per la rendicontazione delle ore produttive impiegate da ciascun componente nel corso di uno sprint.

==== Google Meet
Servizio per creare e partecipare a videochiamate, utilizzato dal team per gli incontri telematici con la Proponente.

==== Online Gantt
Online software per creare diagrammi di Gantt, utilizzato dal Responsabile per delineare la distribuzione temporale delle attività pianificate per ogni sprint nella sezione di Pianificazione del _Piano di Progetto v1.0_.

==== Draw.io
Software per creare diagrammi e grafici di varia natura, utilizzato dagli Analisti per creare i diagrammi UML dei casi d'uso nella sezione Casi d'uso (@c.uso) dell'_Analisi dei Requisiti v1.0_.


== Sviluppo

=== Descrizione e scopo

Il processo di sviluppo rappresenta la serie di attività che il team #team deve svolgere affinché, successivamente, riesca nell'implementazione del prodotto software, rispettando i requisiti e le date di scadenza concordate con la Proponente. In particolare, si ha:
        - *Analisi dei Requisiti*;
        - *Progettazione*;
        - *Codifica*.

=== Analisi dei Requisiti

==== Descrizione 

L'_Analisi dei Requisiti v1.0_ viene redatta dagli Analisti e contiene:
        - *Introduzione*: esplicita lo scopo del documento, lo scopo del prodotto e i riferimenti utilizzati;
        - *Descrizione*: esplicita le funzionalità attese del prodotto e le caratteristiche degli utenti;
        - *Attori*: gli utilizzatori del prodotto finale;
        - *Casi d'uso*: individua gli attori e tutte le interazioni che possono avere con il sistema;
        - *Requisiti*: le caratteristiche da soddisfare e le fonti da cui sono state estratte.

==== Scopo   

Lo scopo dell'_Analisi dei Requisiti v1.0_ è definire in modo dettagliato e chiaro le funzionalità e le caratteristiche che il prodotto software dovrà soddisfare. Questo processo mira a comprendere a fondo le esigenze degli utenti, gli obiettivi del sistema e le condizioni in cui dovrà operare. Gli obiettivi principali dell'Analisi dei Requisiti includono:

        - Identificare e chiarire gli obiettivi e le finalità del prodotto che si intende sviluppare;
        - Fornire ai progettisti una base chiara e comprensibile per la definizione dell'architettura e del design del sistema;
        - Fornire una base per la pianificazione mediante i requisiti raccolti;
        - Facilitare la comunicazione tra Proponente e fornitori;
        - Fornire riferimenti per la verifica.


==== Identificazione dei casi d'uso <c.uso>

Un caso d'uso rappresenta un singolo scenario o interazione tra un attore e il sistema software, focalizzandosi sulle azioni compiute dall'attore e sulle risposte del sistema a tali azioni.
I casi d'uso sono identificati nel seguente modo:

         #align(center)[*UC[Numero].[Numero sottocaso] [Titolo]*]
        
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

        un requisito di qualità stabilisce gli standard e i criteri che il sistema deve soddisfare per garantire prestazioni, affidabilità, sicurezza e altri aspetti correlati alla qualità;

    - *Vincolo*:

        un requisito di vincolo è una restrizione o una condizione imposta al progetto.

==== Identificazione dei requisiti

I requisiti trovati hanno un codice univoco con la seguente sintassi:

        #align(center)[*R[Importanza][Tipo][Numero]*]

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

La definizione delle metriche seguenti si può trovare nella @metriche_qualità-prodotto.
#figure(
table(
      columns:(auto,auto),
      align: (x, y) => (center, center).at(x),
      fill:(_,row) =>if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Metrica*],[*Descrizione*],
      [*ROS*],[Requisiti Obbligatori Soddisfatti],
      [*RDS*],[Requisiti Desiderabili Soddisfatti],
      [*ROPS*],[Requisiti Opzionali Soddisfatti] 
),
caption:[Metriche Requisiti],
)

=== Progettazione 

==== Descrizione e scopo 

L'attività di progettazione è affidata ai Progettisti, i quali devono definire le caratteristiche del prodotto finale basandosi sui requisiti specificati nel documento _Analisi dei Requisiti v1.0_. 
La fase di progettazione segue l'analisi dei requisiti, dove sono definite le necessità e le aspettative per il prodotto. I Progettisti traducono queste informazioni in una struttura architetturale definita, organizzando il sistema in componenti specifici e definendo le interazioni tra di essi. In questo modo, la progettazione costituisce un passo essenziale nel percorso di sviluppo, contribuendo a trasformare i requisiti in un piano tangibile per la creazione del prodotto finale.

Si definiscono tre sottoattività: 

        + *_Technology Baseline_*: implica la selezione e la definizione delle tecnologie di base utilizzate per la realizzazione del sistema. Questo comprende decisioni relative a linguaggi di programmazione, librerie e framework. Tale processo porta alla creazione di un Proof of Concept (#glossary("PoC"));

                Include:
                - *Proof of Concept*: consiste nella creazione di una versione parziale del prodotto, includendo alcune delle funzionalità stabilite durante l'analisi dei requisiti. L'obiettivo è valutare la fattibilità del prodotto completo;
                - *scelte tecnologiche*: consiste nello stabilire quali tecnologie adottare per lo sviluppo del Poc, anche su consiglio della Proponente.
        + *_Progettazione Architetturale_*: definizione ad alto livello dell'architettura del sistema; si concentra sulla suddivisione del sistema in componenti e moduli, definendo le relazioni tra di essi e specificando le linee guida per l'organizzazione e l'interazione delle varie parti;
        + *_Product Baseline_*: segna un punto stabile nel processo di progettazione, in cui le specifiche tecniche, le funzionalità principali e l'architettura del prodotto sono definite in modo dettagliato e accettate dalle parti coinvolte. Include tutti gli elementi essenziali e i requisiti chiave del prodotto che devono essere soddisfatti, fornendo una base solida per lo sviluppo continuo del prodotto. Questo processo porta infine alla realizzazione di un _Minimum Viable Product_ (#glossary("MVP"));
                Include:
                - #glossary("Design Patterns");
                - Definizione delle classi;
                - Diagrammi UML che includono:
                        - classi;
                        - package;
                        - *sequenze*: utilizzato per descrivere uno scenario che costituisce una determinata sequenza di azioni in cui tutte le scelte sono state già effettuate;
                        - *attività*: diagramma comportamentale che illustra il flusso delle attività attraverso un sistema.
                - Test di Unità su ogni componente.

==== Metriche

La definizione delle metriche seguenti si può trovare nella @metriche_progettazione.

#figure(
 table(
      columns:(auto,auto),
      align: (x, y) => (center, center).at(x),
      fill:(_,row) =>if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Metrica*],[*Descrizione*],
      [*SFIN*],[Structure Fan In],
      [*SFOUT*],[Structure Fan Out]
      
),
caption:[Metriche progettazione],
)

==== Diagrammi UML dei casi d'uso

Un diagramma dei casi d'uso rappresenta uno strumento di modellazione ampiamente impiegato per documentare e delineare le funzionalità di un sistema. La sua utilità risiede nel tracciare i flussi operativi attraverso una rappresentazione visiva, descrivendo il modo in cui un utente interagisce con il sistema.

Gli scenari d'uso sono organizzati in sequenze di azioni, illustrando le operazioni necessarie per consentire a un utente di portare a termine una specifica attività (realizzare uno scopo), e sono interconnessi mediante linee. Questo tipo di diagramma risulta particolarmente prezioso nella progettazione di sistemi, in quanto offre un'illustrazione rapida e intuitiva delle dinamiche di lavoro e delle interazioni tra l'utente e il sistema.

È fondamentale notare che la rappresentazione fornita dai diagrammi dei casi d'uso non si addentra nei dettagli implementativi, poiché il loro scopo principale è descrivere la funzionalità, considerandola come un elemento esterno al sistema.

I diagrammi dei casi d'uso sono composti da:
        - *Attore*: rappresenta un agente esterno coinvolto nelle interazioni con il sistema. Si tratta di una qualsiasi entità in grado di interagire con il sistema, infatti ogni caso d'uso determina una funzionalità che viene messa a disposizione di tale attore, tuttavia, senza entrare nei dettagli implementativi.
                
                A livello di diagramma, l'attore è simboleggiato da un' icona umana stilizzata, identificabile mediante un'etichetta univoca e rappresentativa, posizionata al di sotto di tale figura.

                #figure(
                        image(
                                "assets/imgs/Attore.png",
                                width: 15%
                        ),
                        caption: "Figura rappresentante un attore."
                )

        - *Caso d'uso*: delinea le operazioni eseguibili dall'utente sul sistema. Un singolo caso d'uso si compone di una breve esposizione delle funzioni messe a disposizione del sistema per uno o più utenti nell'ambito di un software. In modo specifico, offre una descrizione dettagliata del comportamento dell'utente mentre interagisce con il software.

                Generalmente, un caso d'uso è costituito da una sequenza di situazioni che esplicitano le diverse eventualità che possono manifestarsi durante l'interazione tra l'utente e il software. La sua rappresentazione comprende un'identificazione univoca, espressa come UCx.y (dove x indica il numero del caso d'uso, e y indica il fatto che stiamo trattando un eventuale sotto-caso d'uso del caso d'uso UCx), seguita da una concisa ma completa descrizione della funzione stessa.

                Ogni caso d'uso discute i seguenti punti:
                        - *Attore principale*: l'attore che intende compiere lo scopo rappresentato dal caso d'uso;
                        - *Precondizioni*: stato in cui il sistema si deve trovare prima dell'avvio della funzionalità rappresentata dal caso d'uso;
                        - *Postcondizioni*: stato in cui il sistema si troverà dopo che l'utente avrà portato a termine lo scopo rappresentato dal caso d'uso;
                        - *Scenario principale*: descrizione accurata della funzionalità rappresentata dal caso d'uso;
                        - *Specializzazioni*: nel caso di uno use case generale, vengono indicati i codici dei casi d'uso che lo specializzano;
                        - *Inclusioni*: vengono specificati i codici dei casi d'uso che vengono inclusi nel caso d'uso trattato;
                        - *Estensioni*: vengono specificati i codici dei casi d'uso che rappresentano scenari secondari.

                Ciascun caso d'uso è connesso, attraverso una linea continua, agli attori che hanno autorizzazioni per accedere a quella particolare funzione.

                #figure(
                        image(
                                "assets/imgs/UseCase.png",
                                width: 70%
                        ),
                        caption: "Figura rappresentante un caso d'uso."
                )

In ogni diagramma dei casi d'uso possono essere definite:
        - *Generalizzazioni*: 
                il concetto di generalizzazione può essere esteso sia agli attori che ai casi d'uso. La generalizzazione di un attore si verifica quando un attore di livello superiore, dotato di abilità più generiche, viene specializzato in comportamenti più specifici nei sottostanti attori. Ogni attore sottostante eredita le funzionalità dal suo attore padre, integrandole con ulteriori aspetti rilevanti al proprio contesto.

                Per quanto riguarda i casi d'uso, i casi figli hanno la possibilità di aggiungere o modificare il comportamento dei casi d'uso ereditati dal caso padre. Tutte le funzionalità non ridefinite nei casi figlio mantengono la definizione ereditata. La generalizzazione degli attori e dei casi d'uso è simboleggiata da una freccia continua con triangolo vuoto bianco, che si estende da un elemento figlio a un elemento padre.
                #figure(
                        image(
                                "assets/imgs/GeneralizzazioneAttore.png",
                                width: 40%
                        ),
                        caption: "Figura rappresentante una generalizzazione tra attori."
                )
                #figure(
                        image(
                                "assets/imgs/GeneralizzazioneUseCase.png",
                                width: 70%
                        ),
                        caption: "Figura rappresentante una generalizzazione tra casi d'uso."
                )
        - *Inclusioni*: supponiamo che vi sia una relazione di inclusione tra un caso d'uso A e un caso d'uso B se ogni istanza del caso d'uso A deve necessariamente eseguire le istanze del caso d'uso B. Questo assegna al caso d'uso A la responsabilità di eseguire il caso d'uso B, eliminando la duplicazione e favorendo il riutilizzo di una struttura comune. La connessione di inclusione viene simboleggiata da una freccia tratteggiata che collega il caso d'uso A a tutti i casi d'uso inclusi, come nel caso del caso d'uso B nell'esempio. Sopra la freccia verrà annotata la direttiva "include".
                #figure(
                        image(
                                "assets/imgs/UseCaseInclude.png",
                                width: 70%
                        ),
                        caption: "Figura rappresentante un' inclusione tra casi d'uso."
                )
        - *Estensioni*: nel contesto dei diagrammi dei casi d'uso UML, la relazione di estensione indica una connessione tra due casi d'uso, A e B, segnalando che ogni istanza del caso d'uso A può condizionalmente eseguire anche il caso d'uso B. L'esecuzione del caso d'uso B avviene soltanto in specifiche circostanze o sotto condizioni particolari durante l'esecuzione del caso d'uso A, interrompendo temporaneamente il flusso del caso d'uso A. La responsabilità dell'esecuzione del caso d'uso esteso (B) ricade su chi estende (nel caso, il caso d'uso B). Questa relazione viene visualizzata graficamente con una freccia tratteggiata dal caso d'uso esteso (B) al caso d'uso base (A), con l'etichetta "extend".
                #figure(
                        image(
                                "assets/imgs/UseCaseExtend.png",
                                width: 70%
                        ),
                        caption: "Figura rappresentante un' estensione tra casi d'uso."
                )

==== Diagrammi UML delle classi    

Il diagramma delle classi è uno dei diagrammi UML che rappresenta la struttura statica di un sistema orientato agli oggetti. Esso visualizza le classi del sistema, insieme ai loro attributi, metodi e le relazioni tra di esse. Le classi sono rappresentate tramite rettangoli divisi in tre sezioni: la parte superiore contiene il nome della classe, la sezione centrale include gli attributi della classe e quella inferiore elenca i metodi.

        - *Nome*: nome della classe, scritto in grassetto, se la classe è astratta va in corsivo mantendo il grassetto;
        - *Attributi*: 
                #align(center)[*Visibilità* *Nome* : *Tipo* [Molteplicità] = {Default}] 

                *Legenda*:
                        - *Visibilità*: può essere di 3 tipi;
                                + Privata, viene indicata con il -;
                                + Protetta, viene indicata con il \#; 
                                + Pubblica, viene indicata con il +.
                        - *Nome*: il nome dell'attributo, se statico viene sottolineato;
                        - *Tipo*: rappresenta il tipo di dato dell'elemento;
                        - *Molteplicità*: quante istanze dell'elemento possono esistere in relazione ad altri elementi;
                        - *Default*: se configurato, indica il valore predefinito per l'elemento.
        - *Metodi*: 
                #align(center)[*Visibilità* *Nome*  *(Lista-Parametri)* : *Ritorno* ]

                *Legenda*:
                        - *Visibilità*: segue quanto sopra;
                        - *Nome*: nome del metodo, se statico viene sottolineato;
                        - *Lista-Parametri*: se la funzione prevede input, vengono separati tramite ",";
                        - *Ritorno*: che tipo di oggetto verrà ritornato.

I diagrammi delle classi sono interconnessi tra di loro attraverso varie frecce. Di seguito si elencano le possibili relazioni:

        - *Dipendenza*: una dipendenza normale tra due classi è indicata da una freccia tratteggiata con la punta, che punta dalla classe che dipende verso la classe dipendente. Questa dipendenza indica che un cambiamento nella classe dalla parte della freccia può influenzare la classe alla cui direzione punta la freccia;
        #figure(
                        image(
                                "assets/imgs/Dipendenza.png",
                                width: 70%
                        ),
                        caption: "Figura rappresentante la relazione di dipendenza."
                )

        - *Aggregazione*: una classe A contiene un oggetto B ma condivide la reference ad esso con altre classi. Vuol dire che A contiene dentro un campo di tipo B che viene assegnato da fuori. L'oggetto di tipo B può essere utilizzato anche da altre parti del sistema.Si usa una freccia a rombo vuoto, A rappresenta il contenitore, B il contenuto;
                #figure(
                        image(
                                "assets/imgs/Aggregazione.png",
                                width: 70%
                        ),
                        caption: "Figura rappresentante relazione di aggregazione."
                )
        - *Composizione*: una classe A contiene un oggetto di tipo B, nel senso che dentro ad A c’è un campo di tipo B.  A ha la responsabilità di creare e gestire B. La classe B dipende strettamente dalla classe A, infatti se quest'ultima viene eliminata anche la classe B viene cancellata. Si usa una freccia a rombo pieno, A rappresenta il contenitore, B il contenuto;
                #figure(
                        image(
                                "assets/imgs/Composizione.png",
                                width: 70%
                        ),
                        caption: "Figura rappresentante relazione di composizione."
                )

        - *Associazione*: le classi sono indipendenti l'una dall'altra. Una classe A contiene dei campi o istanze della classe B.
        Si può rappresentare la molteplicità di associazione mediante dei valori situati agli estremi della freccia.
        Viene rappresentata con una freccia;
                #figure(
                        image(
                                "assets/imgs/Associazione.png",
                                width: 70%
                        ),
                        caption: "Figura rappresentante relazione di associazione."
                )

        - *Generalizzazione*: ogni oggetto della classe B eredita le caratteristiche della classe A. L'oggetto B è anche un oggetto A. Si indica con una freccia vuota;
                #figure(
                        image(
                                "assets/imgs/Generalizzazione.png",
                                height:70%
                        ),
                        caption: "Figura rappresentante relazione di generalizzazione."
                )

        


=== Codifica 

==== Descrizione e scopo 

L'attività di codifica viene svolta dai Programmatori, i quali sono responsabili della traduzione delle decisioni progettuali nel codice sorgente.
I Programmatori operano all'interno di un contesto ben definito seguendo le linee guida stabilite durante la fase di progettazione architetturale. Questo approccio garantisce una coerenza nell'implementazione del design e l'applicazione di best practices, favorendo la creazione di un codice robusto, manutenibile e di alta qualità.

Nel perseguire gli obiettivi di qualità, i Programmatori sono tenuti a rispettare le metriche definite nel _Piano di Qualifica v1.0_.

==== Aspettative 

La fase di codifica è intrinsecamente orientata alla creazione di un prodotto software che soddisfi pienamente le esigenze e le aspettative della Proponente.
Di seguito sono elencate le principali aspettative:

        - Conformità alle specifiche;
        - Chiarezza e comprensibilità;
        - Ottimizzazione delle prestazioni;
        - Supplemento di test per verificare la correttezza e il funzionamento.

==== Stile di codifica   

Il team #team, nella decisione di realizzare il prodotto software, ha scelto di adottare il linguaggio di programmazione Python.
Questa scelta strategica è motivata da diverse considerazioni che conferiscono a Python un ruolo privilegiato all'interno del contesto di sviluppo.
La familiarità che molti membri del team hanno con Python è un elemento chiave. La mancanza di una curva di apprendimento ripida consente al team di concentrarsi direttamente sulla realizzazione del prodotto, senza spendere tempo significativo nell'apprendimento di un nuovo linguaggio. 
Python, inoltre, promuove uno stile di scrittura del codice uniforme e facilita la comprensione della struttura del programma, mediante la rigida struttura dell'identazione.

===== Lunghezza metodi  

Sono da preferire metodi di limitata lunghezza per diverse ragioni tra cui:
        - Leggibilità;
        - Manutenibilità;
        - Riusabilità;
        - Testabilità; 
        - Analisi statica semplificata.

===== Singola Responsabilità   

Ogni classe o singola funzione dovrebbe avere una sola responsabilità. Ciascuna entità deve svolgere un compito specifico e ben definito, garantendo così una singola ragione per essere modificata. Questa pratica non solo promuove la chiarezza e la manutenibilità del codice, ma contribuisce anche a ridurre la complessità ciclomatica del software.


===== Parametri per metodo    

Preferire l'uso di metodi con un numero limitato di parametri quando possibile. Questo approccio offre diversi vantaggi che contribuiscono alla chiarezza, manutenibilità e testabilità del codice.

===== Univocità dei nomi    

Tutte le variabili, i metodi e le classi dovranno avere un nome che li distinguono univocamente, per limitare la possibilità di ambiguità del codice.

===== Forzatura tipo ritorno   

In python, si adotta la pratica di utilizzare il tipo di ritorno forzato per ogni funzione o metodo, questo contribuisce ad una migliore robustezza del codice fornendo alcuni vantaggi:

        - Analisi statica avanzata;
        - Riduzione errori;
        - Contratto esplicito tra chiamante e funzione;
        - Facilità di manutenzione.


==== Metriche

La definizione delle metriche seguenti si può trovare nella @metriche_codifica.

#figure(
table(
      columns:(auto,auto),
      align: (x, y) => (center, center).at(x),
      fill:(_,row) =>if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Metrica*],[*Descrizione*],
      [*CCM*],[Complessità Ciclomatica per Metodo],
      [*CC*],[Code Coverage],
      [*ATC*],[Attributi per Classe],
      [*PM*],[Parametri per Metodo],
      [*LCM*],[Linee di Codice per Metodo]
),
caption: [Metriche Codifica],
)



#pagebreak()

= Processi di Supporto

== Documentazione

=== Descrizione e scopo

La documentazione è l'insieme di informazioni rappresentate sotto forma di testo scritto che accompagna un prodotto software, svolgendo un ruolo essenziale nella descrizione del prodotto per coloro che lo sviluppano, lo distribuiscono e lo utilizzano. Il suo obiettivo primario è facilitare l'attività di sviluppo ai membri del team durante l'intero ciclo di vita del progetto, garantendone la coerenza mediante il tracciamento di tutti i processi e le attività coinvolte. Ciò mira a migliorare la qualità del risultato finale e semplificare la manutenzione. L'implementazione di regole chiare e di una struttura uniforme non solo migliora la fruibilità e la comprensione, ma favorisce anche la collaborazione all'interno del team, contribuendo in modo significativo al successo complessivo del progetto software.

=== Lista Documenti

I documenti che verranno prodotti sono:

        - _Norme di Progetto v1.0_;
        - _Piano di Progetto v1.0_;
        - _Piano di Qualifica v1.0_;
        - _Analisi dei Requisiti v1.0_;
        - _Glossario v1.0_;
        - _Verbali_:
                + _Interni_;
                + _Esterni_.

=== Ciclo di vita dei documenti

Ogni documento segue le fasi del seguente #glossary[workflow]:
+ Si crea un branch per lo sviluppo del documento nell'apposita repository _Docs_ e si mette in uso.
+ Si copia dall'apposita repository `Templates` il template relativo al file che si deve redigere, e lo si inserisce nella cartella appropriata.
+ Si redige il documento o una sua sezione. Nel caso di documenti nuovi, in cui è necessario un elevato parallelismo di lavoro, è possibile usare Google Drive per la prima stesura e successivamente caricare il documento all'interno del branch.
+ Nel file `changelog.typ` si aggiunge una riga in coda, secondo il seguente formato: `<versione>,<data-modifica>,<descrizione-modifica>,<nome-autore>,<ruolo-autore>`; la versione segue le regole descritte nella @versionamento.
+ Si esegue la commit sul branch creato.
+ Si apre una pull request dal branch appena creato verso il branch `main`: se il documento non è pronto per la verifica, ma ha bisogno di ulteriori modifiche, si apre la pull request in modalità `draft`, altrimenti in modalità normale, spostando la issue nell'apposita corsia di stato "Ready to Review".
+ Per ulteriori modifiche richieste dal/dai verificatore/i si ripetono i punti, in ordine, dal punto 3 al punto 5.
+ Si elimina, solo quando la pull request viene chiusa o risolta, il branch creato.

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
La consueta nomenclatura per i documenti si ottiene unendo, attraverso un underscore (`_`), il nome del file in _CamelCase_ senza spazi (`NomeDelFile`) e la sua versione (`3.5`). Ad esempio `NormeDiProgetto_2.6.pdf`.
Nel caso di documenti il cui nome contiene una data, essa si inserisce dopo il nome, ma prima della versione, sempre separandolo con gli underscores, nella forma `ggmmaa` senza separatori tra i singoli componenti della data: `gg` rappresenta il giorno, sempre scritto in due cifre, allo stesso modo `mm` rappresenta il mese, mentre l'anno è rappresentato da `aa`, corrispondente alle ultime due cifre dell'anno corrente.

=== Versionamento <versionamento>
Il versionamento avviene secondo il seguente formato *x.y*:
- *y*: si incrementa una volta effettuata una modifica e la sua conseguente verifica;
- *x*: si incrementa quando si effettua la modifica definitiva in vista di una verifica di avanzamento, questo comporta l'azzeramento di y.

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

Il registro delle modifiche è un elenco dettagliato che tiene traccia di tutte le modifiche apportate al documento nel corso del tempo. 
È utile per tenere traccia dell'evoluzione del documento e per consentire a chiunque stia lavorando sul progetto di comprendere quali modifiche sono state apportate e quando.

Si compone di una tabella con l'intestazione: 
        - *Versione*: versione del documento;
        - *Data*: data della modifica apportata;
        - *Descrizione*: cosa è stato modificato o aggiunto al file;
        - *Autore*: l'autore della modifica;
        - *Ruolo*: ruolo dell'autore al momento della modifica.

==== Indice 

Nella pagina successiva al registro delle modifiche deve essere presente l'indice, utile per facilitare la ricerca e la navigazione all'interno del documento.

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
                - I nomi dei documenti con relativa versione;
                - I termini di glossario (seguiti da #sub[G]).
        - *Caratteri maiuscoli*: 
                - Le iniziali dei nomi;
                - Le lettere che compongono un acronimo;
                - Le iniziali dei ruoli svolti dai componenti del gruppo;
                - L'iniziale del termine "Proponente";
                - Prima lettera di ogni elenco puntato.

==== Elenchi puntati

Le voci di ogni elenco iniziano con lettera maiuscola e terminano con punto e virgola ';', eccetto l'ultima voce che termina con punto normale '.'.

==== Caption 

Ogni immagine o tabella deve avere obbligatoriamente una caption associata, utile per fornire una breve descrizione o spiegazione del contenuto visivo.

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

La definizione delle metriche seguenti si può trovare nella @metriche_documentazione.

#figure(
table(
      columns:(auto,auto),
      align: (x, y) => (center, center).at(x),
      fill:(_,row) =>if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Metrica*],[*Descrizione*],
      [*IG*],[Indice Gulpease],
      [*CO*],[Correttezza Ortografica]
),
caption:[Metriche Documentazione],
)

#pagebreak()

== Gestione della Configurazione

=== Descrizione e scopo

La gestione della configurazione (Configuration Management) è una pratica fondamentale nell'ambito dello sviluppo software, specialmente quando si tratta di gestire e controllare configurazioni complesse di prodotti. Essa riguarda il processo di identificazione e controllo delle componenti di un sistema, così come delle relazioni tra di esse, durante tutto il ciclo di vita del prodotto. Consente di mantenere la tracciabilità, la coerenza e la comprensione chiara delle relazioni tra le varie parti del sistema.

=== Issue Tracking System <its>

Come ITS si utilizza _Github_ che, attraverso le funzioni di Project, Issues e Pull requests, garantisce una struttura all'organizzazione di progetto.

Le #glossary[Corsie di Stato] descrivono lo stato attuale delle attività, all'interno del _Project_ nell'_ITS_ sono presenti:
/ Backlog: attività individuate da svolgere.
/ Ready: attività individuate per il completamento durante il prossimo #glossary[sprint].
/ In Progress: attività che sono in corso d'opera da parte dei redattori.
/ Ready to Review: attività svolte che sono pronte per essere verificate.
/ In Review: attività in corso di verifica da parte dei Verificatori.
/ Done: attività le cui modifiche sono state verificate e accettate.

=== Strumento di Condivisione

Per la condivisione veloce o la creazione di bozze si utilizza Google Drive. Uno dei suoi principali casi d'uso consiste nella collaborazione in tempo reale nella stesura di sezioni testuali ampie, da inserire successivamente nella documentazione (questo risulta particolarmente utile nel momento in cui il documento è alla sua prima stesura). Viene inoltre utilizzato come sistema per l'immagazzinamento di conoscenze acquisite durante lo svolgimento del progetto.

=== Tracciamento del Tempo Speso

Al fine di tracciare il tempo speso nel corso del progetto, nei diversi ruoli, si utilizza uno spreadsheet appositamente creato, disponibile all'interno di Google Drive. A fine giornata, ogni membro del team inserisce le proprie ore *produttive* svolte quel giorno, secondo la sua miglior stima del rapporto tra ore di orologio e ore produttive. Si inserisce una sola riga per ogni giornata e nella descrizione si aggiungono brevi titoli rappresentativi delle attività svolte.


=== Controllo di versione e repository

Come sistema di controllo di versione si utilizza Git.
 

Vengono utilizzate le seguenti repository:
        - #link("https://github.com/SWATEngineering/Docs"): questa repository viene impiegata dal team per condividere e revisionare il codice sorgente legato alla documentazione del progetto. Viene utilizzata per collaborare, revisionare e mantenere aggiornati i documenti di lavoro, consentendo ai membri del team di contribuire e gestire in modo efficiente la documentazione;

        - #link("https://github.com/SWATEngineering/SWATEngineering.github.io"): questa repository funge da piattaforma per i documenti compilati e approvati. Il sito web #link("https://swatengineering.github.io/") rappresenta la versione web della documentazione finale e approvata dal team. È utilizzata per presentare al pubblico una visione consolidata dei documenti di progetto;

        - #link("https://github.com/SWATEngineering/InnovaCity"): questa repository è dedicata alla condivisione e revisione del codice sorgente relativo al prodotto software "InnovaCity". È qui che il team lavora e collabora sul codice del prodotto stesso, consentendo una gestione centralizzata del lavoro di sviluppo e delle modifiche apportate al software.


All'interno dei repository _Docs_ e _Innovacity_ si utilizza il #glossary[Rebase workflow] come metodo di gestione, con l'utilizzo dei Feature branch per separare logicamente il lavoro da svolgere. Nel primo repository però, i Feature branch si derivano direttamente dal main, mentre nel secondo si derivano dal branch dev.
Questo impone quindi che, prima di andare ad effettuare la chiusura di una Pull request, si vada ad effettuare un _rebase_ del branch di derivazione, per rendere il nostro branch di sviluppo aggiornato rispetto alla base.

I _Feature branch_ vengono aperti a partire dalle issue create nell' _Issue Tracking System_ (vedi @its). Si procede poi ad associare una _Pull request_, a una o più issue collegate tra loro, per effettuare la verifica.

Nel caso del repository _InnovaCity_, il branch _main_ viene utilizzato per la pubblicazione di cambiamenti _major_, ovvero quando sono state implementate diverse funzionalità significative che contribuiscono all'avanzamento del progetto. In questa circostanza, è compito del Responsabile eseguire l'approvazione finale.

=== Sito Vetrina   

Il sito vetrina ospitato sulla seguente pagina #link("https://swatengineering.github.io/") è progettato per garantire un'esperienza aggiornata e intuitiva agli utenti. Grazie all'integrazione di una GitHub Action, il sito si aggiorna automaticamente ogni volta che vengono apportate modifiche al branch principale "main" del repository Docs.
Lo script, realizzato in JavaScript, avvia una richiesta GET a un server esterno per ottenere la struttura aggiornata delle directory e dei file. Questa operazione consente al sito di rimanere sempre allineato con le modifiche apportate al repository principale, fornendo agli utenti una rappresentazione accurata e immediata della sua struttura.
Per garantire la coerenza e la tempestività delle informazioni, il servizio esterno esegue un aggiornamento periodico, verosimilmente ogni 5 minuti. Questo processo automatico consente al sito di riflettere dinamicamente qualsiasi modifica rilevante nel repository Docs, garantendo un'esperienza utente sempre aggiornata e completa.


== Verifica

=== Descrizione e Scopo

Qualsiasi processo istanziato durante lo svolgimento del progetto, prima di potersi considerare completato, dev’essere sottoposto a verifica.
Lo scopo primario di questo processo è garantire la correttezza dei prodotti e la loro adesione ai vincoli di qualità individuati ed elencati all'interno del documento _Piano di Qualifica v1.0_. 
Il _Piano di Qualifica v1.0_ funge da punto di riferimento per il Verificatore: in esso vengono fornite tutte le linee guida a cui il Verificatore deve aderire  garantendo uniformità e coerenza al processo di verifica e garantendone la ripetibilità.


=== Strumenti

Gli strumenti adottati per agevolare il processo di verifica sono i seguenti:

==== GitHub <revisione_pull>

GitHub offre una funzionalità di _review_ all'interno del meccanismo di _pull request_, permettendo al Verificatore di visualizzare facilmente le ultime modifiche apportate al prodotto. Il Verificatore inserisce commenti specifici che indicano le correzioni o le migliorie necessarie e, al termine della review, la invia richiedendo le modifiche indicate. In seguito all'intervento correttivo dell'autore, il Verificatore esegue ulteriori revisioni fino a quando il documento non presenta più errori e rispetta i criteri di conformità richiesti.
A seguito del processo di verifica il Verificatore si occupa di spostare la issue nella corsia di stato adeguata all'interno della _Kanban Board_:
- _done_ qualora la revisione abbia avuto esito positivo; 
- _in progress_ in caso siano richieste modifiche.

L'utilizzo delle review in GitHub non solo facilita il tracciamento del processo di verifica, ma consente anche al team di accedere e consultare facilmente l'intera cronologia del codice o del documento di interesse all'interno della #glossary[repository] del progetto. Questo approccio garantisce un processo di verifica trasparente, tracciabile e conforme alle linee guida stabilite.
Inoltre GitHub impedisce  l'unione dei rami oggetto di pull request fino a quando l'ultimo commit non viene verificato e approvato.
Ciò garantisce che ogni prodotto, che viene integrato al ramo principale, sia effettivamente revisionato da almeno un membro del team, riducendo il rischio di introduzione di errori. 
Il Verificatore, a seguito di una revisione positiva, accetta la pull request con la metodologia "squash and merge". Nell'eventualità in cui il branch presenti dei conflitti, l'autore è responsabile di risolverli prima di procedere con l'unione del branch. Il Verificatore si occupa, successivamente, dell'eliminazione sicura del branch dopo il merge.  

===== Elementi Esterni al Repository

Potrebbero esservi delle issue aperte all'interno dell' #glossary("ITS") che non hanno un corrispondente documento o prodotto in generale, all'interno del repository. Per queste, il ciclo di vita segue il normale flusso attraverso i diversi stati elencati nella @its. La verifica viene effettuata attraverso i commenti della issue stessa, che avranno la seguente forma:
- richiesta cambiamenti:
  ```
  [REV]
  - richiesta 1;
  - richiesta 2;
  ```
- approvazione:
  ```
  [REV] done
  ```
=== Analisi statica

L'analisi statica rappresenta un'esplorazione approfondita del codice o della documentazione associata al prodotto. Questa metodologia mira a individuare potenziali problemi o irregolarità, senza mai eseguire effettivamente il sistema software. Nel caso della documentazione, l'analisi statica si concentra sulla struttura, sulla coerenza, sulla completezza e sulla chiarezza del testo. In particolare, verifica la presenza di errori grammaticali, di formattazione e concettuali, garantendo un livello ottimale di qualità nel materiale consegnato. 

Il verificatore, nel contesto della documentazione o del codice, può condurre l'analisi statica tramite due metodologie: #glossary[walkthrough] o #glossary[inspection]. Nel caso del nostro progetto, la metodologia prediletta è l' #glossary[inspection].

==== Inspection

In questo processo, il Verificatore adotta un approccio strutturato, seguendo una sequenza di passaggi ben definiti. Utilizza liste di controllo per esaminare in dettaglio il documento o il codice. Per dettagli specifici sulle checklist usate, si rimanda al documento _PianoDiQualifica\_v1.0_. 

===== Walkthrough

Contrariamente all'#glossary[inspection], il #glossary[walkthrough] è un approccio più esplorativo e che lascia maggiore spazio alla collaborazione tra l’autore e il Verificatore. Questa metodologia prevede una lettura a pettine del prodotto con l'obiettivo di analizzare struttura e contenuto nel loro insieme. 

La decisione del team di preferire il metodo #glossary[inspection] è giustificata dall'alto grado di rigore che questo approccio offre e dalla conseguente maggiore efficacia nell' individuazione di tutte le inconsistenze. L'#glossary[inspection] fornisce una revisione più strutturata e dettagliata,  guidata da liste di controllo specifiche, contribuendo a garantire una maggiore completezza e coerenza.
Tuttavia, il metodo #glossary[walkthrough] conserva la sua rilevanza e rimane una valida alternativa di cui ci si può avvalere specialmente nelle fasi iniziali e finali del lavoro su un determinato prodotto: l’approccio pragmatico del metodo risulta infatti adeguato a rilevare criticità e peculiarità che potrebbero non essere rilevate da metodi più formali.  

==== Analisi dinamica

L'analisi dinamica nel contesto dello sviluppo software si concentra sull'osservazione e valutazione del comportamento del sistema durante l'esecuzione. Questa metodologia è specificamente rivolta al prodotto software risultante dal processo di codifica.
Nel processo di sviluppo, l'analisi dinamica è attuata attraverso varie categorie di test. I test, derivati dai requisiti, siano essi funzionali o non funzionali, rendono il processo di analisi dinamica ripetibile. Questo significa che è possibile eseguire i test più volte con gli stessi input e condizioni, ottenendo risultati coerenti e affidabili. La ripetibilità dei test è fondamentale per confermare la coerenza delle funzionalità del software in diverse situazioni e sotto diverse condizioni operative. La definizione e l'esecuzione dei test seguono i principi del #glossary[Modello a V].
Per queste ragioni, l'analisi dinamica non può essere applicata alla documentazione.

Il Verificatore assume l'impegno di elaborare casi di test per ciascuna delle seguenti categorie, garantendo una copertura completa e dettagliata del software:
- Test di unità; 
- Test di integrazione; 
- Test di sistema; 
- Test di accettazione.

La totalità dei test individuati viene riportata all'interno del documento _PianoDiQualifica\_v1.0_.
In sede di verifica, sulla base del dominio esaminato, il Verificatore è tenuto ad eseguire tali test in maniera rigorosa e a riportarne gli esiti all'interno del _PianoDiQualifica\_v1.0_. 

==== Test di Unità  

Il test di unità è una fase del processo di testing software che si concentra sulla verifica delle singole unità o componenti del software. Un'unità è la più piccola parte di un'applicazione che può essere testata isolatamente.
Gli obiettivi principali:

        - Testare ogni unità in modo separato, isolando le influenze esterne e garantendo che ciascuna parte del software funzioni correttamente da sola;
        - Accertarsi che ciascuna unità esegua le operazioni specificate nel suo design;
        - Identificare precocemente i possibili errori.

I test di unità si dividono principalmente in due categorie:

        - *Test Funzionali*: verificano che ciascuna unità esegua le funzioni specificate nel design, concentrandosi sulla logica interna dell'unità e testando i casi in cui la funzione produce i risultati desiderati;
        - *Test Strutturali*: verificano la struttura interna dell'unità, compresa la logica di controllo e il flusso dei dati, esaminando il codice sorgente dell'unità.

==== Test di Integrazione   

I test di integrazione, eseguiti successivamente ai test unitari, sono cruciali per valutare il comportamento delle unità software quando vengono combinate. Una volta confermato il corretto funzionamento delle singole unità in isolamento, i test di integrazione mirano a identificare possibili problemi nelle interazioni tra le unità integrate. Questi test, automatizzati il più possibile, verificano se le componenti del software collaborano efficacemente e se il sistema integrato soddisfa le specifiche di progetto. L'obiettivo è garantire che, quando le unità sono combinate, il software funzioni senza intoppi e risponda alle esigenze dell'applicazione in modo coerente.

==== Test di Sistema 

I test di sistema vengono definiti durante la fase di Analisi dei Requisiti con l'obiettivo di misurare la copertura dei requisiti specificati nel capitolato d'appalto. Questa fase del processo di testing software mira a verificare l'intero sistema come un'entità unificata. Durante il test di sistema, il software viene valutato nella sua completezza, con l'obiettivo di accertare che tutte le componenti integrate funzionino insieme in modo coerente per soddisfare gli obiettivi e i requisiti del sistema.
Per la definizione dei test si rimanda al _Piano di Qualifica v1.0_.

==== Test di accettazione  

Il superamento dei test di accettazione è fondamentale poiché dimostra il soddisfacimento del committente rispetto al prodotto software. L'esito positivo di questi test fornisce l'approvazione finale e la conferma che il software sia conforme alle aspettative. Solo dopo il superamento dei test di accettazione il team #team può procedere con il rilascio ufficiale del prodotto, garantendo che sia pronto per l'utilizzo nell'ambiente operativo previsto.
Per la definizione dei test si rimanda al _Piano di Qualifica v1.0_.


==== Classificazione dei test

I test vengono identificati in base alla loro tipologia e tramite un codice numerico. 
Nello specifico devono avere la seguente forma: *T[Tipologia Test] [Codice]*

Tipologia: 
- *U*: unità; 
- *I*: integrazione;
- *S*: sistema;
- *A*: accettazione.

Il codice numerico è seriale all'interno della categoria.

==== Stato dei test

Nella sezione relativa ai test nel _Piano di Qualifica v1.0_ a ogni test viene affiancato il suo stato: 
- *N-A*: Il test non è applicabile al contesto attuale o alle funzionalità correnti; 
- *N-I*: Il test non è stato implementato; 
- *Passato*: Il test ha dato esito positivo;  
- *Non Passato*: il test ha dato esito negativo. 


== Gestione della Qualità 

=== Descrizione 

La gestione della qualità è un insieme di processi e attività volte a garantire che un prodotto soddisfi gli standard di qualità definiti, assicurando che il prodotto sviluppato sia affidabile ed efficiente.  È fondamentale garantire che il prodotto soddisfi a pieno i requisiti funzionali e non, stabiliti durante la fase di progettazione.

=== Obiettivi 

La gestione della qualità si propone di raggiungere i seguenti obiettivi:

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

=== Struttura obiettivi   

Nel _Piano di Qualifica v1.0_ sono descritti gli obiettivi di ciascuna metrica mediante delle tabelle organizzate secondo questa struttura:

   - *Metrica*: il codice della metrica seguendo il codice identificativo;
   - *Descrizione*: il nome della metrica;
   - *Valore di accettazione*: valore considerato accettabile;
   - *Valore ideale*: valore ideale che dovrebbe essere assunto dalla metrica.

=== Grafici Metriche

Per realizzare i grafici relativi alle metriche e all'andamento del progetto, si usa Google Sheets.
La descrizione delle metriche usate e  si trova nella  @metriche.

= Processi Organizzativi

== Gestione Organizzativa

=== Decisioni

Per poter prendere una qualsiasi decisione è necessario vi siano due condizioni:
+ Si deve raggiungere il #glossary[quorum] di quattro persone su sei;
+ La decisione deve essere verbalizzata e motivata.

=== Pianificazione

==== Descrizione e scopo

Il Responsabile assume il ruolo cruciale di pianificare dettagliatamente gli obiettivi per ciascuno sprint fino alla conclusione del progetto. Questo implica una distribuzione coerente del lavoro in linea con le scadenze fissate per le revisioni RTB, PB e CA. Il suo compito principale consiste nel delineare chiaramente come il team dovrebbe gestire e completare le attività relative allo sviluppo del software e alla redazione della documentazione in periodi di tempo specifici.

Oltre a definire gli obiettivi per ogni sprint, il Responsabile si occupa di stimare accuratamente il tempo necessario per ciascuna attività e di pianificare la distribuzione dei ruoli all'interno del team. Questa pianificazione è sensata rispetto all'andamento generale del progetto e agli obiettivi imminenti. Queste previsioni vengono formalizzate nel _Piano di Progetto v1.0_, diventando il punto di riferimento durante l'evento di Sprint Planning per definire gli obiettivi del successivo sprint.

Eventuali variazioni nella distribuzione dei ruoli, rispetto alla pianificazione iniziale, vengono documentate e giustificate nel *Consuntivo* del _Piano di Progetto v1.0_. Questo approccio consente al team di adattarsi in modo flessibile alle esigenze emergenti, mantenendo costantemente un quadro chiaro delle variazioni e delle ragioni che sottendono a tali modifiche.

==== Documentazione Fine Sprint

Il Responsabile è incaricato di sviluppare un preventivo dettagliato per le successive due settimane subito dopo la conclusione dello sprint attuale, fornendo una guida chiara al team su aspettative e obiettivi.

Nel contesto della gestione dello sprint, il Responsabile si impegna anche a compilare un consuntivo dettagliato dello sprint appena concluso. Si analizzano le attività svolte, i tempi impiegati rispetto alle stime previste e qualsiasi deviazione dai piani originali. Tale consuntivo rappresenta una preziosa fonte di apprendimento per il team, consentendo di identificare aree di miglioramento e di ottimizzare la pianificazione futura.

Per garantire un monitoraggio efficace delle prestazioni, il Responsabile utilizza e calcola le metriche, presenti nel documento _Piano di Qualifica v1.0_, rispetto allo sprint appena concluso, valutando l'efficacia del processo e apportando eventuali correzioni o miglioramenti per il successo continuo del progetto.

==== Consuntivo   

È stato sviluppato uno script in Python, integrato con Typst, per semplificare la generazione automatica di tabelle e grafici relativi al consuntivo di ogni singolo sprint del progetto. L'automazione coinvolge l'estrazione dei dati dal foglio di calcolo condiviso, dove vengono registrate le ore produttive del team. I dati vengono successivamente organizzati per sprint e archiviati in file CSV.

L'elaborazione comprende la creazione di un DataFrame consolidato che rappresenta le ore lavorate per ogni ruolo e membro del team durante uno sprint, includendo anche i costi associati. I risultati di questa analisi vengono salvati in un file CSV.

Per visualizzare i dati aggiornati relativi a ciascuno sprint, è possibile utilizzare le seguenti funzioni all'interno del file:

\#rendicontazioneOreAPosteriori(sprintNumber: "number")
\#rendicontazioneCostiAPosteriori(sprintNumber: "number")

Dove "number" rappresenta il numero specifico dello sprint di interesse. Queste funzioni consentono di ottenere report aggiornati sulla distribuzione delle ore per ruolo e persona, nonché sui costi associati, semplificando la gestione.



==== Ruoli Progetto

Durante il periodo di sviluppo del progetto, ciascun membro assume sei ruoli distinti, con compiti diversificati, al fine di garantire una gestione completa ed efficace delle diverse fasi e aspetti del lavoro. Questi ruoli contribuiscono a promuovere la collaborazione sinergica e l'ottimizzazione delle risorse all'interno del team.

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
         - Gestione del versionamento dei documenti;
         - Stesura e avanzamento del documento _Piano di Qualifica v1.0_.

===== Analista
     
     Figura professionale che si occupa di analizzare, comprendere e definire i requisiti e le specifiche di un sistema software prima che venga sviluppato. Questa figura svolge un ruolo fondamentale nel processo di sviluppo del software, contribuendo a garantire che il prodotto finale soddisfi le esigenze e le aspettative degli utenti e della Proponente.

     I suoi compiti:

        - Studio del contesto applicativo e relativa complessità;
        - Specifica dei casi d'uso per comprendere in dettaglio i requisiti funzionali del sistema;
        - Raccolta dei requisiti per definire le necessità e le funzionalità richieste;
        - Stesura del documento _Analisi dei Requisiti v1.0_;
        - Creazione diagrammi UML;

===== Progettista

        Figura professionale specializzata nella progettazione architetturale e strutturale di sistemi. La sua responsabilità principale è definire la configurazione, la disposizione e l'organizzazione dei vari componenti del sistema, concentrandosi su come questi elementi interagiscono tra loro per raggiungere determinati obiettivi di funzionalità, prestazioni e scalabilità.

        I suoi compiti sono:

        - Scelta degli aspetti tecnici e tecnologici;
        - Progettazione architetturale che miri all'economicità e alla manutenibilità del sistema;
        - Ottimizzazione delle prestazioni usando algoritmi efficienti e gestione memoria;
        - Gestione dei rischi: cerca di mitigare problemi che possono sorgere durante lo sviluppo;
        - Redazione del documento _Specifiche Tecniche_.

===== Programmatore

        Figura professionale incaricata di trasformare le specifiche tecniche in codice eseguibile, garantendo un'implementazione efficiente e accurata delle funzionalità richieste dal progetto.

        I suoi compiti:

        - Traduzione delle specifiche tecniche in codice funzionante;
        - Scrittura di codice chiaro, leggibile e mantenibile;
        - Creazione di test per la verifica del software;
        - Ampliamento delle _Specifiche Tecniche_ conforme alle esigenze del progetto.
        - Risoluzione di bug e problemi di performance;
        - Realizzazione del _Manuale Utente_;
        - Collaborazione con il team per l'integrazione del codice e il mantenimento della coerenza del progetto.

===== Verificatore

        Figura professionale che si occupa di esaminare il lavoro prodotto dagli altri membri del team.

        I suoi compiti:

        - Revisione e valutazione della documentazione prodotta dal team;
        - Analisi critica del codice per individuare errori, discrepanze o possibili miglioramenti;
        - Identificazione e segnalazione di problemi;
        - Collaborazione con il team per garantire che il lavoro sia conforme alle linee guida e agli standard richiesti.

==== Ticketing    

L'amministratore crea e gestisce le varie task in modo tale che si sappia quello che si deve fare durante lo sprint e ogni mebro può visualizzare il progresso svolto.

Si segue questa metodo:
      + L'amministratore crea la issue su Github;
      + Assegna il task al membro, con la relativa priorità e grandezza;
      + Imposta una data di inizio e fine del task e lo marca nella corsia Ready;
      + Assegna l'issue alla milestone dello sprint attuale;
      + Il membro incaricato della task, appena inizia a lavorarci la sposta nella corsia In Progress;
      + A task concluso viene spostata nella corsia Ready To Review;
      + Successivamente il Verificatore segue i passi definiti nella @revisione_pull.

Ogni issue è composta da:

        - *Titolo*: titolo significativo;
        - *Descrizione*: una breve descrizione o checklist delle cose da fare;
        - *Asignee*: membro/membri incaricati;
        - *Priority*: la priorità, può essere:
                        + Low;
                        + Medium;
                        + High;
                        + Urgent.
        - *Size*: la grandezza del lavoro da svolgere:
                        + Tiny;
                        + Small;
                        + Medium;
                        + High;
                        + Large;
        - *intervallo Temporale*: una data di inizio e una di fine;
        - *Milestone*: milestone associata alla issue, se il completamento non è possibile entro lo sprint attuale, è necessario spostare l'issue nella milestone successiva.

==== Cambio dei ruoli

Per garantire che ogni membro svolga almeno una volta tutti i ruoli menzionati, il team si impegna a cambiarli ogni settimana.

=== Procedure 

==== Gestione delle comunicazioni

===== Comunicazioni Interne 

Riguardano esclusivamente i membri del Team e si svolgono tramite:

        - *_Whatsapp_*: utilizzato per messaggistica istantanea e una comunicazione veloce;
        - *_Discord_*: piattaforma utilizzata per:
                + Creare server suddivisibili in vari canali testuali o vocali, dove verranno svolte le riunioni;
                + Supplementare la comunicazione all'interno della piattaforma con funzionalità offerte da servizi esterni quali GitHub.

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
                + Pianificazione attività per la settimana (valutate rispetto a quanto pianificato nel _Piano di Progetto_) e assegnazione issue.
                
        Alla fine dell'incontro:
                + Il Responsabile ha il compito della stesura del verbale interno, fornendo una sintesi dei punti salienti dell'incontro. 

Gli incontri hanno due modalità:

        - *Fisici*: per gli stand-up meeting quotidiani (#glossary("Daily Scrum")) di 5 minuti in cui si discutono brevemente le attività completate il giorno precedente e si espongono le attività pianificate per il futuro;
        - *Virtuali*: si svolgono chiamate o video di gruppo in cui si discutono eventuali dubbi o difficoltà riscontrate. Lo strumento adatto per questo scopo è Discord.

===== Incontri Esterni 

Negli incontri esterni i partecipanti includono i membri del team e i referenti della Proponente. Questi incontri sono pianificati in concomitanza con l'inizio e la fine dello sprint. Durante queste sessioni, i partecipanti del team hanno l'opportunità di presentare gli sviluppi recenti, condividere i progressi raggiunti e discutere eventuali sfide o questioni emerse nel corso del lavoro. 
In aggiunta, è possibile richiedere sessioni di formazione mirate su tecnologie specifiche, offrendo al team l'opportunità di approfondire la comprensione di una particolare tecnologia, imparare le _best practice_ e acquisire competenze più avanzate.
Il Responsabile ha il compito della stesura del verbale esterno, che viene successivamente convalidato, con firma, dalla Proponente.

=== Metriche 

La definizione delle metriche seguenti si può trovare nella @metriche_fornitura.
#figure(
table(
      columns:(auto,auto),
      align: (x, y) => (center, center).at(x),
      fill:(_,row) =>if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Metrica*],[*Descrizione*],
      [*BAC*],[Budget At Completion],
      [*EV*],[Earned Value],
      [*PV*],[Planned Value],
      [*SPI*],[Schedule Performance Index],
      [*SV*],[Schedule Variance]
),
caption:[Metriche Fornitura],
)

#pagebreak()
= Metriche per la qualità <metriche>

== Metriche per la qualità di processo <metriche_qualità-processo>

=== Fornitura <metriche_fornitura>

        - *BAC*: Budget At Completion - indica il budget totale pianificato per il completamento del progetto;

        - *EV*: Earned Value - rappresenta il valore prodotto dal progetto ossia il valore dei #glossary("deliverable") rilasciati fino al momento della misurazione in seguito alle attività svolte

                Formula:  $"EV" = "Percentuale di completamento del lavoro" dot "BAC"$;

        - *PV*: Planned Value - il valore del lavoro pianificato fino a un dato momento

                Formula: $"PV" = "Percentuale di pianificazione del lavoro" dot "BAC"$;

        - *AC*: Actual Cost - il costo effettivo sostenuto fino a un dato momento;

        - *CPI*: Cost Performance Index - misura l'efficienza del costo del lavoro svolto fino a un dato momento
                
                Formula: $"CPI" = "EV" / "AC"$;

        - *SPI*: Schedule Performance Index - misura l'efficienza del tempo rispetto alla pianificazione del progetto. Fornisce un indicatore numerico che rappresenta il rapporto tra il lavoro effettivamente eseguito (o il valore guadagnato) e il lavoro pianificato fino a un determinato punto nel tempo. Aiuta a valutare quanto il progetto sta rispettando il programma pianificato

                Formula: $"SPI" = "EV" / "PV"$;

        - *EAC*: Estimated at Completion - revisione del valore stimato per la realizzazione del progetto, ossia il BAC rivisto allo stato corrente del progetto

                Formula: $"EAC" = "BAC" / "CPI"$;

        - *ETC*: Estimated To Completion - stima del costo aggiuntivo necessario per completare il progetto

                Formula: $"ETC" = "EAC" - "AC"$;

        - *VAC*: Variance at Completion - la differenza tra il budget previsto e il budget attuale alla fine del progetto

                Formula: $"VAC" = "BAC" - "EAC"$;

        - *SV*: Schedule Variance - indica se si è in linea, in anticipo o in ritardo rispetto alla schedulazione delle attività di progetto pianificate

                Formula: $"SV" = "EV" - "PV"$;

        - *CV*: Cost Variance - la differenza tra il valore del lavoro effettivamente svolto e il costo effettivo del lavoro svolto fino a un dato momento
                
                Formula: $ "CV" = "EV" - "AC"$;

        - *BV*: Budget Variance - indica se alla data corrente si è speso di più o di meno rispetto a quanto inizialmente previsto nel budget
                
                Formula: $"BV" = "PV" - "AC"$.

=== Progettazione <metriche_progettazione>

        - *SFIN*: Structure Fan In - rappresenta il numero di moduli o componenti che chiamano un modulo o una funzione specifica; un fan-in elevato indica che molte parti del sistema dipendono da un particolare modulo. Questo può essere un segno positivo di riusabilità, in quanto il modulo è utilizzato in molte parti del sistema;

        - *SFOUT*: Structure Fan Out - rappresenta il numero di moduli o funzioni chiamati da un modulo o una funzione specifica; un fan-out elevato può indicare che un modulo ha molte dipendenze da altri moduli. Questo può portare a una maggiore complessità del sistema, poiché le modifiche in un modulo possono richiedere modifiche in molti altri moduli;


=== Codifica <metriche_codifica>

      -  *CCM*: Complessità Ciclomatica per Metodo - quantifica la complessità del codice misurando il numero di percorsi linearmente indipendenti attraverso il grafo di controllo di flusso del metodo. Più è alta la complessità ciclomatica, maggiore è la complessità del codice

                Formula: $"MCCM" = "e" − "n" + 2$, con:

                        - e: numero di archi del grafo del flusso di esecuzione del metodo;
                        - n: numero di vertici del grafo del flusso di esecuzione del metodo.

        - *CC*: Code Coverage - numero di linee di codice convalidate con successo nell'ambito di una procedura di test

                Formula: $"MCC" = "linee di codice percorse" / "linee di codice totali" dot 100$;

        - *PTCP*: Passed Test Cases Percentage - rappresenta la percentuale di casi di test che sono stati eseguiti con successo rispetto al totale dei casi di test previsti

                Formula: $"PTCP" = "test superati" / "test totali" dot 100$;

        - *FTCP*: Failed Test Cases Percentage - rappresenta la percentuale di casi di test che non sono stati superati rispetto al totale dei casi di test previsti

                Formula: $"FTCP" = "test falliti" / "test totali" dot 100$;
        
        - *ATC*: Attributi per Classe - rappresenta il numero di attributi appartenenti ad una classe;

        - *PM*: Parametri per Metodo - rappresenta il numero di parametri appartenenti ad un metodo;

        - *LCM*: Linee di Codice per Metodo - rappresenta il numero di linee di codice che costituiscono un metodo.

=== Documentazione <metriche_documentazione>

        - *IG*: Indice Gulpease - metrica utilizzata per valutare la leggibilità di un testo in lingua italiana.
             L'Indice Gulpease tiene conto di due variabili linguistiche: la lunghezza delle parole e la lunghezza delle frasi. La formula per calcolare l'indice è la seguente:

             $ "IG" = 89 + (300 dot "Nf" - "Nl")/"Np"$, con:

                - *Nf* \u{27F6} indica il numero delle frasi;
                - *Nl* \u{27F6} indica il numero delle lettere;
                - *Np* \u{27F6} indica il numero delle parole.

                L'indice fornisce un punteggio che varia da 0 a 100. Di seguito le possibili interpretazioni:

                        - 0-29: Testo difficile da leggere;
                        - 30-49: Testo leggibile con sforzo;
                        - 50-59: Testo abbastanza leggibile;
                        - 60-69: Testo leggibile;
                        - 70-79: Testo facile da leggere;
                        - 80-89: Testo molto facile da leggere;
                        - 90-100: Testo estremamente facile da leggere. 

        - *CO*: Correttezza ortografica - numero errori grammaticali ed ortografici in un documento.

== Metriche per la qualità di prodotto <metriche_qualità-prodotto>

        - *ROS*: Requisiti Obbligatori Soddisfatti - la percentuale di requisiti obbligatori soddisfatti dal prodotto

                Formula: $"ROS" = "requisiti obbligatori soddisfatti" / "requisiti obbligatori totali" dot 100$;

        - *RDS*: Requisiti Desiderabili Soddisfatti - la percentuale di requisiti desiderabili soddisfatti dal prodotto

                Formula: $"RDS" =  "requisiti desiderabili soddisfatti" / "requisiti desiderabili totali" dot 100$;

        - *ROPS*: Requisiti Opzionali Soddisfatti - la percentuale di requisiti opzionali soddisfatti dal prodotto

                Formula: $"ROPS" = "requisiti opzionali soddisfatti" / "requisiti opzionali totali" dot 100$;

        - *FU*: Facilità di utilizzo - quantità di click che l'utente deve effettuare per raggiungere un obiettivo desiderato;

        

        
