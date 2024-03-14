#import "../functions.typ": glossary, team

= Analisi dei rischi  
L'attività di analisi dei rischi mira ad anticipare possibili situazioni avverse che possono emergere durante l'iter del progetto. Questa pratica consiste nel riconoscere, comprendere e classificare tali rischi in base alla loro probabilità di occorrenza e all'impatto sullo sviluppo del lavoro, cercando anche soluzioni preventive per mitigarne gli effetti dannosi. L'analisi dettagliata dei rischi è orientata all'ottimizzazione del progresso del progetto, in quanto consente di individuare nuove situazioni critiche e di perfezionare le strategie atte a minimizzarne gli impatti, mediante un monitoraggio costante. Di seguito vengono presentati i rischi identificati attraverso un processo di valutazione strutturato, che consente di evidenziare le fasi di individuazione, valutazione e prevenzione di tali rischi:


  - *Identificazione*: consiste nel riconoscimento e nell'enumerazione delle possibili situazioni sfavorevoli che possono verificarsi durante il progetto. È il processo di individuare e catalogare in modo esauriente tutti gli elementi che possono rappresentare una minaccia;
  - *Valutazione*: consiste nell'analisi dettagliata di ciascuna situazione rilevata durante l'identificazione, comprende anche l'assegnazione di un grado di probabilità di occorrenza e impatto per comprendere meglio il potenziale effetto sul progetto. Questo processo aiuta a classificare i rischi sulla base della loro gravità e della loro probabilità di manifestarsi;
  - *Prevenzione*: consiste nell'adozione di misure o strategie pro-attive per ridurre o mitigare l'incidenza e l'impatto dei rischi individuati. Questo comprende l'implementazione di azioni preventive e la messa in atto di piani di contingenza per affrontare efficacemente eventuali situazioni avverse.

I rischi sono stati suddivisi a seconda della loro sfera di impatto:
  - Rischi Tecnologici;
  - Rischi di Comunicazione;
  - Rischi di Pianificazione.

== Rischi Tecnologici
=== RT1 - Conoscenza tecnologica limitata 
La mancanza di familiarità o esperienza con le tecnologie specifiche impiegate nel progetto, può potenzialmente influenzare lo sviluppo e la qualità del software.
  - *Identificazione*: in principio è stata condotta un'analisi delle competenze tecniche di ciascun membro internamente al team, evidenziando le aree di conoscenza e le lacune individuali; successivamente è stata effettuata una breve consultazione con la Proponente con l'obiettivo di fornirle un'idea del livello attuale di competenze tecniche del team;
  - *Valutazione*: pericolosità: alta; occorrenza: alta;
  - *Prevenzione*:
    - Formazione da parte della Proponente: la Proponente organizza incontri periodici di formazione focalizzati sulle tecnologie specifiche utilizzate nel progetto, offrendo così al team la possibilità di colmare le lacune e approfondire le conoscenze;
    - #glossary("Workshop") interni: il team organizza #glossary[workshop] interni guidati dai membri più esperti su determinate tecnologie, consentendo loro di condividere conoscenze e esperienze con gli altri membri del team e favorendo l'apprendimento reciproco;
    - Lavoro in coppia: durante le fasi in cui lo sviluppo di codice richiede un contributo più rilevante, il team adotterà un approccio di lavoro in coppia. Questa pratica consentirà ai membri del team di condividere conoscenze e competenze, aiutandosi reciprocamente a superare le lacune individuali nelle conoscenze tecnologiche.
    
=== RT2 - Difficoltà nell'adozione degli strumenti di gestione del progetto
Il team potrebbe incontrare sfide nell'apprendere l'utilizzo e nell'integrazione dei nuovi strumenti di gestione del progetto, causando ritardi nell'effettiva implementazione di un #glossary("way of working") efficiente.
  - *Identificazione*: la difficoltà nell'adozione degli strumenti può manifestarsi quando i membri del team incontrano dubbi o incertezze riguardo alle procedure da seguire o all'utilizzo degli strumenti stessi;
  - *Valutazione*: pericolosità: media; occorrenza: bassa;
  - *Prevenzione*:
    - _Norme di Progetto_: tutti i dettagli del #glossary[way of working] vengono concordati durante i meeting interni e normati all'interno delle _Norme di Progetto_. In caso di dubbi o incertezze, il riferimento a queste norme o la richiesta di chiarimenti all'Amministratore del progetto rappresentano un'importante risorsa per la risoluzione tempestiva di problemi legati agli strumenti e alle procedure;
    - Inclusione di dubbi nell'#glossary[ordine del giorno]: l'inclusione dei dubbi e delle incertezze nelle proposte dell'#glossary[ordine del giorno] del meeting interno successivo consente al team di affrontare in modo strutturato e tempestivo le difficoltà riscontrate, garantendo un ambiente in cui tali problemi possano essere risolti in modo collaborativo e efficiente.

=== RT3 - Produzione di codice poco comprensibile
Il team, data l'inesperienza dei suoi componenti, potrebbe produrre codice difficile da comprendere o contorto. Questo, unito ad un'eventuale carenza di relativa #glossary[documentazione], potrebbe influenzare negativamente i tempi di sviluppo. 
  - *Identificazione*: un segnale evidente della manifestazione di questo rischio è la crescita delle discussioni relative all'interpretazione del codice tra i componenti del team;
  - *Valutazione*: pericolosità: media; occorrenza: media;
  - *Prevenzione*: 
    - Code reviews: effettuare revisioni regolari del codice; 
    - Continuo refactoring: integrare  all'interno del processo di sviluppo frequenti attività di refactoring mirate alla semplificazione del codice, in modo tale da aumentarne la comprensibilità;
    - #glossary[Documentazione] adeguata: incoraggiare la produzione di una #glossary[documentazione] approfondita per il codice; 
    - Convenzioni di codifica: seguire le stesse linee guida porta il team a standardizzare il modo in cui il codice viene scritto, di conseguenza ne aumenta la chiarezza e la manutenibilità. 


== Rischi di Comunicazione
=== RC1 - Mancata organizzazione della comunicazione interna
La mancata organizzazione della comunicazione interna si riferisce a situazioni in cui non esiste una struttura definita o linee guida chiare per la trasmissione efficace delle informazioni all'interno del team. Questa mancanza di direzione può portare a fraintendimenti, confusione o ritardi nella comunicazione.
  - *Identificazione*: questo rischio si manifesta quando non esiste una struttura chiara per la comunicazione all'interno del team, può essere riconosciuto attraverso il sovrapporsi di messaggi, discussioni disordinate o mancanza di canali dedicati;
  - *Valutazione*: pericolosità: bassa; occorrenza: bassa;
  - *Prevenzione*:
    - Pianificazione della comunicazione: stabilire canali di comunicazione specifici per diversi tipi di messaggi (ad esempio discussioni generali, questioni urgenti, cambiamenti dello stato delle issue nell'#glossary[ITS], proposte per l'#glossary[ordine del giorno] e altro);
    - #glossary[Ordine del giorno]: definire un #glossary[ordine del giorno] chiaro per i meeting interni settimanali, con tempi stabiliti per ciascun argomento;
    - #glossary[Stand-up meeting] giornalieri (anche da remoto): riunioni brevi e quotidiane favoriscono una migliore comprensione dello stato del progetto, consentendo a ciascun membro del team di aggiornare gli altri sui progressi, sulle sfide incontrate e sui prossimi passi. Questa pratica aiuta a identificare i problemi in modo tempestivo, a fornire supporto reciproco e a mantenere il team allineato con gli obiettivi comuni;
    - Meeting di emergenza: incontri non pianificati con i quali uno o più componenti possono invocare una discussione a livello di team per risolvere questioni urgenti legate a modifiche critiche da apportare alla #glossary[documentazione] o ad una porzione di codice. Dato il poco preavviso, in occasione di questi incontri il #glossary[quorum] viene abbassato da 4 a 3 persone su 6, in modo che i componenti interessati possano esporre e motivare le modifiche che intendono apportare e procedere a lavorare sul documento in questione senza dover necessariamente attendere l'incontro interno di fine #glossary[sprint].
    - Pianificazione anticipata degli incontri: una volta fissate le date e gli orari, questi non possono essere soggetti a cambiamenti, salvo per ragioni eccezionali; ciò è volto a garantire che i partecipanti dedichino la massima priorità a tali appuntamenti nella propria pianificazione; 

=== RC2 - Esasperazione di conflitti interni
Questi rischi emergono quando diversi punti di vista, preferenze o approcci all'interno del team conducono a tensioni, disaccordi o scontri tra i membri. Questi conflitti possono manifestarsi in varie forme, come contrasti di opinione riguardo alle metodologie di lavoro, differenze nell'interpretazione dei requisiti del progetto o incomprensioni personali.
- *Identificazione*: i conflitti interni possono essere riconosciuti attraverso segnali come un clima di tensione durante le discussioni, resistenze persistenti ad adottare soluzioni comuni, ritardi o difficoltà nella presa di decisioni;
- *Valutazione*: pericolosità: media; occorrenza: bassa;
- *Prevenzione*:
  - Politica di gestione dei disaccordi: consiste nell'offrire spazio ai membri in disaccordo per esporre le loro diverse prospettive in modo chiaro e rispettoso durante un meeting interno. Successivamente, il gruppo procede ad una votazione democratica per trovare una soluzione che ottenga il consenso della maggioranza dei partecipanti;
  - Mediatore interno: il Responsabile ha il ruolo di facilitare la risoluzione dei conflitti ascoltando entrambe le parti coinvolte, mediando la discussione in modo imparziale e cercando una soluzione che soddisfi le esigenze di entrambe le parti o che sia accettabile per la maggioranza del team.

=== RC3 - Frequenza limitata nella comunicazione con la Proponente
Si tratta della ridotta frequenza o della mancanza di contatti regolari e tempestivi con la Proponente, limitando così la disponibilità di informazioni cruciali o l'accesso a chiarimenti durante lo svolgimento del progetto.
  - *Identificazione*: Si rileva quando non ci sono comunicazioni regolari o risposte tempestive dalle parti interessate della Proponente in risposta a domande o richieste di chiarimenti;
  - *Valutazione*: pericolosità: media; occorrenza: bassa;
  - *Prevenzione*: 
    - Aggiornamenti regolari: mantenere la Proponente informata sugli sviluppi in modo regolare (almeno una volta alla settimana) e chiedere feedback quando necessario;
    - Invio anticipato di domande: invio di email prima di ogni meeting esterno con la Proponente, presentando in anticipo le domande o i punti da discutere durante il meeting. Questo offre alla Proponente il tempo di prepararsi adeguatamente e fornire risposte dettagliate durante il meeting;
    - Consegna anticipata di materiale: quando si tratta di #glossary[sprint review] o di qualsiasi revisione congiunta, fornire la #glossary[documentazione] o il codice prodotto nel rispettivo #glossary[sprint] il prima possibile, in modo che la Proponente abbia tempo sufficiente per esaminarlo in modo approfondito prima del meeting. Ciò permette una discussione più efficace e informativa durante il meeting stesso.

=== RC4 - Mancanza di fiducia
I diversi livelli di competenze e una comunicazione poco trasparente possono portare allo sviluppo di un clima di sfiducia reciproca tra i membri del team: ciò potrebbe compromettere il successo del progetto.  
  - *Identificazione*: la mancanza di fiducia può essere rilevata in presenza di segnali specifici come la reticenza nella collaborazione o nell'assunzione di responsabilità condivise. In aggiunta, alcuni membri potrebbero dimostrarsi poco attivi nelle discussioni di gruppo o nelle attività cooperative;
  - *Valutazione*: pericolosità: media; occorrenza: bassa;
  - *Prevenzione*: 
    - Promuovere incontri periodici: i membri del team hanno la possibilità di esprimere dubbi e preoccupazioni, avere una discussione aperta su aspetti rilevanti del progetto e ricevere feedback sul lavoro fatto. In questo contesto va precisato che la costruzione del feedback assume un ruolo fondamentale, in quanto deve essere formulato in maniera tale da risultare costruttivo e presentato come un opportunità di miglioramento, anziché solamente come critica;
    - Promuovere la comprensione reciproca: il team si deve sforzare nel comprendere le condizioni e i punti di vista degli altri componenti per creare un clima di progetto positivo, indirizzato verso il miglioramento.

=== RC5 - Context switch
Con l'espressione #glossary("context switch") ci si riferisce al cambiamento dei ruoli all'interno del team. Questo passaggio da un ruolo ad un altro comporta la necessità di adattarsi rapidamente alle nuove responsabilità e di comprendere appieno ciò che è stato svolto dal membro del team che ha ricoperto un determinato ruolo per ultimo.
  - *Identificazione*: difficoltà  nella comprensione del lavoro svolto fino al quel momento; 
  - *Valutazione*: pericolosità: bassa; occorrenza: alta;
  - *Prevenzione*:
      - La persona che ha precedentemente occupato quel ruolo specifico offre supporto al membro del team che ha assunto ora quella posizione, facilitandone la transizione;
      - Assistere l'Amministratore nella creazione delle attività per il prossimo #glossary[sprint]\;
      - Dedicare il primo giorno unicamente allo studio di quanto fatto precedentemente, in modo da riuscire a sincronizzarsi con il contesto del ruolo.

== Rischi di Pianificazione
=== RP1 - Comprensione erronea dei requisiti
La comprensione erronea dei requisiti indica il potenziale malinteso o fraintendimento dei requisiti del progetto, che potrebbe portare a interpretazioni errate o divergenti da parte del team riguardo alle funzionalità o agli obiettivi del prodotto.
  - *Identificazione*: questo rischio può manifestarsi quando ci sono ambiguità nei requisiti documentati o quando i membri del team interpretano in modo differente i requisiti. È evidente quando emergono domande costanti riguardo ai requisiti durante le discussioni o quando si presentano discrepanze nelle interpretazioni durante le attività di progettazione;
  - *Valutazione*: pericolosità: alta; occorrenza: media;
  - *Prevenzione*: 
    - _Analisi dei Requisiti_: creazione di un documento chiaro e dettagliato contenente casi d'uso, requisiti funzionali e non funzionali, in modo da offrire una visione esaustiva e condivisa dei requisiti del progetto;
    - Sessioni di analisi e confronto dei requisiti con la Proponente: organizzazione di incontri regolari con la Proponente, durante i quali verranno presentati i requisiti identificati, discusse le interpretazioni e validate le esigenze. Queste sessioni permetteranno di raffinare e chiarire i requisiti iniziali, riducendo il rischio di interpretazioni erronee e garantendo una comprensione accurata delle necessità del cliente;
    - Adozione del #glossary[framework Scrum]: l'implementazione del #glossary[framework Scrum] fornisce continui momenti di verifica e adattamento durante lo sviluppo del progetto. Tale approccio offre l'opportunità di identificare tempestivamente eventuali fraintendimenti o ambiguità nei requisiti, permettendo al team di chiarirli e correggerli nel minor tempo possibile.

=== RP2 - Disallineamento delle componenti architetturali
Questo rischio riguarda la possibilità di progettare componenti all'interno dell'#glossary[architettura] del #glossary[sistema] che potrebbero risultare incompatibili o in disaccordo una volta integrate o combinate. Ciò può generare conflitti nell'interoperabilità delle parti e compromettere la coesione del #glossary[sistema] nel suo insieme.
  - *Identificazione*: questo rischio è individuabile durante le fasi di progettazione, quando si evidenziano incongruenze tra le interfacce delle varie componenti o quando emergono problemi di compatibilità durante l'integrazione preliminare di parti del #glossary[sistema]\;
  - *Valutazione*: pericolosità: media; occorrenza: media;
  - *Prevenzione*: 
    - Metodologia di progettazione modulare: adottare un approccio modulare durante la progettazione architetturale, suddividendo il #glossary[sistema] in componenti chiare e ben definite. Questo aiuta a identificare in anticipo eventuali discrepanze tra le parti e favorisce l'interoperabilità;
    - Revisioni incrociate: effettuare revisioni incrociate della progettazione tra membri del team per identificare potenziali disallineamenti o incongruenze nelle interfacce delle varie componenti. Questa pratica consente di individuare e risolvere precocemente i conflitti;
    - Test di integrazione preliminari: condurre test preliminari di integrazione delle componenti principali agli inizi della progettazione. Questi test aiutano a valutare la compatibilità e l'interoperabilità delle varie parti, riducendo così il rischio di disallineamento nell'#glossary[architettura] finale.

=== RP3 - Variazioni nei tempi e costi del progetto
Questo rischio si riferisce alla possibilità di variazioni significative rispetto alle tempistiche e ai costi pianificati inizialmente per lo sviluppo del progetto.
  - *Identificazione*: è individuabile attraverso l'osservazione di cambiamenti significativi nelle tempistiche di completamento delle attività rispetto alla pianificazione originale, così come variazioni notevoli nei costi di realizzazione;
  - *Valutazione*: pericolosità: alta; occorrenza: media;
  - *Prevenzione*: 
    - Pianificazione flessibile: adottare una pianificazione flessibile che preveda margini di tempo e costi per eventuali imprevisti o variazioni;
    - Rendicontazione di ore produttive: si utilizza uno #glossary[spreadsheet] dedicato nel quale ciascun membro del team registra quotidianamente le ore produttive utilizzate, specificando le attività svolte e il ruolo assunto. Questo approccio consente di trarre conclusioni riguardo allo stato delle ore totali impiegate e al budget iniziale disponibile, permettendo una migliore gestione delle risorse nel progetto;
    - Monitoraggio costante: si mantiene un monitoraggio costante del progresso del progetto, permettendo l'aggiornamento della pianificazione in caso di variazioni significative. In particolare, all'interno dell'#glossary[ITS] si effettua un costante aggiornamento delle date di inizio e fine per ogni issue, riflettendo con precisione le tempistiche effettive. Inoltre, si utilizza regolarmente la vista Gantt all'interno della Kanban Board del progetto in GitHub per visualizzare la pianificazione temporale e individuare potenziali variazioni o sovrapposizioni nelle attività pianificate.

=== RP4 - Impegni universitari
Questo rischio riguarda la potenziale difficoltà dei membri del team, nel dedicare il tempo richiesto al progetto a causa degli impegni universitari, con particolare riferimento alla sessione di esami invernale.
  - *Identificazione*:
    - Questo rischio è individuabile attraverso l'osservazione di un rallentamento delle attività di progetto;
    - Nella fase di pianificazione viene identificato il periodo in cui è prevista la fase di preparazione per gli esami.
  - *Valutazione*: pericolosità: alta; occorrenza: media;
  - *Prevenzione*: nei periodi più intensi, si procederà a ridurre le ore di lavoro dedicate al progetto, consentendo così ai membri del team di concentrarsi sugli studi.

== Tabella riassuntiva
I rischi individuati vengono riportati in tabella, assieme alla loro pericolosità e occorrenza:
#table(
  columns: (60%, 20%, 20%),
  align: (left, center, center),
  [*Rischio*], [*Pericolosità*], [*Occorrenza*],
  [*RT1* - Conoscenza tecnologica limitata], [Alta], [Alta],
  [*RT2* - Difficoltà nell'adozione degli strumenti di gestione del progetto], [Media], [Bassa],
  [*RT3* - Produzione di codice poco comprensibile], [Media], [Media],
  [*RC1* - Mancata organizzazione della comunicazione interna], [Bassa], [Bassa],
  [*RC2* - Esasperazione di conflitti interni], [Media],  [Bassa],
  [*RC3* - Frequenza limitata nella comunicazione con la Proponente], [Media], [Bassa],
  [*RC4* - Mancanza di fiducia], [Media], [Bassa],
  [*RC5* - Context Switch],[Bassa],[Alta],
  [*RP1* - Comprensione erronea dei requisiti], [Alta], [Media],
  [*RP2* - Disallineamento delle componenti architetturali], [Media], [Media],
  [*RP3* - Variazioni nei tempi e costi del progetto], [Alta], [Media],
  [*RP4* - Impegni universitari], [Alta], [Media]
)
