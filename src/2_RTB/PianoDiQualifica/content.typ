#import "functions.typ": glossary, team
#let fornitura=csv("Mfornitura.csv")

/*************************************/
/*    INSERIRE SOTTO IL CONTENUTO    */ 
/*************************************/

= Introduzione 

Il _Piano di Qualifica_ è un documento fondamentale che delinea le strategie e le attività mirate a garantire la qualità del prodotto. Adattandosi alle mutevoli esigenze e ai requisiti del progetto didattico, questo strumento si propone di guidare il team attraverso un percorso di miglioramento continuo, definendo metriche quantitative ed effettuando valutazioni qualitative che rispecchino l'efficacia ed efficienza del processo di sviluppo. Il piano, orientato all'incrementalità, mira a fornire una chiara roadmap per la valutazione continua, includendo la definizione dettagliata di test, criteri di accettazione e la documentazione accurata degli esiti ottenuti. Il documento costituisce un impegno concreto per assicurare la qualità in modo costante e definita nel corso dello sviluppo del progetto.


== Scopo 

Questo documento ha lo scopo di garantire la qualità del processo e del prodotto attraverso diversi passaggi fondamentali. Prima di tutto, stabilisce gli standard di qualità da seguire. Successivamente, definisce i criteri e le misure che verranno utilizzati per valutare quanto sia efficace il processo e il risultato ottenuto.

Inoltre, gestisce tutte le fasi del testing: dalla pianificazione dei test fino alla valutazione dei risultati ottenuti. Include anche verifiche e controlli approfonditi del prodotto, che comprendono test specifici su varie parti (come unità, integrazione, sistema e accettazione). Questo processo di verifica aiuta anche a gestire eventuali difetti o anomalie rilevate durante le attività di test.

Infine, è orientato al miglioramento costante: si adatta in base alle esperienze acquisite e a eventuali modifiche richieste nel progetto, garantendo così che il processo e il prodotto crescano e si evolvano con il tempo.

== Riferimenti
=== Normativi
- _Norme di progetto_;
- Documento e presentazione di capitolato d'appalto C6 - InnovaCity:
  - _ https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C6.pdf _
  - _ https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C6p.pdf _
- Regolamento di progetto:
  - _ https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/PD2.pdf _

=== Informativi
- Slide dell'insegnamento di Ingegneria del Software:
  - Qualità del software:
    - _ https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T7.pdf _
  - Qualità di processo:
    - _ https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T8.pdf _
  - Verifica e Validazione:
    - _ https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T9.pdf _
    - _ https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T10.pdf _
    - _ https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T11.pdf _

#pagebreak()
= Qualità di Processo 

== Obiettivi 

Si riferisce all'efficacia ed efficienza dei processi e delle metodologie impiegate nello sviluppo, testing e mantenimento del software. Essa abbraccia l'insieme di attività, pratiche e metodi utilizzati lungo l'intero ciclo di vita dello sviluppo del software al fine di garantire che il prodotto finale soddisfi i requisiti specificati e venga consegnato puntualmente ed entro il budget previsto. In questo contesto, la qualità di processo è fondamentale per assicurare un'implementazione coerente, misurabile e ottimizzata delle fasi di sviluppo, contribuendo a conseguire gli obiettivi di qualità complessivi.


== Processi Primari  

=== Fornitura 

Le metriche di progetto usate nella fornitura sono misure utilizzate per valutare diversi aspetti del processo di sviluppo e del prodotto risultante. Alcune delle metriche comuni utilizzate nella fornitura di progetti software includono:

  - *TCP*: _Total Cost Project_  indica la somma totale dei costi associati al progetto;
  - *BAC*: _Budget At Completion_  indica il budget totale pianificato per il completamento del progetto;
  - *EV*: _Earned Value_  rappresenta il valore prodotto dal progetto ossia il valore dei #glossary("deliverable") rilasciati fino al momento della misurazione in seguito alle attività svolte;
      - Formula:  $"EV" = "Percentuale di completamento del lavoro" dot "BAC"$.
  - *PV*: _Planned Value_ il valore del lavoro pianificato fino a un dato momento;
        - Formula: $"PV" = "Percentuale di pianificazione del lavoro" dot "BAC"$.
  - *AC*: _Actual Cost_ il costo effettivo sostenuto fino a un dato momento;
  - *CPI*: _Cost Performance Index_ misura l'efficienza del costo del lavoro svolto fino a un dato momento;
          - Formula: $"CPI" = "EV" / "AC"$.
  - *SPI*: _Schedule Performance Index_ misura l'efficienza del tempo rispetto alla pianificazione del progetto. Fornisce un indicatore numerico che rappresenta il rapporto tra il lavoro effettivamente eseguito (o il valore guadagnato) e il lavoro pianificato fino a un determinato punto nel tempo.  Aiuta a valutare quanto il progetto sta rispettando il programma pianificato;
        - Formula: $"SPI" = "EV" / "PV"$.
  - *EAC*: _Estimated at Completion_ revisione del valore stimato per la realizzazione del progetto, ossia il BAC rivisto allo stato corrente del progetto;
        - Formula: $"EAC" = "BAC" / "CPI"$.
  - *ETC*: _Estimated To Completion_ stima del costo aggiuntivo necessario per completare il progetto;
        - Formula: $"ETC" = "EAC" - "AC"$.
  - *VAC*: _Variance at Completion_ la differenza tra il budget previsto e il budget attuale alla fine del progetto;
        - Formula: $"VAC" = "BAC" - "EAC"$.
  - *SV*: _Schedule Variance_ indica se si è in linea, in anticipo o in ritardo rispetto alla schedulazione delle attività di progetto pianificate nella baseline;
        - Formula: $"SV" = "EV" - "PV"$.
  - *CV*: _Cost Variance_ la differenza tra il valore del lavoro effettivamente svolto e il costo effettivo del lavoro svolto fino a un dato momento;
        - Formula: $ "CV" = "EV" - "AC"$.
  - *BV*: _Budget Variance_ indica se alla data corrente si è speso di più o di meno rispetto a quanto inizialmente previsto nel budget.
        - Formula: $"BV" = "PV" - "AC"$.


Le metriche della qualità di processo verrano identificate con:

                     *MPC-[Nome abbreviato]*

*Legenda*:

      - *Nome abbreviato*: Nome della metrica specifica abbreviata.

#table(
      columns:(auto,auto,auto,auto),
      align: (x, y) => (center, center, center,center).at(x),
      fill:(_,row) =>if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Metrica*],[*Descrizione*],[*Valore accettazione*],[*Valore ideale*],
      ..fornitura.flatten()  
)

=== Sviluppo 


==== Progettazione architteturale 

Sono state individuate due metriche principali:

            + *SFIN*: _Structure Fan In_;
                  - *_Descrizione_*: rappresenta il numero di moduli o componenti che chiamano un modulo o una funzione specifica;
                  - *_Significato_*: un fan-in elevato indica che molte parti del sistema dipendono da un particolare modulo. Questo può essere un segno positivo di riusabilità, in quanto il modulo è utilizzato in molte parti del sistema.
            + *SFOUT*: _Structure Fan Out_;
                  - *_Descrizione_*: rappresenta il numero di moduli o funzioni chiamati da un modulo o una funzione specifica;
                  - *_Significato_*: un fan-out elevato può indicare che un modulo ha molte dipendenze da altri moduli. Questo può portare a una maggiore complessità del sistema, poiché le modifiche in un modulo possono richiedere modifiche in molti altri moduli.


#table(
      columns:(auto,auto,auto,auto),
      align: (x, y) => (center, center, center,center).at(x),
      fill:(_,row) => if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Metrica*],[*Descrizione*],[*Valore accettazione*],[*Valore ideale*],
      [MPC-FIN], [Structure Fan In], [?], [?], 
      [MPC-FOUT], [Structure Fan Out], [?], [?]
)




==== Codifica  

      - *Complessità Ciclomatica*: quantifica la complessità del codice misurando il numero di percorsi linearmente indipendenti attraverso il grafo di controllo di flusso del programma. Più è alta la complessità ciclomatica, maggiore è la complessità del codice;
      - *Numero di violazioni delle regole di codifica*: conta il numero di violazioni delle regole di codifica stabilite per il progetto;
      - *Numero di bug per linea di codice*: misura la densità di difetti nel codice, espressa come il numero di #glossary("bug") riscontrati per ogni 1000 linee di codice (KLOC);
      - *Cicli di complessità essenziale*: misura la complessità intrinseca del software, escludendo la complessità dovuta alle scelte di implementazione;
      - *Rapporto di churn del codice*: indica la frequenza con cui le linee di codice sono modificate nel tempo, fornendo informazioni sulla stabilità del codice e sulla necessità di frequenti modifiche.

== Processi di Supporto

=== Documentazione  

      - *IG*: _Indice Gulpease_ metrica utilizzata per valutare la leggibilità di un testo in lingua italiana.
             L'Indice Gulpease tiene conto di due variabili linguistiche: la lunghezza delle parole e la lunghezza delle frasi. La formula per calcolare l'indice è la seguente:

             $ "IG" = 89 + (300 dot "Nf" - "Nl")/"Np"$

             Dove:

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
      - *Correttezza ortografica*: Numero errori grammaticali o ortografici per documento.


#pagebreak()
= Qualità di Prodotto 












      
