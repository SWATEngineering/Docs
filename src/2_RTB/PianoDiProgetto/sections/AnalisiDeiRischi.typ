#import "../functions.typ": glossary, team

= Analisi dei rischi
L'attività di analisi dei rischi mira ad anticipare possibili situazioni avverse che potrebbero emergere durante l'iter del progetto. Questa pratica consiste nel riconoscere, comprendere e classificare tali rischi in base alla loro probabilità di occorrenza e all'impatto sullo sviluppo del lavoro, cercando, nel contempo, soluzioni preventive per mitigarne gli effetti dannosi. L'analisi dettagliata dei rischi è orientata a ottimizzare il progresso del progetto, consentendo di individuare nuove situazioni critiche e perfezionare le strategie atte a minimizzarne gli impatti, mediante un costante monitoraggio. Di seguito vengono presentati i rischi identificati attraverso un processo di valutazione strutturato, che consente di evidenziare le fasi di individuazione, valutazione e prevenzione di tali rischi:


  - *Identificazione*: coinvolge il riconoscimento e l'enumerazione delle possibili situazioni sfavorevoli che potrebbero verificarsi durante il progetto. È il processo di individuare e catalogare in modo esauriente tutti i possibili elementi che potrebbero rappresentare una minaccia;
  - *Valutazione*: implica l'analisi dettagliata di ciascuna situazione rilevata durante l'identificazione, assegnando loro un grado di probabilità e impatto per comprendere meglio il loro potenziale effetto sul progetto. Questo processo aiuta a classificare i rischi in base alla loro gravità e alla loro probabilità di manifestarsi;
  - *Prevenzione*: coinvolge l'adozione di misure o strategie proattive per ridurre o mitigare l'incidenza e l'impatto dei rischi individuati. Questo comprende l'implementazione di azioni preventive e la messa in atto di piani di contingenza per affrontare efficacemente eventuali situazioni avverse.


I rischi sono stati suddivisi a seconda della loro sfera di impatto:
  - Rischi Tecnologici;
  - Rischi di Comunicazione;
  - Rischi di Pianificazione.

== Rischi Tecnologici
=== *RT1 - Conoscenza tecnologica limitata* 
La mancanza di familiarità o esperienza con le tecnologie specifiche impiegate nel progetto, può potenzialmente influenzare lo sviluppo e la qualità del software.
  - *Identificazione*: in principio è stata condotta un'analisi delle competenze tecniche di ciascun membro internamente al team, evidenziando le aree di conoscenza e le lacune individuali; successivamente è stata effettuata una breve consultazione con la Proponente con l'obiettivo di fornirle un'idea del livello attuale di competenze tecniche del team. 
  - *Valutazione*: Pericolosità: alta; Occorrenza: alta.
  - *Prevenzione*:
    - Formazione da parte della Proponente: la Proponente organizza incontri periodici di formazione focalizzati sulle tecnologie specifiche utilizzate nel progetto, offrendo così al team la possibilità di colmare le lacune e approfondire le conoscenze;
    - #glossary("Workshop") interni: il team organizza workshop interni guidati dai membri più esperti su determinate tecnologie, consentendo loro di condividere conoscenze e esperienze con gli altri membri del team e favorendo l'apprendimento reciproco;
    - Lavoro in coppia: durante le fasi in cui lo sviluppo di codice richiede un contributo più rilevante, il team adotterà un approccio di lavoro in coppia. Questa pratica consentirà ai membri del team di condividere conoscenze e competenze, aiutandosi reciprocamente a superare le lacune individuali nelle conoscenze tecnologiche.

=== *RT2 - Difficoltà nell'adozione degli strumenti di gestione del progetto*
Il team potrebbe incontrare sfide nell'apprendere l'utilizzo e nell'integrazione dei nuovi strumenti di gestione del progetto, causando ritardi nell'effettiva implementazione di un #glossary("Way of working") efficiente.
  - *Identificazione*: la difficoltà nell'adozione degli strumenti può manifestarsi quando i membri del team incontrano dubbi o incertezze riguardo alle procedure da seguire o all'utilizzo degli strumenti stessi.
  - *Valutazione*: Pericolosità: media; Occorrenza: bassa.
  - *Prevenzione*:
    - Norme di Progetto: tutti i dettagli del _way of working_ vengono concordati durante i meeting interni e normati all'interno delle Norme di Progetto. In caso di dubbi o incertezze, il riferimento a queste norme o la richiesta di chiarimenti all'Amministratore del progetto rappresentano un'importante risorsa per la risoluzione tempestiva di problemi legati agli strumenti e alle procedure;
    - Inclusione di dubbi nell'Ordine del giorno: l'inclusione dei dubbi e delle incertezze nelle proposte dell'ordine del giorno del meeting interno successivo consente al team di affrontare in modo strutturato e tempestivo le difficoltà riscontrate, garantendo un ambiente in cui tali problemi possano essere risolti in modo collaborativo e efficiente.

=== *RT3 - Produzione di codice poco comprensibile*
Data l'inesperienza dei membri che lo compongono, il team potrebbe produrre codice difficile da comprendere, contorto. Questo unito ad un'eventuale carenza di relativa documentazione potrebbe influenzare negaitivamente i tempi di sviluppo. 
  - *Identificazione*: un segnale evidente della manifestazione di questo rischio è la crescità delle discussioni relative all'interpretazione del codice tra i componenti del team.
  - *Valutazione*:  Pericolosità: media; Occorrenza: media.
  - *Prevenzione*: 
    - Code Reviews: effettuare revisioni regolari del codice; 
    - Continuo Refactoring: integrando all'interno del processo di sviluppo frequenti attività di Refractoring si migliora notevolmente la comprensibilità del codice; 
    - Documentazione Adeguata: incoraggiare la produzione di una documentazione approfondita per il codice; 
    - _Convenzioni di codifica_:  seguire le stesse linee guida porta il team a standardizzare il modo in cui il codice viene scritto, di conseguenza ne aumenta la chiarezza e la mantenibilità. 


== Rischi di Comunicazione
=== *RC1 - Mancata organizzazione della comunicazione interna*
La mancata organizzazione della comunicazione interna si riferisce a situazioni in cui non esiste una struttura definita o linee guida chiare per la trasmissione efficace delle informazioni all'interno del team. Questa mancanza di direzione può portare a fraintendimenti, confusione o ritardi nella comunicazione.
  - *Identificazione*: questo rischio si manifesta quando non esiste una struttura chiara per la comunicazione all'interno del team, può essere riconosciuto attraverso il sovrapporsi di messaggi, discussioni disordinate o mancanza di canali dedicati.
  - *Valutazione*: Pericolosità: bassa; Occorrenza: bassa.
  - *Prevenzione*:
    - Pianificazione della comunicazione: stabilire canali di comunicazione specifici per diversi tipi di messaggi (ad esempio discussioni generali, questioni urgenti, cambiamenti dello stato delle _issue_ nell'ITS, proposte per l'ordine del giorno e altro);
    - Ordine del giorno: definire un ordine del giorno chiaro per i meeting interni settimanali, con tempi stabiliti per ciascun argomento;
    - Stand-up meeting giornalieri: riunioni brevi e quotidiane favoriscono una migliore comprensione dello stato del progetto, consentendo a ciascun membro del team di aggiornare gli altri sui progressi, sulle sfide incontrate e sui prossimi passi. Questa pratica aiuta a identificare i problemi in modo tempestivo, a fornire supporto reciproco e a mantenere il team allineato con gli obiettivi comuni.

=== *RC2 - Esasperazione di conflitti interni*
Questi rischi emergono quando diversi punti di vista, preferenze o approcci all'interno del team conducono a tensioni, disaccordi o scontri tra i membri. Questi conflitti possono manifestarsi in varie forme, come contrasti di opinione riguardo alle metodologie di lavoro, differenze nell'interpretazione dei requisiti del progetto o incomprensioni personali.
- *Identificazione*: i conflitti interni possono essere riconosciuti attraverso segnali come un clima di tensione durante le discussioni, resistenze persistenti ad adottare soluzioni comuni, ritardi o difficoltà nella presa di decisioni.
- *Valutazione*: Pericolosità: media; Occorrenza: bassa.
- *Prevenzione*:
  - Politica di gestione dei disaccordi: consiste nell'offrire spazio ai membri in disaccordo per esporre le loro diverse prospettive in modo chiaro e rispettoso durante un meeting interno. Successivamente, il gruppo procede ad una votazione democratica per trovare una soluzione che ottenga il consenso della maggioranza dei partecipanti;
  - Mediatore interno: il Responsabile ha il ruolo di facilitare la risoluzione dei conflitti ascoltando entrambe le parti coinvolte, mediando la discussione in modo imparziale e cercando una soluzione che soddisfi le esigenze di entrambe le parti o che sia accettabile per la maggioranza del team.

=== *RC3 - Frequenza limitata nella comunicazione con la Proponente*
Si tratta della ridotta frequenza o della mancanza di contatti regolari e tempestivi con la Proponente, limitando così la disponibilità di informazioni cruciali o l'accesso a chiarimenti durante lo svolgimento del progetto.
  - *Identificazione*: Si rileva quando non ci sono comunicazioni regolari o risposte tempestive dalle parti interessate della Proponente in risposta a domande o richieste di chiarimenti.
  - *Valutazione*: Pericolosità: media; Occorrenza: bassa.
  - *Prevenzione*: 
    - Aggiornamenti regolari: mantenere la Proponente informata sugli sviluppi in modo regolare (almeno una volta alla settimana) e chiedere _feedback_ quando necessario;
    - Invio anticipato di domande: invio di email prima di ogni meeting esterno con la Proponente, presentando in anticipo le domande o i punti da discutere durante il meeting. Questo offre alla Proponente il tempo di prepararsi adeguatamente e fornire risposte dettagliate durante il meeting;
    - Consegna anticipata di materiale: quando si tratta di _Sprint retrospective_ o di qualsiasi revisione congiunta, fornire la documentazione o il codice prodotto nel rispettivo Sprint il prima possibile, in modo che la Proponente abbia tempo sufficiente per esaminarlo in modo approfondito prima del meeting. Ciò permette una discussione più efficace e informativa durante il meeting stesso.

=== *RC4 - Mancanza di fiducia*
I diversi livelli di competenze, esperienze negative passate e una comunicazione poco trasparente possono portare allo sviluppo di un clima di sfiducia reciproca tra i membri del team: ciò potrebbe compromettere il successo del progetto.  
  -*Identificazione*: la mancanza di fiducia può essere rilevata in presenza di segnali specifici come reticenza nella collaborazione o nell'assunzione di responsabilità condivise. In aggiunta, alcuni membri potrebbero dimostrarsi poco attivi nelle discussioni di gruppo o nelle attività cooperative. 
  - *Valutazione*: Pericolosità: media; Occorrenza: bassa.
  - *Prevenzione*: 
    -Promuovere incontri periodici: i membri del team hanno la possibilità di esprimere dubbi e preucupazioni, avere una discussione aperta su aspetti rilevanti del progetto e ricevere feedback sul lavoro fatto. In questo contesto va precisato che la costruzione del feedback gioca un ruolo fondamentale, dev'essere formulato in maniera tale da essere il più positivo possibile facendo si che non sia visto come una critica ma come un opportunità di miglioramento;
    -Promuovere la comprensione reciproca: il team si deve sforzare nel comprendere le condizioni e i punti di vista degli altri componenti per creare un clima di progetto positivo indirizzato verso il miglioramento.



== Rischi di Pianificazione
=== *RP1 - Comprensione erronea dei requisiti*
La comprensione erronea dei requisiti indica il potenziale malinteso o fraintendimento dei requisiti del progetto, che potrebbe portare a interpretazioni errate o divergenti da parte del team riguardo alle funzionalità o agli obiettivi del prodotto.
  - *Identificazione*: questo rischio può manifestarsi quando ci sono ambiguità nei requisiti documentati o quando i membri del team interpretano in modo differente i requisiti. È evidente quando emergono domande costanti riguardo ai requisiti durante le discussioni o quando si presentano discrepanze nelle interpretazioni durante le attività di progettazione.
  - *Valutazione*: Pericolosità: alta; Occorrenza: media.
  - *Prevenzione*: 
    - Analisi dei Requisiti: creazione di un documento chiaro e dettagliato contenente casi d'uso, requisiti funzionali e non funzionali, in modo da offrire una visione esaustiva e condivisa dei requisiti del progetto;
    - Sessioni di analisi e confronto dei requisiti con la Proponente: organizzazione di incontri regolari con la Proponente, durante i quali verranno presentati i requisiti identificati, discusse le interpretazioni e validate le esigenze. Queste sessioni permetteranno di raffinare e chiarire i requisiti iniziali, riducendo il rischio di interpretazioni erronee e garantendo una comprensione accurata delle necessità del cliente;
    - Adozione del #glossary("Framework Scrum"): l'implementazione del framework Scrum fornisce continui momenti di verifica e adattamento durante lo sviluppo del progetto. Tale approccio offre l'opportunità di identificare tempestivamente eventuali fraintendimenti o ambiguità nei requisiti, permettendo al team di chiarirli e correggerli nel minor tempo possibile.

=== *RP2 - Disallineamento delle componenti architetturali*
Questo rischio riguarda la possibilità di progettare componenti all'interno dell'architettura del sistema che potrebbero risultare incompatibili o in disaccordo una volta integrate o combinate. Ciò può generare conflitti nell'interoperabilità delle parti e compromettere la coesione del sistema nel suo insieme.
  - *Identificazione*: questo rischio è individuabile durante le fasi di progettazione, quando si evidenziano incongruenze tra le interfacce delle varie componenti o quando emergono problemi di compatibilità durante l'integrazione preliminare di parti del sistema.
  - *Valutazione*: Pericolosità: media; Occorrenza: media.
  - *Prevenzione*: 
    - Metodologia di progettazione modulare: adottare un approccio modulare durante la progettazione architetturale, suddividendo il sistema in componenti chiare e ben definite. Questo aiuta a identificare in anticipo eventuali discrepanze tra le parti e favorisce l'interoperabilità;
    - Revisioni incrociate: effettuare revisioni incrociate della progettazione tra membri del team per identificare potenziali disallineamenti o incongruenze nelle interfacce delle varie componenti. Questa pratica consente di individuare e risolvere precocemente i conflitti;
    - Test di integrazione preliminare: condurre test preliminari di integrazione delle componenti principali in una fase iniziale del progetto. Questi test aiutano a valutare la compatibilità e l'interoperabilità delle varie parti, riducendo così il rischio di disallineamento nell'architettura finale.

=== *RP3 - Variazioni nei tempi e costi del progetto*
Questo rischio si riferisce alla possibilità di variazioni significative rispetto alle tempistiche e ai costi pianificati inizialmente per lo sviluppo del progetto.
  - *Identificazione*: è individuabile attraverso l'osservazione di cambiamenti significativi nelle tempistiche di completamento delle attività rispetto alla pianificazione originale, così come variazioni notevoli nei costi di realizzazione.
  - *Valutazione*: Pericolosità: alta; Occorrenza: media.
  - *Prevenzione*: 
    - Pianificazione flessibile: adottare una pianificazione flessibile che preveda margini di tempo e costi per eventuali imprevisti o variazioni;
    - Rendicontazione di ore produttive: si utilizza uno _spreadsheet_ dedicato nel quale ciascun membro del team registra quotidianamente le ore produttive utilizzate, specificando le attività svolte e il ruolo assunto. Questo approccio consente di trarre conclusioni riguardo allo stato delle ore totali impiegate e al _budget_ iniziale disponibile, permettendo una migliore gestione delle risorse nel progetto;
    - Monitoraggio Costante: si mantiene un monitoraggio costante del progresso del progetto, permettendo l'aggiornamento della pianificazione in caso di variazioni significative. In particolare, all'interno dell'ITS si effettua un costante aggiornamento delle date di inizio e fine per ogni _issue_, riflettendo con precisione le tempistiche effettive. Inoltre, si utilizza regolarmente la vista Gantt all'interno della Kanban Board del progetto in GitHub per visualizzare la pianificazione temporale e individuare potenziali variazioni o sovrapposizioni nelle attività pianificate.

== Tabella riassuntiva
I rischi individuati vengono riportati in tabella, assieme alla loro pericolosità e occorrenza:
#table(
  columns: (60%, 20%, 20%),
  align: (left, center, center),
  [*Rischio*], [*Pericolosità*], [*Occorrenza*],
  [*RT1* - Conoscenza tecnologica limitata], [Alta], [Alta],
  [*RT2* - Difficoltà nell'adozione degli strumenti di gestione del progetto], [Media], [Bassa],
  [*RC1* - Mancata organizzazione della comunicazione interna], [Bassa], [Bassa],
  [*RC2* - Esasperazione di conflitti interni], [Media],  [Bassa],
  [*RC3* - Frequenza limitata nella comunicazione con la Proponente], [Media], [Bassa],
  [*RP1* - Comprensione erronea dei requisiti], [Alta], [Media],
  [*RP2* - Disallineamento delle componenti architetturali], [Media], [Media],
  [*RP3* - Variazioni nei tempi e costi del progetto], [Alta], [Media]
)
