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

== Sviluppo

=== Codifica e Verifica

Come sistema di controllo di versione si utilizza _Git_ all'interno del servizio online _Github_.

All'interno dei repository si utilizza il #glossary[Rebase workflow] come metodo di gestione, con piccoli accorgimenti, segnalati nelle apposite sezioni.

In particolare si nota la differenza tra il repository di documentazione, chiamato _Docs_ e quello di progetto (codice) chiamato _InnovaCity_: per entrambi si utlizza il _Rebase workflow_, con l'utilizzo dei _Feature branch_ per separare logicamente il lavoro da svolgere. Nel primo repository però, i _Feature branch_ si derivano direttamente dal _main_, mentre nel secondo si derivano dal branch _dev_.
Questo impone quindi che, prima di andare ad effettuare la chiusura di una _Pull request_, si vada ad effettuare un _rebase_ del branch di derivazione, per rendere il nostro branch di sviluppo aggiornato rispetto alla base.

I _Feature branch_ vengono aperti a partire dalle issue create nell' _Issue Tracking System_ (vedi @its). Si procede poi ad associare una _Pull request_, a una o più issue collegate tra loro, per effettuare la verifica.

Nel caso del repository _InnovaCity_ il branch _main_ viene utilizzato per la pubblicazione di cambiamenti _major_, cioè quando si è implementato un numero di funzionalità significativo all'avanzamento del progetto. In quel caso è il responsabile che esegue l'approvazione finale.


=== Analisi dei Requisiti


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
     

#pagebreak()

= Processi di Supporto

== Documentazione

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

        Figura chiave nell'ambito della gestione di progetti. Ha la responsabilità sul controllo, coordinamento e relazioni esterne.
        I suoi compiti sono:

         - Gestione della comunicazione con la Proponente (si fa uso della piattaforma Element);
         - Preparazione dell'ordine del giorno per la successiva riunione, anche sulla base
           dei punti individuati dagli altri componenti;
         - Redazione dei verbali interni ed esterni;
         - Stesura e e avanzamento del documento “Piano di progetto”;
         - Creazione dei diari di bordo;
         - Scaricamento dei verbali esterni convalidati e immagazzinamento dentro la cartella IncontriAziende/VerbaliEsterni_Convalidati su Google Drive.

==== Amministratore 
        
        Figura con l'incarico di controllo e amministrazione dell'ambiente di lavoro.

        I suoi compiti sono:
         - Creazione delle issue e loro assegnazione ai membri;
         - Stesura e avanzamento del documento "Norme di Progetto" (way of working);
         - Automatizzazione dell'ambiente di lavoro con script specifici;
         - Gestione del versionamento dei documenti.

==== Analista
     
     Figura professionale che si occupa di analizzare, comprendere e definire i requisiti e le specifiche di un sistema software prima che venga sviluppato. Questa figura svolge un ruolo fondamentale nel processo di sviluppo del software, contribuendo a garantire che il prodotto finale soddisfi le esigenze e le aspettative degli utenti e della Proponente.

     I suoi compiti:
        - Studio del contesto applicativo e relativa complessità;
        - Raccolta dei Requisiti;
        - Stesura del documento Analisi dei Requisiti;
        - Creazione diagrammi UML;

==== Progettista

        Figura professionale che si occupa della progettazione architetturale e struttura di un sistema. Si concentra sulla definizione di come il sistema dovrebbe essere organizzato.

        I suoi compiti sono:

        - Scelta degli aspetti tecnici e tecnologici;
        - Progettazione architetturale che miri all'economicità e alla manutenibilità del sistema;
        - Ottimizzazione delle prestazioni usando algoritmi efficienti e gestione memoria;
        - Gestione dei rischi: cerca di mitigare problemi che possono sorgere durante lo sviluppo;
        - Redazione della Specifica tecnica e di una parte del documento Piano di Qualifica.

==== Programmatore

        Figura professionale che si occupa della codifica del sistema. 

        I suoi compiti:

        - Ampliamento delle Specifiche Tecniche;
        - Scrittura codice pulito;
        - Redazione di test per validare e verificare il codice;
        - Redazione del Manuale Utente.

==== Verificatore

        Figura professionale che si occupa di esaminare il lavoro prodotto dagli altri membri del team.

        I suoi compiti:
        - Esaminare documenti e verbali;
        - Esaminare codice;
        - Trovare errori e segnalarli attraverso le pull request di github.


=== Cambio dei ruoli

Per fare in modo che ogni membro svolga almeno 1 volta tutti i ruoli di cui sopra, il team si impegna a cambiarli ogni 2 settimane (da definire nella prossima riunione se 1 o 2 settimane)
