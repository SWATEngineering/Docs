#import "functions.typ": glossary, team
#let fornitura=csv("Mfornitura.csv")

/*************************************/
/*    INSERIRE SOTTO IL CONTENUTO    */ 
/*************************************/

= Introduzione 

Il _Piano di Qualifica_ è un documento fondamentale che delinea le strategie e le attività mirate a garantire la qualità del prodotto. Adattandosi alle mutevoli esigenze e ai requisiti del progetto didattico, questo strumento si propone di guidare il team attraverso un percorso di miglioramento continuo, definendo metriche quantitative ed effettuando valutazioni qualitative che rispecchino l'efficacia ed efficienza del processo di sviluppo. Il piano, orientato all'incrementalità, mira a fornire una chiara roadmap per la valutazione continua, includendo la definizione dettagliata di test, criteri di accettazione e la documentazione accurata degli esiti ottenuti. Il documento costituisce un impegno concreto per assicurare la qualità in modo costante e definita nel corso dello sviluppo del progetto.


== Scopo 

Il presente documento ha i seguenti scopi:

          - Definizione standard di qualità;
          - Definizione metriche e criteri quantitativi per valutare l'efficacia del processo e del prodotto;
          - Gestione dei test: definizione di test, la pianificazione delle attività di test, la valutazione dei risultati;
          - Verifica e validazione del prodotto includendo test di unità, di integrazione, di sistema, di accettazione;           
          - Gestione dei Difetti e delle Anomalie riscontrate durante le attività di verifica;
          - Miglioramento continuo attraverso l'adattamento del piano in base alle esperienze acquisite e alle modifiche nei requisiti del progetto. 

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

== Fornitura

=== Estimated at Completion

#figure(
  image("./assets/valutazione-metriche/EAC.png", width: 80%),
  caption: [
    Valutazione Estimated At Completion.
  ],
)

== Actual Cost e Estimate To Complete

#figure(
  image("./assets/valutazione-metriche/AC_ETC.png", width: 80%),
  caption: [
    Valutazione Actual Cost e Estimate To Complete.
  ],
)

== Earned Value e Planned Value

#figure(
  image("./assets/valutazione-metriche/EV_PV.png", width: 80%),
  caption: [
    Valutazione Earned Value e Planned Value.
  ],
)

















      
