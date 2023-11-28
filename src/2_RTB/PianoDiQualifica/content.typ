#import "functions.typ": glossary, team

/*************************************/
/*    INSERIRE SOTTO IL CONTENUTO    */ 
/*************************************/

= Introduzione 

Il _Piano di Qualifica_ è un documento fondamentale che delinea le strategie e le attività mirate a garantire la qualità del prodotto. Adattandosi alle mutevoli esigenze e ai requisiti del progetto didattico, questo strumento si propone di guidare il team attraverso un percorso di miglioramento continuo, definendo metriche quantitative ed effettuando valutazioni qualitative che rispecchino l'efficacia ed efficienza del processo di sviluppo. Il piano, orientato all'incrementalità, mira a fornire una chiara roadmap per la valutazione continua, includendo la definizione dettagliata di test, criteri di accettazione e la documentazione accurata degli esiti ottenuti. Il documento costituisce un impegno concreto per assicurare la qualità in modo costante e definita nel corso dello sviluppo del progetto.


== Scopo 

Il presente documento ha i seguenti scopi:

          - Definizione standard di qualità;
          - Definizione metriche e criteri quantitativi per valutare l'efficacia del processo e del prodotto;
          - Gestione dei test: definizione di test, la pianificazione delle attività di test, la valutazione dei risultati.
          - Verifica e validazione del prodotto includendo test di unità, di integrazione, di sistema, di accettazione;           
          - Gestione dei Difetti e delle Anomalie riscontrate durante le attività di verifica;
          - Miglioramento continuo attraverso l'adattamento del piano in base alle esperienze acquisite e alle modifiche nei requisiti del progetto. 


= Qualità di Processo 

== Obiettivi 

Si riferisce all'efficacia ed efficienza dei processi e delle metodologie impiegate nello sviluppo, testing e mantenimento del software. Essa abbraccia l'insieme di attività, pratiche e metodi utilizzati lungo l'intero ciclo di vita dello sviluppo del software al fine di garantire che il prodotto finale soddisfi i requisiti specificati e venga consegnato puntualmente e entro il budget previsto. In questo contesto, la qualità di processo è fondamentale per assicurare un'implementazione coerente, misurabile e ottimizzata delle fasi di sviluppo, contribuendo a conseguire gli obiettivi di qualità complessivi.


== Processi Primari  

=== Fornitura 

Le metriche di progetto usate nella fornitura sono misure utilizzate per valutare diversi aspetti del processo di sviluppo e del prodotto risultante. Alcune delle metriche comuni utilizzate nella fornitura di progetti software includono:

  - *TCP*: _Total Cost Project_  indica la somma totale dei costi associati al progetto;
  - *BAC*: _Budget At Completion_  indica il budget totale pianificato per il completamento del progetto;
  - *EV*: _Earned Value_  rappresenta il valore prodotto dal progetto ossia il valore dei _deliverable_ rilasciati fino al momento della misurazione in seguito alle attività    svolte;
      + Formula:  EV = Percentuale di completamento del lavoro * BAC.
  - *PV*: _Planned Value_ Il valore del lavoro pianificato fino a un dato momento;
        + Formula: PV = Percentuale di pianificazione del lavoro * BAC.
  - *AC*: _Actual Cost_ Il costo effettivo sostenuto fino a un dato momento;
  - *CPI*:_Cost Performance Index_ Misura l'efficienza del costo del lavoro svolto fino a un dato momento;
          + Formula: CPI = EV / AC.
  - *SPI*: _Schedule Performance Index_ Misura l'efficienza del tempo rispetto alla pianificazione;
        + Formula: SPI = EV / PV.
  - *EAC*: _Estimated at Completion_ Stima del costo totale previsto per completare il progetto;
        + Formula: EAC = BAC / CPI.
  - *ETC*: _Estimated To Completion_ Stima del costo aggiuntivo necessario per completare il progetto;
        + Formula: 