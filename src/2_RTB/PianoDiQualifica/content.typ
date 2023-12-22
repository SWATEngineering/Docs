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

== Glossario
Al fine di evitare possibili ambiguità relative al linguaggio utilizzato nei documenti, viene
fornito il _Glossario_, nel quale sono presenti tutte le definizioni di termini aventi un significato specifico che vuole essere disambiguato. Tali termini, sono scritti in _corsivo_ e marcati con una #sub("G") a pedice.
Un'attività che comprende l'inserimento di un termine di glossario può considerarsi conclusa solo nel momento in cui il termine viene scritto e spiegato nel _Glossario_.

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

#table(
      columns:(auto,auto,auto,auto),
      align: (x, y) => (center, center, center,center).at(x),
      fill:(_,row) =>if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Metrica*],[*Descrizione*],[*Valore accettazione*],[*Valore ideale*],
      ..fornitura.flatten()  
)

=== Codifica 

#table(
      columns:(auto,auto,auto,auto),
      align: (x, y) => (center, center, center,center).at(x),
      fill:(_,row) => if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Metrica*],[*Descrizione*],[*Valore accettazione*],[*Valore ideale*],
      [MPC-CCM], [Complessità Ciclomatica per Metodo], [≤ 5], [≤ 3],
      [MPC-CC], [Code Coverage], [≥80%], [100%],
      [MPC-PTCP], [Passed Test Cases Percentage], [≥ 80%], [100%],
      [MPC-FTCP], [Failed Test Cases Percentage], [≤ 20%], [0%]
)

== Processi di supporto

==== Documentazione

#table(
      columns:(auto,auto,auto,auto),
      align: (x, y) => (center, center, center,center).at(x),
      fill:(_,row) => if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Metrica*],[*Descrizione*],[*Valore accettazione*],[*Valore ideale*],
      [MPC-IG], [Indice Gulpease], [≥ 60], [100],
      [MPC-CO], [Correttezza Ortografica], [0], [0]
)

#pagebreak()
= Qualità di Prodotto 

#table(
      columns:(auto,auto,auto,auto),
      align: (x, y) => (center, center, center,center).at(x),
      fill:(_,row) => if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Metrica*],[*Descrizione*],[*Valore accettazione*],[*Valore ideale*],
      [MPR-ROS], [Requisiti Obbligatori Soddisfatti], [100%], [100%],
      [MPR-RDS], [Requisiti Desiderabili Soddisfatti], [≥ 0%], [≥ 75%],
      [MPR-ROPS], [Requisiti Opzionali Soddisfatti], [≥ 0%], [≥ 50%],
      [MPR-FU], [Facilità di utilizzo], [≤ 7 click], [≤ 5 click],
      [MPR-FIN], [Structure Fan In], [da determinare], [da determinare], 
      [MPR-FOUT], [Structure Fan Out], [da determinare], [da determinare],
      [MPR-ATC], [Attributi per Classe], [≤ 6], [≤ 4],
      [MPR-PM], [Parametri per Metodo], [≤ 5], [≤ 4],
      [MPR-LCM], [Linee di Codice per Metodo], [≤ 25], [≤ 20]
)

#pagebreak()
= Specifica dei test

#pagebreak()
= Cruscotto delle metriche

== Qualità di Processo - Fornitura

=== Estimated at Completion

#figure(
  image("./assets/valutazione-metriche/EAC.png", width: 80%),
  caption: [
    Valutazione Estimated At Completion.
  ],
)

L'EAC rappresenta una revisione del valore stimato per la realizzazione del progetto, ossia il BAC (Budget At Completion) rivisto allo stato corrente del progetto; il fattore che incide maggiormente sull'andamento dell'EAC è il rapporto tra EV (Estimated Value) e AC (Actual Cost), per cui tanto più queste metriche sono vicine l'una all'altra, tanto più l'EAC risulterà vicino al BAC pianificato inizialmente. Come viene evidenziato dal grafico l'EAC calcolato al termine dei primi sprint risulta essere relativamente vicino al BAC preventivato inizialmente e si mantiene entro i limiti accettabili; in particolare, il fatto che l'EAC fosse minore del BAC al termine del primo sprint ha portato il team a rivedere la percentuale di lavoro preventivata ed effettivamente eseguita negli sprint successivi in modo da mantenere un ritmo di lavoro quanto più possibile costante e riavvicinare l'EAC al BAC. 

=== Budget Variance e Schedule Variance

#figure(
  image("./assets/valutazione-metriche/BV_SV.png", width: 80%),
  caption: [
    Valutazione Budget Variance e Schedule Variance.
  ],
)

Il BV indica se alla data corrente si è speso di più o di meno rispetto a quanto inizialmente previsto nel budget; il SV indica se si è in linea, in anticipo o in ritardo rispetto alla schedulazione delle attività di progetto pianificate. Come evidenziato dal grafico, il BV è negativo e sembra diminuire progressivamente nel tempo, segno che i costi effettivamente sostenuti sono maggiori rispetto a quanto preventivato. Il SV è invece positivo e sembra aumentare progressivamente nel tempo, segno che la percentuale di lavoro preventivato è tendenzialmente minore rispetto a quella del lavoro portato a compimento. Questo denota una sottostima del lavoro che si è preventivato di riuscire a portare a termine nei primi sprint, rispetto a quanto effettivamente prodotto dal team.

=== Actual Cost e Estimate To Complete

#figure(
  image("./assets/valutazione-metriche/AC_ETC.png", width: 80%),
  caption: [
    Valutazione Actual Cost e Estimate To Complete.
  ],
)

L'AC rappresenta il costo effettivo sostenuto fino a un dato momento, mentre l'ETC rappresenta la stima del costo aggiuntivo necessario per
completare il progetto; di conseguenza, ci si aspetta che l'AC cresca e che l'ETC diminuisca in modo sostanzialmente lineare, segno che il progetto ha mantenuto un ritmo regolare di avanzamento. Stabilire l'andamento delle due metriche al momento dell'RTB è alquanto prematuro, dati i pochi data points a disposizione.

=== Earned Value e Planned Value

#figure(
  image("./assets/valutazione-metriche/EV_PV.png", width: 80%),
  caption: [
    Valutazione Earned Value e Planned Value.
  ],
)

L'EV rappresenta il valore prodotto dal progetto ossia il valore dei #glossary[deliverable] rilasciati fino al momento della misurazione in seguito alle attività svolte; il PV rappresenta invece il valore del lavoro pianificato fino a un dato momento. Nonostante sia ancora prematuro confrontare le due metriche con l'EAC, si può notare che il PV si mantiene al di sotto dell'EV, seppur di poco, segno che i preventivi fatti finora sono stati leggermente ottimistici rispetto alla spesa effettiva. 

== Qualità di Processo - Codifica

== Qualità di Processo - Documentazione

=== Indice Gulpease

#figure(
  image("./assets/valutazione-metriche/IG.png", width: 80%),
  caption: [
    Valutazione Indice Gulpease.
  ],
)

Al termine del secondo sprint, tutti i documenti in corso di preparazione in vista dell'RTB possiedono un IG al di sopra del limite accettabile inferiore di 60; in particolare, l'_Analisi dei Requisiti_ ha raggiunto il valore ideale. 

=== Correttezza ortografica

#figure(
  image("./assets/valutazione-metriche/CO.png", width: 80%),
  caption: [
    Valutazione correttezza Ortografica.
  ],
)

Seppur i documenti presentavano alcuni errori ortografici al termine dei primi sprint, da quando si è adottato uno strumento di controllo dell'ortografia sia in fase di stesura che in fase di revisione (al termine del secondo sprint) gli errori sono diminuiti significativamente come ci si attendeva. L'obiettivo principale è fare in modo che non vi siano errori in alcuno dei documenti prima della revisione RTB.

== Qualità di prodotto


















      
