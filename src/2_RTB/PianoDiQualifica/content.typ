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






= Strategie di testing

In questa sezione viene esposto il piano di testing che verrà utilizzato per garantire la correttezza finale del prodotto.
Come enunciato nel documento _Norme di Progetto_, il piano segue il #glossary("modello a V"), il quale associa ad ogni fase di sviluppo, una corrispondente tipologia di testing. Tali tipologie sono le seguenti:
- *Test di unità*: si verifica il corretto funzionamento delle unità componenti il sistema. Un'unità rappresenta un elemento indivisibile e indipendente del sistema;
- *Test di integrazione*: si verifica il corretto funzionamento di più unità che cooperano per svolgere uno specifico compito (tali unità devono certamente aver superato i loro test di unità precedentemente);
- *Test di sistema*: si verifica il corretto funzionamento del sistema nella sua interezza. I requisiti funzionali obbligatori, di vincolo, di qualità e di prestazione, precedentemente concordati con il committente mediante stipulazione del contratto, devono essere soddisfatti per intero;
- *Test di accettazione*: si verifica il soddisfacimento del committente rispetto al prodotto software. Il loro superamento permette di procedere con il rilascio del prodotto.

== Test di accettazione
In questa sezione vengono descritti i test di accettazione del prodotto software, eseguiti sia dal gruppo #team che dalla Proponente sotto la supervisione del gruppo.
Si vuole, con tali test, andare a validare il prodotto prima del suo rilascio.

#let test_di_accettazione = (
      ([
          Verificare che l'#glossary("amministratore pubblico") senza autenticazione possa:
            1. usufruire dell'applicazione senza doversi autenticare.
      ],"N/I",[
            UC1\
            UC2\
            UC3\
            UC4\
            UC5\
            UC6\
            UC7\
            UC8
      ]),
      ([
          Verificare che l'#glossary("amministratore pubblico"), una volta entrato nell'applicazione, possa:
            1. aprire il menu di selezione delle #glossary("dashboard");
            2. selezionare la #glossary("dashboard") per visualizzare la panoramica generale dei sensori;
            3. visualizzare la relativa #glossary("dashboard");
            4. visualizzare un #glossary("pannello") con una mappa indicante la posizione di tutti i sensori;
            5. visualizzare un #glossary("pannello") con una tabella che mostra lo stato di tutti i sensori.
            6. visualizzare un messaggio di avvertenza di dati mancanti, nei vari #glossary("pannelli"), nel caso il sistema non riesca a reperire i dati.
      ],"N/I",[
            UC1\
            UC1.1\
            UC1.2
      ]),
      ([
          Verificare che l'#glossary("amministratore pubblico"), una volta entrato nell'applicazione, possa:
            1. aprire il menu di selezione delle #glossary("dashboard");
            2. selezionare la #glossary("dashboard") per visualizzare i dati ambientali;
            3. visualizzare la relativa #glossary("dashboard");
            4. visualizzare un #glossary("pannello") con la #glossary("serie storica") delle temperature rilevate dai ciascun sensore;
            5. visualizzare un #glossary("pannello") con la #glossary("serie storica") delle percentuali di umidità rilevate da ciascun sensore;
            6. visualizzare un #glossary("pannello") con una mappa mostrante velocità e direzione del vento rilevato da ciascun sensore;
            7. visualizzare un #glossary("pannello") con la #glossary("serie storica") dei millimetri di pioggia rilevati da ciascun sensore;
            8. visualizzare un #glossary("pannello") con la #glossary("serie storica") (in formato aggregato, andando a fare la media degli ultimi cinque minuti) dei millimetri di pioggia rilevati da ciascun sensore;
            9. visualizzare un #glossary("pannello") con la #glossary("serie storica") relativa ai dati sull'inquinamento dell'aria rilevati da ciascun sensore; /*TODO: sostituire con l'unità di misura/metrica giusta*/
            10. visualizzare un #glossary("pannello") con la #glossary("serie storica") (in formato aggregato, andando a fare la media degli ultimi cinque minuti) dei dati sull'inquinamento dell'aria rilevati da ciascun sensore; /*TODO: sostituire con l'unità di misura/metrica giusta*/
            11. visualizzare un #glossary("pannello") con la #glossary("serie storica") delle percentuali di riempimento dei bacini idrici rilevate dai ciascun sensore;
            12. visualizzare un #glossary("pannello") con la #glossary("serie storica") (in formato aggregato, andando a fare la media degli ultimi cinque minuti) delle temperature rilevate dai ciascun sensore;
            13. visualizzare un #glossary("pannello") con il valore massimo negli ultimi 5 minuti relativo all'inquinamento dell'aria. /*TODO: sistemare con le unità di misura giuste*/
            14. visualizzare un messaggio di avvertenza di dati mancanti, nei vari #glossary("pannelli"), nel caso il sistema non riesca a reperire i dati.
      ],"N/I",[
            UC2\
            UC2.1\
            UC2.2\
            UC2.3\
            UC2.4\
            UC2.5\
            UC2.6\
            UC2.7\
            UC2.8\
            UC2.9\
            UC2.10\
            UC2.11
      ]),
      ([
          Verificare che l'#glossary("amministratore pubblico"), una volta entrato nell'applicazione, possa:
            1. aprire il menu di selezione delle #glossary("dashboard");
            2. selezionare la #glossary("dashboard") per visualizzare i dati urbanistici;
            3. visualizzare la relativa #glossary("dashboard");
            4. visualizzare un #glossary("pannello") con una mappa indicante la quantità di posti liberi per ogni parcheggio controllato da un sensore;
            5. visualizzare un #glossary("pannello") con una mappa indicante i watt erogati da ciascuna colonna di ricarica controllata, indicando se è occupata o meno;
            6. visualizzare un #glossary("pannello") con una mappa indicante l'intensità del traffico sulle strade controllate; /*TODO: andare a specificare come questa intesità viene espressa (anche in adr)*/
            7. visualizzare un #glossary("pannello") con una mappa indicante la posizione di ciascuna bicicletta elettrica controllata, con la relativa percentuale di batteria;
            8. visualizzare un #glossary("pannello") con una mappa indicante la percentuale di riempimento di ogni zona rifiuti controllata;
            9. visualizzare un messaggio di avvertenza di dati mancanti, nei vari #glossary("pannelli"), nel caso il sistema non riesca a reperire i dati.
      ],"N/I",[
            UC3\
            UC3.1\
            UC3.2\
            UC3.3\
            UC3.4\
            UC3.5\
            UC3.6
      ]),
      ([
          Verificare che l'#glossary("amministratore pubblico"), una volta entrato nell'applicazione, possa:
            1. aprire il menu di selezione delle #glossary("dashboard");
            2. selezionare la #glossary("dashboard") per visualizzare i dati anomali prodotti dai sensori;
            3. visualizzare la relativa #glossary("dashboard");
            4. visualizzare una tabella contenente per ogni anomalia rilevata, il nome del sensore che l'ha rilevata. La tabella deve essere ordinata in base all'orario di registrazione dei dati.
      ],"N/I",[
            UC4
      ]),
      ([
          Verificare che l'#glossary("amministratore pubblico"), una volta entrato nell'applicazione, possa:
            1. ricevere notifiche relative al superamento di un qualche valore di soglia, impostato per determinati tipi di sensori. /*TODO: specificare i sensori (anche in adr)*/
      ],"N/I",[
            UC5
      ]),
      ([
          Verificare che l'#glossary("amministratore pubblico"), una volta entrato nell'applicazione, possa:
            1. Scegliere una #glossary("dashboard") da visualizzare;
            2. Applicare dei filtri, per selezionare un sottoinsieme di sensori da visualizzare, nel caso di #glossary("pannelli") di tipo #glossary("serie storica");
            3. Applicare dei filtri, per selezionare solo particolari tipologie di sensori da considerare, nel caso di #glossary("pannelli") contenenti tabelle, le quali comprendono più tipologie di sensori al loro interno; /*TODO: non ho idea se la mia interpretazione sia corretta o meno.*/
            4. Applicare dei filtri, per selezionare solo particolari sensori, mediante il nome, nel caso di #glossary("pannelli") contenenti tabelle;
            5. Applicare dei filtri, per selezionare solo i dati relativi ad un definito intervallo di tempo, all'interno di un'intera #glossary("dashboard");
            6. Applicare i filtri come #glossary("side effect") anche a tutti quei #glossary("pannelli") collegati ai #glossary("pannelli") filtrati attivamente dall'utente.
      ],"N/I",[
            UC6\
            UC6.1\
            UC6.2\
            UC6.3\
            UC6.4\
            UC6.5
      ]),
      ([
          Verificare che l'#glossary("amministratore pubblico"), una volta entrato nell'applicazione, possa:
            1. Scegliere una tabella da ordinare;
            2. Ordinare le righe di tale tabella per ciascuna sua colonna, in modo ascendente o discendente, secondo #glossary("ordinamento lessicografico") (nel caso di valori espressi in stringhe) o per confronto di valore numerico.
      ],"N/I",[
            UC7
      ]),
      ([
          Verificare che l'#glossary("amministratore pubblico"), una volta entrato nell'applicazione, possa:
            1. Scegliere una #glossary("dashboard") di cui modificare nel layout;
            2. Modificare il layout dei #glossary("pannelli") in termini di posizione di tali #glossary("pannelli") e di dimensioni.
      ],"N/I",[
            UC8
      ]),
      ([
          Verificare che un sensore, una volta connesso al sistema, possa:
            1. Inserire dati relativi alla temperatura, da esso monitorata, con annessi dati relativi al proprio stato interno. /*TODO: disambiguare lo stato interno specificando i dati*/
      ],"N/I",[
            U10\
            U21
      ]),
      ([
          Verificare che un sensore, una volta connesso al sistema, possa:
            1. Inserire dati relativi all'umidità, da esso monitorata, con annessi dati relativi al proprio stato interno. /*TODO: disambiguare lo stato interno specificando i dati*/
      ],"N/I",[
            U11\
            U21
      ]),
      ([
          Verificare che un sensore, una volta connesso al sistema, possa:
            1. Inserire dati relativi alla velocità e direzione del vento, da esso monitorata, con annessi dati relativi al proprio stato interno. /*TODO: disambiguare lo stato interno specificando i dati*/
      ],"N/I",[
            U12\
            U21
      ]),
      ([
          Verificare che un sensore, una volta connesso al sistema, possa:
            1. Inserire dati relativi alle precipitazioni, da esso monitorate, con annessi dati relativi al proprio stato interno. /*TODO: disambiguare lo stato interno specificando i dati*/ /*TODO: disambiguare la metrica delle precipitazioni*/
      ],"N/I",[
            U13\
            U21
      ]),
      ([
          Verificare che un sensore, una volta connesso al sistema, possa:
            1. Inserire dati relativi all'inquinamento dell'aria, da esso monitorata, con annessi dati relativi al proprio stato interno. /*TODO: disambiguare lo stato interno specificando i dati*/ /*TODO: disambiguare la metrica dell'inquinamento dell'aria*/
      ],"N/I",[
            U14\
            U21
      ]),
      ([
          Verificare che un sensore, una volta connesso al sistema, possa:
            1. Inserire dati relativi al livello del bacino idrico, da esso monitorato, con annessi dati relativi al proprio stato interno. /*TODO: disambiguare lo stato interno specificando i dati*/ /*TODO: disambiguare la metrica del livello dei bacini idrici*/
      ],"N/I",[
            U15\
            U21
      ]),
      ([
          Verificare che un sensore, una volta connesso al sistema, possa:
            1. Inserire dati relativi alla disponibilità dei parcheggi, inteso come numero di posti disponibili in un parcheggio da esso monitorato, con annessi dati relativi al proprio stato interno. /*TODO: disambiguare lo stato interno specificando i dati*/
      ],"N/I",[
            U16\
            U21
      ]),
      ([
          Verificare che un sensore, una volta connesso al sistema, possa:
            1. Inserire dati relativi alla disponibilità e ai watt erogati da una colonna di ricarica, da esso monitorata, con annessi dati relativi al proprio stato interno. /*TODO: disambiguare lo stato interno specificando i dati*/
      ],"N/I",[
            U17\
            U21
      ]),
      ([
          Verificare che un sensore, una volta connesso al sistema, possa:
            1. Inserire dati relativi alla posizione e alla percentuale di batteria della bicicletta, da esso monitorata, con annessi dati relativi al proprio stato interno. /*TODO: disambiguare lo stato interno specificando i dati*/
      ],"N/I",[
            U18\
            U21
      ]),
      ([
          Verificare che un sensore, una volta connesso al sistema, possa:
            1. Inserire dati relativi alla percentuale di riempimento di una zona ecologica, da esso monitorata, con annessi dati relativi al proprio stato interno. /*TODO: disambiguare lo stato interno specificando i dati*/
      ],"N/I",[
            U19\
            U21
      ]),
      ([
          Verificare che un sensore, una volta connesso al sistema, possa:
            1. Inserire dati relativi alla congestione stradale, da esso monitorata, con annessi dati relativi al proprio stato interno. /*TODO: disambiguare lo stato interno specificando i dati*/ /*TODO: disambiguare la metrica della congestione stradale*/
      ],"N/I",[
            U20\
            U21
      ]),
).enumerate(start:1).map(test => ("TA"+ str(test.at(0)),test.at(1).at(0),test.at(1).at(1),test.at(1).at(2)));

#show figure: set block(breakable: true)
#figure(
table(
      columns: (2fr,7fr,1fr),
      align: (center,left,center),
      fill:(_,row) =>if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Codice test*],[*Descrizione*],[*Stato*],
      ..test_di_accettazione.map(item => (item.at(0),item.at(1),item.at(2))).flatten().map(item => [#item])
),caption: "Test di accetazione.")

=== Tracciamento dei test di accettazione
#show figure: set block(breakable: true)
#figure(
table(
      columns: (80pt,80pt),
      align: (center,center),
      fill:(_,row) =>if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Codice test*],[*Codice caso d'uso*],
      ..test_di_accettazione.map(item => (item.at(0),item.at(3))).flatten().map(item => [#item])
),caption: "Tracciamento dei test di accetazione.")

== Test di sistema

/*TODO: per chi andrà a toccare questo documento per raffinarlo, andare a specificare meglio i vari punti singoli. Molto probabilmente l'automatismo per calcolare automaticamente il codice del requisito funzionale di riferimento andrà rimosso, e il codice inserito a mano, poichè ho come l'impressione che bisogna entrare molto di più nel dettaglio della verifica*/

#let test_di_sistema = (
      ([
            Verificare che l'#glossary("amministratore pubblico") possa accedere all'applicazione senza dover effettuare l'autenticazione.
      ],"N/I","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare una #glossary("dashboard") dedicata a fornire una panoramica generale dei sensori.
      ],"N/I","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare, nella #glossary("dashboard") dedicata a fornire una panoramica generale dei sensori, una mappa indicante le posizioni dei vari sensori, mediante icone.
      ],"N/I","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare, nella #glossary("dashboard") dedicata a fornire una panoramica generale dei sensori, una tabella che riporti una panoramica generale dei sensori. /*TODO: disambiguare "panoramica generale dei sensori"*/
      ],"N/I","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare una #glossary("dashboard") dedicata a visualizzare i dati ambientali provenienti dai sensori.
      ],"N/I","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare, nella #glossary("dashboard") dedicata a visualizzare i dati ambientali provenienti dai sensori, un pannello dedicato a mostrare l'andamento delle temperature in formato #glossary("serie storica").
      ],"N/I","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare, nella #glossary("dashboard") dedicata a visualizzare i dati ambientali provenienti dai sensori, un pannello dedicato a mostrare l'andamento dell'umidità in formato #glossary("serie storica"). /*TODO: disambiguare umidità.*/
      ],"N/I","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare, nella #glossary("dashboard") dedicata a visualizzare i dati ambientali provenienti dai sensori, un pannello contenente una mappa che evidenzi velocità e direzione del vento.
      ],"N/I","ROP"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare, nella #glossary("dashboard") dedicata a visualizzare i dati ambientali provenienti dai sensori, un pannello dedicato a mostrare l'andamento delle precipitazioni in formato #glossary("serie storica").
      ],"N/I","ROF"), /*TODO: disambiguare misura delle precipitazioni*/
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare, nella #glossary("dashboard") dedicata a visualizzare i dati ambientali provenienti dai sensori, un pannello dedicato a mostrare la media delle precipitazioni registrate negli utlimi 5 minuti tra tutti i sensori. 
      ],"N/I","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare, nella #glossary("dashboard") dedicata a visualizzare i dati ambientali provenienti dai sensori, un pannello dedicato a mostrare l'andamento dell'inquinamento dell'aria in formato #glossary("serie storica"). /*TODO: disambiguare la misura dell'inquinamento*/
      ],"N/I","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare, nella #glossary("dashboard") dedicata a visualizzare i dati ambientali provenienti dai sensori, un pannello dedicato a mostrare la media dell'inquinamento dell'aria registrato negli ultimi 5 minuti tra tutti i sensori. /*TODO: disambiguare la misura dell'inquinamento*/
      ],"N/I","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare, nella #glossary("dashboard") dedicata a visualizzare i dati ambientali provenienti dai sensori, un pannello dedicato a mostrare l'andamento dei dati relativi al livello dei bacini idrici in formato #glossary("serie storica"). /*TODO: disambiguare l'espressione di livello*/
      ],"N/I","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare, nella #glossary("dashboard") dedicata a visualizzare i dati ambientali provenienti dai sensori, un pannello dedicato a mostrare la media della temperatura registrata negli ultimi 5 minuti tra tutti i sensori.
      ],"N/I","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare, nella #glossary("dashboard") dedicata a visualizzare i dati ambientali provenienti dai sensori, un pannello dedicato a mostrare dell'inquinamento dell'aria registrato negli ultimi 5 minuti tra tutti i sensori.
      ],"N/I","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare una #glossary("dashboard") dedicata a visualizzare i dati urbanistici provenienti dai sensori.
      ],"N/I","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare, nella #glossary("dashboard") dedicata a visualizzare i dati urbanistici provenienti dai sensori, un pannello contenente una mappa che evidenzi la disponibilità dei parcheggi, intesa come numero di parcheggi liberi, nei parcheggi controllati.
      ],"N/I","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare, nella #glossary("dashboard") dedicata a visualizzare i dati urbanistici provenienti dai sensori, un pannello contenente una mappa che evidenzi la posizione e i watt erogati dalle varie colonnine di ricarica controllate.
      ],"N/I","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare, nella #glossary("dashboard") dedicata a visualizzare i dati urbanistici provenienti dai sensori, un pannello contenente una mappa che evidenzi l'intensità del traffico. /*TODO: disambiguare metrica misurativa dell'intensità di traffico*/
      ],"N/I","RPF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare, nella #glossary("dashboard") dedicata a visualizzare i dati urbanistici provenienti dai sensori, un pannello contenente una mappa che evidenzi la posizione, in tempo reale, delle biciclette elettrice controllate assieme alla relativa percentuale di batteria.
      ],"N/I","RPF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare, nella #glossary("dashboard") dedicata a visualizzare i dati urbanistici provenienti dai sensori, un pannello contenente una mappa che evidenzi la percentuale di riempimento delle zone rifiuti.
      ],"N/I","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare una #glossary("dashboard") dedicata a visualizzare i dati anomali provenienti dai sensori, mediante un unico pannello a tabella.
      ],"N/I","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare delle notifiche, nel caso del superamento di determinate soglie impostate per determinate tipologie di sensore. /*TODO: discutere di quale tipi si tratta e come e chi imposta le soglie*/
      ],"N/I","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa filtrare i dati, visualizzando i dati solo di un sottoinsieme di sensori selezionato per nome, nel caso di grafici di tipo #glossary("serie storica").
      ],"N/I","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa filtrare i dati, visualizzando i dati solo di un sottoinsieme di sensori selezionato per tipologia, nel caso di pannelli contenenti tabelle, che raggruppano più tipi di sensori.
      ],"N/I","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa filtrare i dati, visualizzando i dati solo di un sottoinsieme di sensori selezionato per nome, nel caso di pannelli contenenti tabelle.
      ],"N/I","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa filtrare i dati di un'intera #glossary("dashboard"), visualizzando i dati appartenenti ad un determinato intervallo di tempo selezionato.
      ],"N/I","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa, nel caso di un pannello contenente una tabella, ordinare le righe di tale tabella in base ai valori di una colonna di interese.
      ],"N/I","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa modificare il layout dei pannelli presenti in una dashboard aperta, modificando posizione e dimensione dei pannelli contenuti in essa.
      ],"N/I","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") riceva un messaggio che notifichi l'assenza di dati da visualizzare, qualora non vi siano dati a disposizione.
      ],"N/I","ROF"),
      /*TODO: capire se i test di sistema vanno anche per i requisiti relativi ai soli sensori (dovrebbero essere relativi in generale ai requisiti funzionali, ma non so)*/
      ([
            Verificare che un sensore possa inserire nel sistema dati relativi alla temperatura, controllata dal sensore, con annesso coordinate e #glossary("timestamp") della misurazione.
      ],"N/I","ROF"),
      ([
            Verificare che un sensore possa inserire nel sistema dati relativi all'umidità, controllata dal sensore, con annesso coordinate e #glossary("timestamp") della misurazione.
      ],"N/I","ROF"),
      ([
            Verificare che un sensore possa inserire nel sistema dati relativi alla velocità e direzione del vento, controllata dal sensore, con annesso coordinate e #glossary("timestamp") della misurazione.
      ],"N/I","ROF"),
      ([
            Verificare che un sensore possa inserire nel sistema dati relativi alle precipitazioni, controllate dal sensore, con annesso coordinate e #glossary("timestamp") della misurazione. /*TODO: disambiguare la metrica delle precipitazioni*/
      ],"N/I","ROF"),
      ([
            Verificare che un sensore possa inserire nel sistema dati relativi all'inquinamento dell'aria, controllata dal sensore, con annesso coordinate e #glossary("timestamp") della misurazione. /*TODO: disambiguare la metrica dell'inquinamento dell'aria*/
      ],"N/I","ROF"),
      ([
            Verificare che un sensore possa inserire nel sistema dati relativi al livello del bacino idrico, controllato dal sensore, con annesso coordinate e #glossary("timestamp") della misurazione. /*TODO: disambiguare la metrica del livello dei bacini idrici*/
      ],"N/I","ROF"),
      ([
            Verificare che un sensore possa inserire nel sistema dati relativi alla disponibilità del parcheggio, controllato dal sensore, intesa come numero di posti liberi in tale parcheggio, registrata, con annesso coordinate e #glossary("timestamp") della misurazione.
      ],"N/I","ROF"),
      ([
            Verificare che un sensore possa inserire nel sistema dati relativi watt erogati per la colonna di ricarica, controllata dal sensore, con annesso coordinate e #glossary("timestamp") della misurazione.
      ],"N/I","ROF"),
      ([
            Verificare che un sensore possa inserire nel sistema dati relativi al livello di carica della bicicletta elettrica, controllata dal sensore, con annesso coordinate e #glossary("timestamp") della misurazione.
      ],"N/I","ROF"),
      ([
            Verificare che un sensore possa inserire nel sistema dati relativi al riempimento della zona ecologica, controllata dal sensore, con annesso coordinate e #glossary("timestamp") della misurazione. /*TODO: disambiguare la metrica per il riempimento della zona ecologica*/
      ],"N/I","ROF"),
      ([
            Verificare che un sensore possa inserire nel sistema dati relativi congestione stradale, controllata dal sensore, con annesso coordinate e #glossary("timestamp") della misurazione.
      ],"N/I","ROF"),
      /*TODO: manca test (poichè manca requisito relativo) che vada a controllare che il senosre annetta anche dati relativi al suo stato personale */
).enumerate(start:1).map(test => ("TS"+ str(test.at(0)),test.at(1).at(0),test.at(1).at(1),test.at(1).at(2))).enumerate(start:1).map(test => (test.at(1).at(0),test.at(1).at(1),test.at(1).at(2),test.at(1).at(3) + str(test.at(0))));

#show figure: set block(breakable: true)
#figure(
table(
      columns: (2fr,7fr,1fr),
      align: (center,left,center),
      fill:(_,row) =>if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Codice test*],[*Descrizione*],[*Stato*],
      ..test_di_sistema.map(item => (item.at(0),item.at(1),item.at(2))).flatten().map(item => [#item])
),caption: "Test di sistema.")

=== Tracciamento dei test di sistema
#show figure: set block(breakable: true)
#figure(
table(
      columns: (80pt,80pt),
      align: (center,center),
      fill:(_,row) =>if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Codice test*],[*Codice caso d'uso*],
      ..test_di_sistema.map(item => (item.at(0),item.at(3))).flatten().map(item => [#item])
),caption: "Tracciamento dei test di sistema.")


== Liste di controllo

Le liste di controllo sono uno strumento che i Verificatori possono utilizzare al fine di individuare errori ricorrenti nella documentazione o nel codice. Tali liste prevedono anche una descrizione del problema al fine di poter fornire una spiegazione della richiesta di cambiamenti durante la fase di revisione.
Le liste di controllo possono essere aggiornate durante tutto il corso del progetto dai Verificatori, man mano che vengono notati errori ricorrenti.

#pagebreak()
=== Struttura dei documenti

#figure(
table(
      columns: (1fr, 2fr),
      inset: 10pt,
      align: (center, left),
      [*Aspetto*],[*Spiegazione*],
      [Vuoti documentativi],[Non devono essere presenti sezioni senza contenuto.],
      [Didascalia assente],[Tutte le tabelle e le immagini devono avere una didascalia descrittiva.],
      [Ripetizione di elementi ricorrenti],[Ogni elemento che viene usato più di una volta, soprattutto se si sa a priori che verrà usato più volte, deve essere creato da una funzione #glossary("Typst").],
      [Ordine non alfabetico],[I nomi dei componenti devono essere riportati in ordine alfabetico, in qualsiasi documento dove compaiono come elenco non numerato.],
      [Aggiornamento fantasma],[Ad ogni insieme di modifiche ai documenti che devono essere aggiunte assieme, deve corrispondere una riga nella tabella del changelog, con un univoco numero di versione.],
      [Titolo principali in mezzo alla pagina],[Tutti i titoli principali devono iniziare la pagina nella quale vengono inseriti.],

),
caption: [Lista di controllo per la struttura dei documenti]
)

#pagebreak()
=== Errori ortografici, di lingua italiana e di forma

#figure(
table(
      columns: (1fr, 2fr),
      inset: 10pt,
      align: (center, left),
      [*Aspetto*],[*Spiegazione*],
      [Errori di sintassi],[Gli errori di sintassi (battitura o distrazione) devono essere rimossi.],
      [Errori di coniugazione],[Gli errori di coniugazione devono essere rimossi.],
      [Forma verbale],[Il presente indicativo è da preferire.],
      [Forma non concise],[Le espressioni troppo verbose, ove possibile, devono essere ridotte a forme più concise.],
      [Non formalità],[Le espressioni non formali devono essere sostituite con le corrispondenti espressioni formali.],
      [Richiamo errato al documento],[Ogni richiamo ai documenti deve seguire la seguente forma: _NomeDocumento\_vVersioneMajor.VersioneMinor_ (e.g. _PianoDiProgetto\_v1.0_).],
      [Termini impropriamente in maiuscolo],[I termini di glossario non godono della proprietà di avere la prima lettera maiuscola, rispetto alle parole tradizionali. Seguono le stesse regole delle parole non di glossario in quanto alla forma (ovviamente non riguardo allo stile).],
      [Acronimi non in maiuscolo],[Gli acronimi devono essere completamente in maiuscolo (e.g. ITS - acronimo per Issue Tracking System).],
),
caption: [Lista di controllo per gli errori ortografici, di lingua italiana e di forma]
)

#pagebreak()
=== Non conformità con le Norme di Progetto

#figure(
table(
      columns: (1fr, 2fr),
      inset: 10pt,
      align: (center, left),
      [*Aspetto*],[*Spiegazione*],
      [Formato date errato],[Il formato delle date deve essere *dd-mm-aaaa* all'interno dei documenti, oppure *dd-mm-aa* all'interno dei nomi dei documenti.],
      [Punteggiatura scorretta negli elenchi],[Ogni elemento di un elenco, numerato o non, deve terminare con un *;*, ad eccezione dell'ultima riga, la quale deve terminare con *.*.],
      [: in grassetto negli elenchi],[Gli elenchi nella forma "*termine*: testo", non devono includere il ":" nel grassetto.],
      [Maiuscole nei titoli],[La prima lettera di ogni titolo deve essere maiuscola. Il resto del titolo dovrebbe essere in minuscolo (tolte particolari eccezioni, come ad esempio nomi di documenti).],
      [Maiuscole negli elenchi],[Le prime lettere di ogni elenco devono essere maiuscole.],
      [Ruoli in minuscolo],[Tutti i ruoli del progetto devono avere la prima lettera in maiuscolo.],
      [Termine non presente nel glossario],[Ogni termine segnato con la formattazione da glossario deve essere effettivamente presente nel glossario con la relativa descrizione.],
),
caption: [Lista di controllo per le non conformità con le Norme di Progetto]
)

#pagebreak()
=== Analisi dei Requisiti

#figure(
table(
      columns: (1fr, 2fr),
      inset: 10pt,
      align: (center, left),
      [*Aspetto*],[*Spiegazione*],
      [Tracciamento caso d'uso - requisito],[Per ciascun caso d'uso deve corrispondere almeno un requisito.],
      [Struttura errata dei requisiti],[I requisiti devono essere scritti nella forma: "\<soggetto\> deve/devono \<verbo all'infinito\>"],
      [Numerazione errata dei casi d'uso],[La numerazione dei casi d'uso deve seguire la crescita dei numeri interi naturali. Se si tratta di un sotto-caso d'uso, il sotto-caso deve ereditare, come prefisso del proprio codice, il codice del caso d'uso a cui appartiene, e ne aggiunge una cifra. Fare riferimento alle _NormeDiProgetto\_v1.0_ per una descrizione più approfondita.],
      [UML dei casi d'uso],[Le estensioni e le inclusioni di un caso d'uso vanno nello stesso diagramma UML del caso d'uso stesso.],
),
caption: [Lista di controllo per l’Analisi dei Requisiti]
)