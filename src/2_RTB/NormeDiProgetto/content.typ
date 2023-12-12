#import "functions.typ": glossary, team

/*************************************/
/*    INSERIRE SOTTO IL CONTENUTO    */ 
/*************************************/

= Introduzione

== Glossario
Al fine di evitare possibili ambiguità relative al linguaggio utilizzato nei documenti, viene
fornito il _Glossario_, nel quale sono presenti tutte le definizioni di termini aventi uno
specifico significato che vuole essere disambiguato. Tali termini, sono scritti in _corsivo_ e marcati con una #sub("G") a pedice.
Un'attività che comprende l'inserimento di un termine di glossario può considerarsi conclusa, nella sua interezza, solo nel momento in cui il termine viene scritto e spiegato nel _Glossario_.

== Scopo del Documento
Il presente documento ha come scopo la definizione delle #glossary[best practices] e del #glossary[way of working] che ogni componente del #team ha l'obbligo di rispettare durante l'intero svolgimento del progetto. In questo modo si prova a garantire un metodo di lavoro omogeneo, verificabile e miglorabile nel tempo.

#pagebreak()

= Processi Primari

== Fornitura

=== Descrizione e scopo

Il processo di fornitura si propone di dettagliare le attività del fornitore per comprendere e soddisfare le richieste della Proponente.
Dopo la completa comprensione delle esigenze, il fornitore, in collaborazione con la Proponente, stabilisce, tramite contratto, la data di consegna del prodotto. Successivamente, viene redatto il Piano di Progetto per scaglionare le varie attività da svolgere, garantendo un chiaro processo di sviluppo del prodotto finale. L'obiettivo principale è soddisfare in modo chiaro le richieste della Proponente, evitando possibili incomprensioni, attraverso una collaborazione continua.

Il processo è caratterizzato da varie fasi:

        - Determinare chiaramente i bisogni soddisfatti dal prodotto finale;
        - Contrattazione: 
                + Ottenere feedback sulle tecnologie utilizzate;
                + Chiarire dubbi o difficoltà riscontrate;
                + Richiedere incontri di formazione sulle tecnologie consigliate per ottimizzare lo sviluppo.
        - Stima dei costi;
        - Continua verifica e controllo;
        - Completamento e consegna.

=== Documenti

==== Piano di progetto

Documento redatto dal responsabile che offre una visione dettagliata dell'intero processo di sviluppo di un progetto, fornendo al team coinvolto una guida approfondita per mantenere l'allineamento con gli obiettivi, gestire le risorse in modo efficace e affrontare le sfide che potrebbero emergere durante lo sviluppo del progetto.

Si compone di:

        - *Analisi dei rischi*:   identifica, valuta e gestisce i potenziali rischi che potrebbero influenzare il successo di un progetto o di un'attività. È essenziale per anticipare e affrontare le sfide che potrebbero emergere durante lo sviluppo di un progetto, consentendo al team di adottare misure preventive o di pianificare strategie di mitigazione;
        - *Modello di sviluppo*: approccio metodologico che viene scelto per guidare il processo di sviluppo del prodotto. Definisce la struttura di lavoro che sarà seguita durante l'intero ciclo di vita del progetto;
        - *Pianificazione*: fornisce una roadmap dettagliata delle attività, delle risorse, e delle scadenze associate al progetto;
        - *Preventivo*: stima dei costi per portare a termine il progetto.
        


==== Piano di Qualifica

Documento che descrive le strategie e gli approcci adottati per garantire la qualità del prodotto o del servizio che si sta sviluppando. Il suo scopo principale è quello di definire le modalità di verifica e validazione, nonché gli standard e le procedure di qualità che verranno seguite durante l'intero ciclo di vita del progetto.

È caratterizzata da:

        - *Qualità del processo*: standard e  procedure adottate per garantire la qualità durante lo sviluppo del progetto. Informazioni sulle attività di gestione della qualità, le metodologie utilizzate, e come vengono misurati e migliorati i processi stessi;
        - *Qualità di prodotto*: standard, le specifiche e le caratteristiche che il prodotto deve soddisfare per essere considerato di alta qualità. Include anche le metriche e i criteri di valutazione utilizzati per misurare la qualità del prodotto;
        - *Specifiche dei test*: specifiche dettagliate dei test che verranno condotti durante lo sviluppo del progetto;
        - *Resoconto e valutazioni*: resoconto delle attività svolte e delle valutazioni effettuate durante il progetto. Utili per capire come il progetto si sta sviluppando rispetto agli obiettivi e alle aspettative, e per identificare eventuali azioni correttive necessarie.



== Sviluppo

=== Codifica e Verifica

Come sistema di controllo di versione si utilizza _Git_ all'interno del servizio online _Github_.

All'interno dei repository si utilizza il #glossary[Rebase workflow] come metodo di gestione, con piccoli accorgimenti, segnalati nelle apposite sezioni.

In particolare si nota la differenza tra il repository di documentazione, chiamato _Docs_ e quello di progetto (codice) chiamato _InnovaCity_: per entrambi si utlizza il _Rebase workflow_, con l'utilizzo dei _Feature branch_ per separare logicamente il lavoro da svolgere. Nel primo repository però, i _Feature branch_ si derivano direttamente dal _main_, mentre nel secondo si derivano dal branch _dev_.
Questo impone quindi che, prima di andare ad effettuare la chiusura di una _Pull request_, si vada ad effettuare un _rebase_ del branch di derivazione, per rendere il nostro branch di sviluppo aggiornato rispetto alla base.

I _Feature branch_ vengono aperti a partire dalle issue create nell' _Issue Tracking System_ (vedi @its). Si procede poi ad associare una _Pull request_, a una o più issue collegate tra loro, per effettuare la verifica.

Nel caso del repository _InnovaCity_ il branch _main_ viene utilizzato per la pubblicazione di cambiamenti _major_, cioè quando si è implementato un numero di funzionalità significativo all'avanzamento del progetto. In quel caso è il responsabile che esegue l'approvazione finale.


=== Analisi dei Requisiti

==== Scopo
L’analisi dei requisiti, condotta dagli Analisti, rappresenta un’attività preliminare nello sviluppo di un sistema software. Questa attività mira a definire le funzionalità che il nuovo prodotto deve offrire. L'obiettivo principale è quello di identificare, in modo chiaro e completo, i requisiti che il software sviluppato deve soddisfare, al fine di rispondere adeguatamente alle esigenze degli utenti e della Proponente.

L'analisi si compone di varie fasi:

  - Scopo del prodotto: si devono soddisfare le esigenze della Proponente;
  - Definizione degli attori: entità o persone che interagiscono con il #glossary[sistema];
  - Definizione dei casi d'uso: rappresentazione di uno scenario specifico che descrive come un attore interagisce con il sistema;
  - Definizione di requisiti obbligatori, opzionali, di vincolo;
  - Confronti interni ed esterni.

La collaborazione con la Proponente è essenziale per comprendere in modo accurato e approfondire dettagliatamente il processo di realizzazione del prodotto.

==== Identificazione caso d'uso

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

    - *Funzionali*

        un requisito funzionale specifica una funzionalità che il sistema deve essere in grado di svolgere;

    - *Qualità*

        Un requisito di qualità stabilisce gli standard e i criteri che il sistema deve soddisfare per garantire prestazioni, affidabilità, sicurezza e altri aspetti relativi alla qualità;

    - *Vincolo*

        Un requisito di vincolo è una restrizione o una condizione imposta al progetto.

==== Identificazione Requisiti

I requisiti trovati avranno un codice univoco con la seguente sintassi:

        *R[Importanza][Tipo][Numero]*

        *legenda*:
        
        - *Importanza*:
                - O -> se requisito obbligatorio;
                - D -> se requisito desiderabile;
                - P -> se requisito opzionale.
        - *Tipo*:
                - F -> se funzionale;
                - Q -> se qualità;
                - V -> se di vincolo.
        - *Numero*:
                per ogni requisito aggiunto il numero viene incrementato.


=== Progettazione 

==== Scopo 

L'attività di progettazione verrà svolta dai Progettisti, i quali avranno il compito di definire le caratteristiche del prodotto finale, basandosi sui requisiti specificati nel documento _Analisi dei Requisiti_. 
La fase di progettazione segue l'analisi dei requisiti, nella quale sono definite le necessità e le aspettative per il prodotto. I Progettisti traducono queste informazioni in una struttura architteturale definita, organizzando il sistema in componenti specifici e definendo le interazioni tra di essi. In tal modo, la progettazione costituisce un passo essenziale nel percorso di sviluppo, contribuendo a trasformare i requisiti in un piano tangibile per la creazione del prodotto finale.

==== Descrizione 

Si definiscono tre sottoattività: 

        + *_Technology Baseline_*: scelta e definizione delle tecnologie di base che saranno utilizzate per la realizzazione del sistema, comprende decisioni riguardanti linguaggi di programmazione, librerie e #glossary("framework"). Tale processo porterà alla creazione di un Proof of Concept(#glossary("PoC"));
        + *_Progettazione Architteturale_*: definizione ad alto livello dell'archittettura del prodotto, include test di integrazione;
        + *_Product Baseline_*: segna un punto stabile nel processo di progettazione, in cui le specifiche tecniche, le funzionalità principali e l'architettura del prodotto sono definite in modo dettagliato e accettate dalle parti coinvolte. Include tutti gli elementi essenziali e i requisiti chiave del prodotto che devono essere soddisfatti, fornendo una base solida per lo sviluppo continuo del prodotto. Questo processo porterà infine alla realizzazione di un _Minimum Viable Product_ (#glossary("MVP"));
                                Include:
                                - #glossary("Design Patterns") e Package;
                                - Definizione classi;
                                - Diagrammi UML che includono:
                                        - classi;
                                        - package;
                                        - sequenze: utilizzato per descrivere uno scenario che costituisce una determinata sequenza di azioni in cui tutte le scelte sono state già effettuate;
                                        - attività: diagramma comportamentale che illustra il flusso delle attività attraverso un sistema.
                                - Test di Unità su ogni componente.

=== Codifica 

==== Scopo 

L'attività di codifica viene svolta dai Programmatori, che hanno come compito la traduzione delle decisioni progettuali in codice sorgente.
I programmatori seguono le linea guida e le _best practices_ stabilite durante la fase di progettazione architteturale.

==== Aspettative 

Ci si aspetta che il codice sviluppato rispetti determinate caratteristiche:

        - Conformità alle specifiche;
        - Chiarezza e comprensibilità;
        - Ottimizzazione delle prestazioni;
        - Supplemento di test per verificare la correttezza e il funzionamento;
        - Conformita' agli standard di qualita' caratteristici del prodotto.


==== Stili di codifica 

[Verrano scritti in seguito.]






#pagebreak()

= Processi di Supporto

== Documentazione

=== Descrizione 

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

=== Template 

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

=== Creazione e Modifica di un Documento

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

==== Formato data <formato>

Si seguirà il formato GG-MM-AAAA.

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

==== Norme tipografiche

===== Stili 
        - *Grassetto*: titoli delle sezioni o parole rilevanti;
        - *Corsivo*: per enfatizzare le parole, per i termini inglesi e per specificare parole destinate ad essere aggiunte al glossario per definirne la definizione.

===== Elenchi puntati

Le voci di ogni elenco iniziano con lettera maiuscola e terminano con punto e virgola ';', eccetto l'ultima voce che termina con punto normale '.'.



=== Strumenti 

Il gruppo utilizza:

        - *Typst*: linguaggio per la stesura dei documenti, valida alternativa a Latex;
        - *Google Docs*: per la stesura di bozze e appunti;
        - *Draw.io*: linguaggio usato per la creazione dei diagrammi UML.

==== Diagrammi dei casi d'uso

Un diagramma dei casi d'uso rappresenta uno strumento di modellazione ampiamente impiegato per documentare e delineare le funzionalità di un sistema. La sua utilità risiede nel tracciare i flussi operativi attraverso una rappresentazione visiva, descrivendo il modo in cui un utente interagisce con il sistema.

Gli scenari d'uso sono organizzati in sequenze di azioni, illustrando le operazioni necessarie per consentire a un utente di portare a termine una specifica attività (realizzare uno scopo), e sono interconnessi mediante linee. Questo tipo di diagramma risulta particolarmente prezioso nella progettazione di sistemi, in quanto offre un'illustrazione rapida e intuitiva delle dinamiche di lavoro e delle interazioni tra l'utente e il sistema.

È fondamentale notare che la rappresentazione fornita dai diagrammi dei casi d'uso non si addentra nei dettagli implementativi, poiché il loro scopo principale è descrivere la funzionalità, considerandola come un elemento esterno al sistema.

I diagrammi dei casi d'uso sono composti da:
        - *Attore*: rappresenta un agente esterno coinvolto nelle interazioni con il sistema. Si tratta di una qualsiasi entità in grado di interagire con il sistema, infatti ogni caso d'uso determina una funzionalità che viene messa a disposizione di tale attore, tuttavia, senza entrare nei dettagli implementativi.
                
                A livello di diagramma, l'attore è simboleggiato da un' icona umana stilizzata, identificabile mediante un'etichetta univoca e rappresentativa, posizionata al disotto di tale figura.

                #figure(
                        image(
                                "assets/imgs/Attore.png",
                                width: 15%
                        ),
                        caption: "Figura rappresentante un attore."
                )

        - *Caso d'uso*: delineano le operazioni eseguibili dall'utente sul sistema. Un singolo caso d'uso si compone di una breve esposizione delle funzioni messe a disposizione del sistema per uno o più utenti nell'ambito di un software. In modo specifico, offre una descrizione dettagliata del comportamento dell'utente interagendo con il software.

                Generalmente, un caso d'uso è costituito da una sequenza di situazioni che esplicitano le diverse eventualità che possono manifestarsi durante l'interazione tra l'utente e il software. La sua rappresentazione comprende un'identificazione univoca, ovvero UCx.y (dove x indica il numero del caso d'uso, e y indica il fatto che stiamo trattando un eventuale sotto-caso d'uso del caso d'uso UCx), seguita da una concisa ma completa descrizione della funzione stessa.

                Ogni caso d'uso discuterà i seguenti punti:
                        - *Attore principale*: l'attore che desidera compiere lo scopo rappresentato dal caso d'uso;
                        - *Precondizioni*: stato in cui il sistema si deve trovare prima che la funzionalità rappresentata dal caso d'uso venga iniziata;
                        - *Postcondizioni*: stato in cui il sistema si troverà una volta compiuta la funzionalità rappresentata dal caso d'uso;
                        - *Scenario principale*: descizione accurata della funzionalità rappresentata dal caso d'uso;
                        - *Specializzazioni*: nel caso di uno use case generale, vengono indicati i codici dei casi d'uso che lo specializzano;
                        - *Inclusioni*: vengono specificati i codici dei casi d'uso che vengono inclusi nel caso d'uso trattato;
                        - *Estensioni*: vengono specificati i codici dei casi d'uso che rappresentano scenari secondari.

                Ciascun caso d'uso sarà connesso attraverso una linea continua agli attori che hanno autorizzazioni per accedere a quella particolare funzione.

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
        - *Inclusioni*: Supponiamo che vi sia una relazione di inclusione tra un caso d'uso A e un caso d'uso B se ogni istanza del caso d'uso A deve necessariamente eseguire le istanze del caso d'uso B. Questo assegna al caso d'uso A la responsabilità di eseguire il caso d'uso B, eliminando la duplicazione e favorendo il riutilizzo di una struttura comune. La connessione di inclusione viene simboleggiata da una freccia tratteggiata che collega il caso d'uso A a tutti i casi d'uso inclusi, come nel caso del caso d'uso B nell'esempio. Sopra la freccia verrà annotata la direttiva "include".
                #figure(
                        image(
                                "assets/imgs/UseCaseInclude.png",
                                width: 70%
                        ),
                        caption: "Figura rappresentante un' inclusione tra casi d'uso."
                )
        - *Estensioni*: Supponiamo che nell'ambito dei diagrammi dei casi d'uso UML, l'estensione rappresenti una connessione tra due casi d'uso, A e B, indicando che ogni istanza del caso d'uso A può eseguire anche il caso d'uso B in maniera condizionata. L'esecuzione del caso d'uso B avviene soltanto in specifiche circostanze o sotto condizioni particolari durante l'esecuzione del caso d'uso A, interrompendo temporaneamente il flusso del caso d'uso A. La responsabilità dell'esecuzione del caso d'uso esteso (B) ricade su chi estende (nel caso, il caso d'uso B). Questa relazione viene visualizzata graficamente con una freccia tratteggiata dal caso d'uso esteso (B) al caso d'uso base (A), con l'etichetta "extend".
                #figure(
                        image(
                                "assets/imgs/UseCaseExtend.png",
                                width: 70%
                        ),
                        caption: "Figura rappresentante un' estensione tra casi d'uso."
                )

== Gestione della Configurazione

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

=== Ruoli Progetto

Durante il periodo di sviluppo del progetto, ogni membro assumerà 6 ruoli distinti con compiti diversificati, al fine di garantire una gestione completa ed efficace delle diverse fasi e aspetti del lavoro. Questi ruoli contribuiranno a promuovere la collaborazione sinergica e l'ottimizzazione delle risorse all'interno del team. 

I ruoli assunti sono i seguenti:

==== Responsabile  

        Figura chiave che supervisiona, coordina e gestisce le attività del team. Si occupa di garantire l'allineamento tra gli obiettivi del progetto e le azioni intraprese, gestisce le risorse disponibili, stabilisce e mantiene le relazioni esterne con la Proponente e assicura il flusso efficace delle informazioni all'interno del team e al di fuori di esso.

        I suoi compiti sono:

         - Gestione della comunicazione con la Proponente (si fa uso della piattaforma Element);
         - Preparazione dell'ordine del giorno per la successiva riunione, anche sulla base
           dei punti individuati dagli altri componenti;
         - Redazione dei verbali interni ed esterni;
         - Stesura e e avanzamento del documento “Piano di progetto”;
         - Creazione dei diari di bordo;
         - Upload dei verbali esterni convalidati, tramite firma, dalla Proponente in una cartella apposita su Google Drive.

==== Amministratore 
        
        Figura professionale con la responsabilità della creazione, manutenzione e ottimizzazione degli strumenti, delle risorse e dei processi necessari per il corretto svolgimento del progetto.

        I suoi compiti sono:

         - Configurazione e gestione gli ambienti di sviluppo;
         - Implementazione delle procedure operative;
         - Assicurare la disponibilità degli strumenti necessari per la collaborazione e la comunicazione all'interno del team;
         - Creazione e assegnazione delle _issue_ ai membri del team;
         - Stesura e avanzamento del documento "Norme di Progetto";
         - Implementazione di script dedicati per automatizzare processi nell'ambiente di lavoro;
         - Gestione del versionamento dei documenti.

==== Analista
     
     Figura professionale che si occupa di analizzare, comprendere e definire i requisiti e le specifiche di un sistema software prima che venga sviluppato. Questa figura svolge un ruolo fondamentale nel processo di sviluppo del software, contribuendo a garantire che il prodotto finale soddisfi le esigenze e le aspettative degli utenti e della Proponente.

     I suoi compiti:

        - Studio del contesto applicativo e relativa complessità;
        - Specifica dei casi d'uso per comprendere in dettaglio i requisiti funzionali del sistema;
        - Raccolta dei requisiti per definire le necessità e le funzionalità richieste;
        - Stesura del documento Analisi dei Requisiti;
        - Creazione diagrammi UML;

==== Progettista

        Figura professionale specializzata nella progettazione architetturale e strutturale di sistemi. La sua responsabilità principale è definire la configurazione, la disposizione e l'organizzazione dei vari componenti del sistema, concentrandosi su come questi elementi interagiscono tra loro per raggiungere determinati obiettivi di funzionalità, prestazioni e scalabilità.

        I suoi compiti sono:

        - Scelta degli aspetti tecnici e tecnologici;
        - Progettazione architetturale che miri all'economicità e alla manutenibilità del sistema;
        - Ottimizzazione delle prestazioni usando algoritmi efficienti e gestione memoria;
        - Gestione dei rischi: cerca di mitigare problemi che possono sorgere durante lo sviluppo;
        - Redazione della Specifica tecnica e di una parte del documento Piano di Qualifica.

==== Programmatore

        Figura professionale incaricata di trasformare le specifiche tecniche in codice eseguibile, garantendo un'implementazione efficiente e accurata delle funzionalità richieste dal progetto.

        I suoi compiti:

        - Traduzione delle specifiche tecniche in codice funzionante;
        - Scrittura di codice chiaro, leggibile e mantenibile;
        - Creazione di test per la verifica del software;
        - Ampliamento delle Specifiche Tecniche conforme alle esigenze del progetto.
        - Risoluzione di bug e problemi di performance;
        - Realizzazione del Manuale Utente;
        - Collaborazione con il team per l'integrazione del codice e il mantenimento della coerenza del progetto.

==== Verificatore

        Figura professionale che si occupa di esaminare il lavoro prodotto dagli altri membri del team.

        I suoi compiti:

        - Revisione e valutazione della documentazione prodotta dal team;
        - Analisi critica del codice per individuare errori, discrepanze o possibili miglioramenti;
        - Identificazione e segnalazione di problemi;
        - Collaborazione con il team per garantire che il lavoro sia conforme alle linee guida e agli standard richiesti.


=== Cambio dei ruoli

Per fare in modo che ogni membro svolga almeno 1 volta tutti i ruoli di cui sopra, il team si impegna a cambiarli ogni settimana.

=== Procedure 

==== Gestione delle comunicazioni

===== Comunicazioni Interne 

Riguardano esclusivamente i membri del Team e si svolgono tramite:

        - *_Whatsapp_*: utilizzato per messaggistica istantanea e una comunicazione veloce;
        - *_Discord_*: piattaforma utilizzata per:
                + Creare server suddivisibili in vari canali testuali o vocali, dove verranno svolte le riunioni;
                + Supplementare la comunicazione all'interno della piattaforma con funzionalita' offerte da servizi esterni quali GitHub

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
                + Pianificazione attività per la settimana e assegnazione issue.
                
        Alla fine dell'incontro:
                + Il responsabile ha il compito della stesura del verbale interno, fornendo una sintesi dei punti salienti dell'incontro. 

Gli incontri hanno due modalità:

        - *Fisici*: per gli stand-up meeting quotidiani (#glossary("Daily Scrum")) di 5 minuti in cui si discutono brevemente le attività completate il giorno precedente e si espongono le attività pianificate per il futuro;
        - *Virtuali*: si svolgono chiamate o video di gruppo in cui si discutono eventuali dubbi o difficoltà riscontrate. Lo strumento adatto per questo scopo è Discord.

===== Incontri Esterni 

Negli incontri esterni i partecipanti sono i membri del team e i referenti della Proponente. Questi incontri sono pianificati ogni due settimane in concomitanza con l'inizio e fine sprint. Durante queste sessioni, i partecipanti del team hanno l'opportunità di presentare gli sviluppi recenti, condividere i progressi raggiunti e discutere eventuali sfide o questioni emerse nel corso del lavoro. 
Inoltre si possono richiedere incontri di formazione specifici su particolari tecnologie, il che offre al team l'opportunità di approfondire la comprensione di una tecnologia specifica, imparare le _best practice_ e acquisire competenze più avanzate.

Il responsabile ha il compito della stesura del verbale esterno, che viene successivamente convalidato, con firma, dalla Proponente.
