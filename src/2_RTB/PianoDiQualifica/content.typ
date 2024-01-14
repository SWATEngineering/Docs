#import "functions.typ": glossary, team
#let fornitura=csv("Mfornitura.csv")

/*************************************/
/*    INSERIRE SOTTO IL CONTENUTO    */ 
/*************************************/

= Introduzione 

Il _Piano di Qualifica_ è un documento che delinea le strategie e le attività mirate a garantire la qualità del prodotto e propone di guidare il team attraverso un percorso di miglioramento continuo, principio a cui anch'esso è soggetto. 
Il documento viene regolarmente aggiornato in modo tale da guidare gli sforzi di qualità sulla base delle mutevoli esigenze del progetto, garantendo così che il processo e il prodotto crescano e si evolvano con il tempo.

Il documento costituisce un impegno concreto per assicurare la qualità in modo costante nel corso del progetto.


== Scopo 

Questo documento ha lo scopo di garantire la qualità del processo e del prodotto attraverso diversi passaggi fondamentali. 
//Prima di tutto, stabilisce gli standard di qualità da seguire. Successivamente, definisce i criteri e le misure che verranno utilizzati per valutare quanto sia efficace il processo e il risultato ottenuto.

La definizione di metriche quantitative e la loro periodica misurazione permettono al team di valutare l'efficacia e l'efficienza del progetto di sviluppo e di intraprendere decisioni che ne permettano la costante ottimizzazione. 

Si propone inoltre di guidare il team attraverso tutte le fasi di testing: dalla pianificazione dei test fino alla valutazione dei risultati ottenuti. 

//Include anche verifiche e controlli approfonditi del prodotto, che comprendono test specifici su varie parti (come unità, integrazione, sistema e accettazione). Questo processo di verifica aiuta anche a gestire eventuali difetti o anomalie rilevate durante le attività di test.

//Infine, è orientato al miglioramento costante: si adatta in base alle esperienze acquisite e a eventuali modifiche richieste nel progetto, garantendo così che il processo e il prodotto crescano e si evolvano con il tempo. [COMMENTATO PERCHè SECONDO ME è RIDONDANTE CON L'INTRODUZIONE]

== Glossario
Al fine di evitare possibili ambiguità relative al linguaggio utilizzato nei documenti, viene
fornito il _Glossario_, nel quale sono presenti tutte le definizioni di termini aventi un significato specifico che vuole essere disambiguato. Tali termini, sono scritti in _corsivo_ e marcati con una #sub("G") a pedice.
Un'attività che comprende l'inserimento di un termine di glossario può considerarsi conclusa solo nel momento in cui il termine viene scritto e spiegato nel _Glossario_.

== Riferimenti
=== Normativi
- _NormeDiProgetto v1.0_;
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

//== Obiettivi 

La qualità di processo si fonda sul assunto che, al fine di ottenere un prodotto che soddisfi determinati standard di qualità sia necessario che i processi che ne stanno alla base siano sottoposti a controlli periodici con lo scopo ultimo di ottimizzarli.
Il concetto di qualità di processo viene dunque applicato all'intero spettro di attività, pratiche e metodi utilizzati lungo l'intero ciclo di vita del software.
In sintesi, la qualità di processo mira a rendere la qualità una parte integrante del prodotto, garantendo che sia costruita nel processo stesso e non sia solo un obiettivo secondario.
Di seguito vengono presentate le metriche che il team si impegna a soddisfare nel contesto della qualità di processo.
Come presentato nel documento _NormeDiProgetto v1.0_ la sigla MPC sta ad indicare le metriche di processo.


//Si riferisce all'efficacia ed efficienza dei processi e delle metodologie impiegate nello sviluppo, testing e mantenimento del software. Essa abbraccia l'insieme di attività, pratiche e metodi utilizzati lungo l'intero ciclo di vita dello sviluppo del software al fine di garantire che il prodotto finale soddisfi i requisiti specificati e venga consegnato puntualmente ed entro il budget previsto. In questo contesto, la qualità di processo è fondamentale per assicurare un'implementazione coerente, misurabile e ottimizzata delle fasi di sviluppo, contribuendo a conseguire gli obiettivi di qualità complessivi.


== Processi Primari  

=== Fornitura 



#figure(
table(
      columns:(auto,auto,auto,auto),
      align: (x, y) => (center, center, center,center).at(x),
      fill:(_,row) =>if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Metrica*],[*Descrizione*],[*Valore accettazione*],[*Valore ideale*],
      ..fornitura.flatten()  
),
caption: [Tabella metriche per il processo di fornitura]
)

=== Codifica 
#figure(
table(
      columns:(auto,auto,auto,auto),
      align: (x, y) => (center, center, center,center).at(x),
      fill:(_,row) => if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Metrica*],[*Descrizione*],[*Valore accettazione*],[*Valore ideale*],
      [MPC-CCM], [Complessità Ciclomatica per Metodo], [≤ 5], [≤ 3],
      [MPC-CC], [Code Coverage], [≥80%], [100%],
      [MPC-ATC], [Attributi per Classe], [≤ 6], [≤ 4],
      [MPC-PM], [Parametri per Metodo], [≤ 5], [≤ 4],
      [MPC-LCM], [Linee di Codice per Metodo], [≤ 25], [≤ 20]
), 
caption: [Tabella delle metriche per il processo di codifica])

=== Progettazione

#figure(
table(
      columns:(auto,auto,auto,auto),
      align: (x, y) => (center, center, center,center).at(x),
      fill:(_,row) =>if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Metrica*],[*Descrizione*],[*Valore accettazione*],[*Valore ideale*],
      [MPC-FIN], [Structure Fan In], [da determinare], [da determinare], 
      [MPC-FOUT], [Structure Fan Out], [da determinare], [da determinare]
      ), 
caption: [Tabella metriche per il processo di progettazione]
)


== Processi di supporto

==== Documentazione
#figure(
table(
      columns:(auto,auto,auto,auto),
      align: (x, y) => (center, center, center,center).at(x),
      fill:(_,row) =>if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Metrica*],[*Descrizione*],[*Valore accettazione*],[*Valore ideale*],
      [MPC-IG], [Indice Gulpease], [≥ 60], [100],
      [MPC-CO], [Correttezza Ortografica], [0], [0]
      ), 
caption: [Tabella metriche per il processo di documentazione]
)


#pagebreak()

= Qualità di prodotto 

La qualità di prodotto è volta alla valutazione del software realizzato: l'attenzione è rivolta ad attributi quali usabilità, funzionalità, affidabilità, ma più in generale alle prestazione del prodotto. 
L'obiettivo  è, dunque, assicurare che il software non solo implementi le funzionalità volute dal cliente e funzioni correttamente, ma che lo faccia seguendo le indicazioni di precisi standard di qualità.
Di seguito vengono presentate le metriche che il team si impegna a soddisfare nel contesto della qualità di prodotto.
Come presentato nel documento _NormeDiProgetto v1.0_ la sigla MPR sta ad indicare le metriche di prodotto.

== Funzionalità

#figure(
      table(
            columns:(auto,auto,auto,auto),
            align: (x, y) => (center, center, center,center).at(x),
            fill:(_,row) => if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
            [*Metrica*],[*Descrizione*],[*Valore accettazione*],[*Valore ideale*],
            [MPR-ROS], [Requisiti Obbligatori Soddisfatti], [100%], [100%],
            [MPR-RDS], [Requisiti Desiderabili Soddisfatti], [≥ 0%], [≥ 75%],
            [MPR-ROPS], [Requisiti Opzionali Soddisfatti], [≥ 0%], [≥ 50%],
      ),
caption: [Tabella metriche per la funzionalità del prodotto])

== Usabilità

#figure(
      table(
            columns:(auto,auto,auto,auto),
            align: (x, y) => (center, center, center,center).at(x),
            fill:(_,row) => if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
            [*Metrica*],[*Descrizione*],[*Valore accettazione*],[*Valore ideale*],
            [MPR-FU], [Facilità di utilizzo], [≤ 7 click], [≤ 5 click]
      ),
caption: [Tabella metriche per l'usabilità del prodotto])

== Affidabilità

#figure(
      table(
            columns:(auto,auto,auto,auto),
            align: (x, y) => (center, center, center,center).at(x),
            fill:(_,row) => if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
            [*Metrica*],[*Descrizione*],[*Valore accettazione*],[*Valore ideale*],
            [MPR-PTCP], [Passed Test Cases Percentage], [≥ 80%], [100%]
      ),
caption: [Tabella metriche per l'affidabilità del prodotto])


#pagebreak()



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
),caption: "Test di accettazione.")

=== Tracciamento dei test di accettazione
#show figure: set block(breakable: true)
#figure(
table(
      columns: (80pt,80pt),
      align: (center,center),
      fill:(_,row) =>if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Codice test*],[*Codice caso d'uso*],
      ..test_di_accettazione.map(item => (item.at(0),item.at(3))).flatten().map(item => [#item])
),caption: "Tracciamento dei test di accettazione.")

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
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare, nella #glossary("dashboard") dedicata a fornire una panoramica generale dei sensori, una tabella contenente l'elenco dei sensori. /*TODO: disambiguare "panoramica generale dei sensori": ho provato a disambiguare, credo così vada bene*/
      ],"N/I","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare una #glossary("dashboard") dedicata a visualizzare i dati ambientali provenienti dai sensori.
      ],"N/I","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare, nella #glossary("dashboard") dedicata a visualizzare i dati ambientali provenienti dai sensori, un pannello dedicato a mostrare l'andamento delle temperature in formato #glossary("serie storica").
      ],"N/I","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare, nella #glossary("dashboard") dedicata a visualizzare i dati ambientali provenienti dai sensori, un pannello dedicato a mostrare l'andamento espresso in percentuale dell'umidità in formato #glossary("serie storica"). 
      ],"N/I","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare, nella #glossary("dashboard") dedicata a visualizzare i dati ambientali provenienti dai sensori, un pannello contenente una mappa che evidenzi velocità e direzione del vento.
      ],"N/I","ROP"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare, nella #glossary("dashboard") dedicata a visualizzare i dati ambientali provenienti dai sensori, un pannello dedicato a mostrare l'andamento delle precipitazioni misurato in millimetri orari in formato #glossary("serie storica").
      ],"N/I","ROF"), 
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare, nella #glossary("dashboard") dedicata a visualizzare i dati ambientali provenienti dai sensori, un pannello dedicato a mostrare la media delle precipitazioni registrate negli ultimi 5 minuti tra tutti i sensori. 
      ],"N/I","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare, nella #glossary("dashboard") dedicata a visualizzare i dati ambientali provenienti dai sensori, un pannello dedicato a mostrare l'andamento dell'inquinamento dell'aria in formato #glossary("serie storica"). /*TODO: disambiguare la misura dell'inquinamento*/
      ],"N/I","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare, nella #glossary("dashboard") dedicata a visualizzare i dati ambientali provenienti dai sensori, un pannello dedicato a mostrare la media dell'inquinamento dell'aria registrato negli ultimi 5 minuti tra tutti i sensori. /*TODO: disambiguare la misura dell'inquinamento*/
      ],"N/I","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare, nella #glossary("dashboard") dedicata a visualizzare i dati ambientali provenienti dai sensori, un pannello dedicato a mostrare le percentuali di riempimento dei bacini idrici in formato #glossary("serie storica"). 
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
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare, nella #glossary("dashboard") dedicata a visualizzare i dati urbanistici provenienti dai sensori, un pannello contenente una mappa che evidenzi l'intensità del traffico. 
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
            Verificare che l'#glossary("amministratore pubblico") possa, nel caso di un pannello contenente una tabella, ordinare le righe di tale tabella in base ai valori di una colonna di interesse.
      ],"N/I","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa modificare il layout dei pannelli presenti in una dashboard aperta, modificando posizione e dimensione dei pannelli contenuti in essa.
      ],"N/I","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") riceva un messaggio che notifichi l'assenza di dati da visualizzare, qualora non vi siano dati a disposizione.
      ],"N/I","ROF"),
      /*TODO: capire se i test di sistema vanno anche per i requisiti relativi ai soli sensori (dovrebbero essere relativi in generale ai requisiti funzionali, ma non so)*/
      ([
            Verificare che un sensore possa inserire nel sistema dati relativi alla temperatura, rilevati dal sensore, con annesso coordinate e #glossary("timestamp") della misurazione.
      ],"N/I","ROF"),
      ([
            Verificare che un sensore possa inserire nel sistema dati relativi alla percentuale di umidità, rilevati dal sensore, con annesso coordinate e #glossary("timestamp") della misurazione.
      ],"N/I","ROF"),
      ([
            Verificare che un sensore possa inserire nel sistema dati relativi alla velocità e direzione del vento, rilevati dal sensore, con annesso coordinate e #glossary("timestamp") della misurazione.
      ],"N/I","ROF"),
      ([
            Verificare che un sensore possa inserire nel sistema il quantitativo orario di precipitazione, in millimetri orari (mm/h), con annesso coordinate e #glossary("timestamp") della misurazione. 
      ],"N/I","ROF"),
      ([
            Verificare che un sensore possa inserire nel sistema dati relativi all'inquinamento dell'aria, rilevato dal sensore, con annesso coordinate e #glossary("timestamp") della misurazione. /*TODO: disambiguare la metrica dell'inquinamento dell'aria*/
      ],"N/I","ROF"),
      ([
            Verificare che un sensore possa inserire nel sistema la percentuale di riempimento della bacino idrico a cui è associato con annesso coordinate e #glossary("timestamp") della misurazione.
      ],"N/I","ROF"),
      ([
            Verificare che un sensore possa inserire nel sistema dati relativi alla disponibilità del parcheggio, controllato dal sensore, intesa come numero di posti liberi in tale parcheggio, registrata, con annesso coordinate e #glossary("timestamp") della misurazione.
      ],"N/I","ROF"),
      ([
            Verificare che un sensore possa inserire nel sistema la rilevazione dei watt erogati dalla colonna, monitorata dal sensore, con annesso coordinate e #glossary("timestamp") della misurazione.
      ],"N/I","ROF"),
      ([
            Verificare che un sensore possa inserire nel sistema dati relativi al livello di carica della bicicletta elettrica, controllata dal sensore, con annesso coordinate e #glossary("timestamp") della misurazione.
      ],"N/I","ROF"),
      ([
            Verificare che un sensore possa inserire nel sistema la percentuale di riempimento della zona ecologica a cui è associato, con annesso coordinate e #glossary("timestamp") della misurazione. 
      ],"N/I","ROF"),
      ([
            Verificare che un sensore possa inserire nel sistema dati relativi congestione stradale, controllata dal sensore, con annesso coordinate e #glossary("timestamp") della misurazione.
      ],"N/I","ROF"),/*TODO: capire se tenere uniti i requisiti relativi al traffico e di conseguenza anche il test di sistema */
      ([
            Verificare che ogni sensore invii oltre ai dati di misurazione, i dati relativi al livello della batteria e all'utilizzo del processore, con annesso coordinate e #glossary("timestamp") della misurazione.
      ],"N/I","ROF")

      /*TODO: disambiguare sulla base ai  cambiamenti al requisito in Adr */
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
      [*Codice test*],[*Codice Requisito*],
      ..test_di_sistema.map(item => (item.at(0),item.at(3))).flatten().map(item => [#item])
),caption: "Tracciamento dei test di sistema.")




#pagebreak()
= Cruscotto delle metriche

== Qualità di Processo - Fornitura

Al termine del settimo sprint il team ha rimodulato il BAC progettuale. La modifica non è dovuta tanto dai risultati emersi dalle metriche sottostanti, piuttosto da alcune considerazioni errate in sede di candidatura. 
Rimane però essenziale che ogni metrica non sia solamente un istantanea dello stato del progetto, ma che mostri anche l'andamento storico del processo di fornitura e con esso le nostre considerazioni. 
A tal fine, il team ha preferito mantenere registrate le considerazioni e le misurazioni effettuate precedentemente tale decisione, nell'ambito delle metriche.


=== Estimated at Completion
 
#figure(
  image("./assets/valutazione-metriche/EAC.png", width: 80%),
  caption: [
    Valutazione Estimated At Completion.
  ],
)

L'EAC rappresenta una revisione del valore stimato per la realizzazione del progetto, ossia il BAC (Budget At Completion) rivisto allo stato corrente del progetto; il fattore che incide maggiormente sull'andamento dell'EAC è il rapporto tra EV (Estimated Value) e AC (Actual Cost), per cui tanto più queste metriche sono vicine l'una all'altra, tanto più l'EAC risulterà vicino al BAC pianificato inizialmente. 


Al termine del settimo sprint il team ha rimodulato il BAC progettuale. La modifica non è dovuta tanto dai risultati emersi dalle metriche sottostanti, piuttosto da alcune considerazioni errate in sede di candidatura. 
Rimane però essenziale che ogni metrica non sia solamente un istantanea dello stato del progetto, ma che mostri anche l'andamento storico del processo di fornitura e con esso le nostre considerazioni. 
A tal fine, il team ha preferito mantenere registrate le considerazioni e le misurazioni effettuate precedentemente tale decisione. 


==== Considerazioni Pre-Rimodulazione BAC 
Possiamo rilevare da il grafico, che la curva delineata dal valore del AEC pur essendo rimasta sempre al di sopra del valore d'accettazione ha, già a partire dal secondo sprint, mostrato un trend decrescente, il team si aspetta che nel corso dei prossimi sprint il valore continui a scendere fino a rientrare nella fascia accettabile. 
Nell'eventualità il trend dovesse invertirsi il team dovrebbe rimodulare la quantità di lavoro netta associata al concetto di ora produttiva.
==== Considerazioni Post-Rimodulazione BAC 
Nonostante il nuovo valore assunto dal BAC a seguito della rimodulazione porta il valore dell'EAC ad avvicinarsi ad esso e a rientrare all'interno della soglia accettabile, rimane comunque più interessante notare come l'andamento continui ad essere decrescente segno che il team sta sfruttando bene le ore produttive a disposizione. 



=== Budget Variance e Schedule Variance

#figure(
  image("./assets/valutazione-metriche/BV_SV.png", width: 80%),
  caption: [
    Valutazione Budget Variance e Schedule Variance.
  ],
)

Il BV indica se alla data corrente si è speso di più o di meno rispetto a quanto inizialmente previsto nel budget; il SV indica se si è in linea, in anticipo o in ritardo rispetto alla schedulazione delle attività di progetto pianificate. 
Nonostante gli andamenti delle due metriche fosse nel primo periodo in rapido allontanamento dal valore d'accettazione, a partire dal secondo sprint sembrano stabilizzarsi, segno che le azioni correttive adottate stavano iniziando a sortire effetto.
Il cambiamento più significativo si è verificato durante il sesto sprint, quando abbiamo osservato un'inversione di tendenza: entrambe le metriche iniziano a riavvicinarsi al valore desiderato.
Il team si augura che il way of working consolidato nel corso del progetto permetta di recuperare quanto perso nel corso dei primi sprint. 
Durante il settimo sprint le due metriche hanno mantenuto l'andamento che ci si augurava. 


=== Actual Cost e Estimate To Complete

#figure(
  image("./assets/valutazione-metriche/AC_ETC.png", width: 80%),
  caption: [
    Valutazione Actual Cost e Estimate To Complete.
  ],
)

L'AC rappresenta il costo effettivo sostenuto fino a un dato momento, mentre l'ETC rappresenta la stima del costo aggiuntivo necessario per completare il progetto; di conseguenza, ci si aspetta che l'AC cresca e che l'ETC diminuisca in modo sostanzialmente lineare, segno che il progetto ha mantenuto un ritmo regolare di avanzamento. Stabilire l'andamento delle due metriche al momento della revisione RTB è alquanto prematuro, dati i pochi data points a disposizione. 


=== Earned Value e Planned Value

#figure(
  image("./assets/valutazione-metriche/EV_PV.png", width: 80%),
  caption: [
    Valutazione Earned Value e Planned Value.
  ],
)

L'EV rappresenta il valore prodotto dal progetto ossia il valore dei #glossary[deliverable] rilasciati fino al momento della misurazione in seguito alle attività svolte; il PV rappresenta invece il valore del lavoro pianificato fino a un dato momento. Nonostante sia ancora prematuro confrontare le due metriche con l'EAC, si può notare che il PV si mantiene al di sotto dell'EV, seppur di poco, segno che i preventivi fatti finora sono stati leggermente ottimistici rispetto alla spesa effettiva. Si può notare che le due metriche a partire dal secondo sprint tendono ad avvicinarsi: ciò denota che il team sta iniziando effettivamente a produrre dei preventivi più rigorosi.

// == Qualità di Processo - Codifica TODO: non ha senso in questa fase del progetto

== Qualità di Processo - Documentazione

=== Indice Gulpease

#figure(
  image("./assets/valutazione-metriche/IG.png", width: 80%),
  caption: [
    Valutazione Indice Gulpease.
  ],
)

Al termine del secondo sprint, tutti i documenti in corso di preparazione in vista dell'RTB possiedono un IG al di sopra del limite accettabile inferiore di 60; in particolare, l'_Analisi dei Requisiti_ ha raggiunto il valore ideale. 
Nel corso degli sprint successivi i valori subiscono variazioni non rilevanti. 

=== Correttezza ortografica

#figure(
  image("./assets/valutazione-metriche/CO.png", width: 80%),
  caption: [
    Valutazione correttezza Ortografica.
  ],
)


A seguito dei primi due sprint sono stati rilevati parecchi errori ortografici, per farne fronte si è scelto di adottare uno strumento di controllo dell'ortografia sia in fase di stesura che in fase di revisione. Tuttavia, nonostante l'uso di questo strumento, si è notato che il processo di documentazione continua a essere afflitto da errori ortografici. Questo indica che il problema non è tanto la mancanza di strumenti adeguati, quanto più un approccio disattento da parte del team durante la redazione dei documenti, e nel processo di verifica che ne consegue.
Fare in modo che non vi siano errori nei documenti prima della revisione RTB rimane comunque un obbiettivo di qualità che il team vuole raggiungere in vista della revisione RTB. 
Per ovviare al problema il team ha deciso di introdurre un checklist incentrata sugli errori di ortografici, in modo tale che se il processo di verifica posso avvalersene e correggere eventuali errori.  Questa checklist è pensata non solo come uno strumento pratico, ma principalmente come un promemoria costante per il Verificatore. 


// == Qualità di prodotto



#pagebreak()

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
      [Numerazione errata dei casi d'uso],[La numerazione dei casi d'uso deve seguire la crescita dei numeri interi naturali. Se si tratta di un sotto-caso d'uso, il sotto-caso deve ereditare, come prefisso del proprio codice, il codice del caso d'uso a cui appartiene, e ne aggiunge una cifra. Fare riferimento alle _NormeDiProgetto v1.0_ per una descrizione più approfondita.],
      [UML dei casi d'uso],[Le estensioni e le inclusioni di un caso d'uso vanno nello stesso diagramma UML del caso d'uso stesso.],
),
caption: [Lista di controllo per l’Analisi dei Requisiti]
)