#import "functions.typ": glossary, team
#let fornitura=csv("Mfornitura.csv")
#show link: underline

/*************************************/
/*    INSERIRE SOTTO IL CONTENUTO    */ 
/*************************************/

= Introduzione 

Il _Piano di Qualifica_ è un documento che delinea le strategie e le attività mirate a garantire la qualità del prodotto e propone di guidare il team attraverso un percorso di miglioramento continuo, principio a cui anch'esso è soggetto. 
Il documento viene regolarmente aggiornato in modo tale da guidare gli sforzi di qualità sulla base delle mutevoli esigenze del progetto, garantendo così che il processo e il prodotto crescano e si evolvano con il tempo.

Il documento costituisce un impegno concreto per assicurare la qualità in modo costante nel corso del progetto.


== Scopo 

Questo documento ha lo scopo di garantire la qualità del processo e del prodotto attraverso diversi passaggi fondamentali. 

La definizione di metriche quantitative e la loro periodica misurazione permettono al team di valutare l'efficacia e l'efficienza del progetto di sviluppo e di intraprendere decisioni che ne permettano la costante ottimizzazione. 

Si propone inoltre di guidare il team attraverso tutte le fasi di testing: dalla pianificazione dei test fino alla valutazione dei risultati ottenuti. 



== Glossario
Al fine di evitare possibili ambiguità relative al linguaggio utilizzato nei documenti, viene
fornito il _Glossario_, nel quale sono presenti tutte le definizioni di termini aventi un significato specifico che vuole essere disambiguato. Tali termini, sono scritti in _corsivo_ e marcati con una #sub("G") a pedice.
Un'attività che comprende l'inserimento di un termine di glossario può considerarsi conclusa solo nel momento in cui il termine viene scritto e spiegato nel _Glossario_.

== Riferimenti
=== Normativi
- _Norme di Progetto v1.0_;
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
= Qualità di processo 



La qualità di processo si fonda sull'assunto che, al fine di ottenere un prodotto che soddisfi determinati standard di qualità, è necessario che i processi che lo sottendono siano sottoposti a controlli periodici con lo scopo ultimo di ottimizzarli.
Il concetto di qualità di processo viene dunque applicato all'intero spettro di attività, pratiche e metodi utilizzati lungo l'intero ciclo di vita del software.
In sintesi, la qualità di processo mira a rendere la qualità una parte integrante del prodotto, garantendo che sia costruita nel processo stesso e non sia solo un obiettivo secondario.
Di seguito vengono presentate le metriche che il team si impegna a soddisfare nel contesto della qualità di processo.
Come presentato nel documento _Norme di Progetto v1.0_, la sigla MPC sta ad indicare le metriche di processo.

== Processi primari  

=== Fornitura 

#figure(
table(
      columns:(auto,auto,auto,auto),
      align: (x, y) => (center, center, center,center).at(x),
      fill:(_,row) =>if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Metrica*],[*Descrizione*],[*Valore accettazione*],[*Valore ideale*],
      ..fornitura.flatten()  
),
caption: [Tabella metriche per il processo di fornitura.]
)


=== Sviluppo

==== Codifica
#figure(
table(
      columns:(auto,auto,auto,auto),
      align: (x, y) => (center, center, center,center).at(x),
      fill:(_,row) => if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Metrica*],[*Descrizione*],[*Valore accettazione*],[*Valore ideale*],
      [MPC-ATC], [Attributi per Classe], [≤ 6], [≤ 4],
      [MPC-PM], [Parametri per Metodo], [≤ 5], [≤ 4],
      [MPC-LCM], [Linee di Codice per Metodo], [≤ 25], [≤ 20]
), 
caption: [Tabella metriche per l'attività di codifica.])

#pagebreak(); 

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
caption: [Tabella metriche per il processo di documentazione.]
)

==== Gestione della qualità
#figure(
table(
      columns:(auto,auto,auto,auto),
      align: (x, y) => (center, center, center,center).at(x),
      fill:(_,row) =>if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Metrica*],[*Descrizione*],[*Valore accettazione*],[*Valore ideale*],
      [MPC-MNS], [Metriche Non Soddisfatte], [≤3], [0],
      ), 
caption: [Tabella metriche per il processo di gestione della qualità.]
)

#pagebreak()

= Qualità di prodotto 

La qualità di prodotto è volta alla valutazione del software realizzato: l'attenzione è rivolta ad attributi quali usabilità, funzionalità, affidabilità, manutenibilità, ma più in generale alle prestazioni del prodotto. 
L'obiettivo  è, dunque, assicurare che il software non solo implementi le funzionalità volute dal cliente e funzioni correttamente, ma che lo faccia seguendo le indicazioni di precisi standard di qualità.
Di seguito vengono presentate le metriche che il team si impegna a soddisfare nel contesto della qualità di prodotto.
Come presentato nel documento _Norme di Progetto v1.0_ la sigla MPD sta ad indicare le metriche di prodotto.


== Funzionalità

#figure(
      table(
            columns:(auto,auto,auto,auto),
            align: (x, y) => (center, center, center,center).at(x),
            fill:(_,row) => if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
            [*Metrica*],[*Descrizione*],[*Valore accettazione*],[*Valore ideale*],
            [MPD-ROS], [Requisiti Obbligatori Soddisfatti], [100%], [100%],
            [MPD-RDS], [Requisiti Desiderabili Soddisfatti], [≥ 0%], [≥ 75%],
            [MPD-ROPS], [Requisiti Opzionali Soddisfatti], [≥ 0%], [≥ 50%],
      ),
caption: [Tabella metriche per la funzionalità del prodotto.])

== Manutenibilità

#figure(
      table(
            columns:(auto,auto,auto,auto),
            align: (x, y) => (center, center, center,center).at(x),
            fill:(_,row) => if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
            [*Metrica*],[*Descrizione*],[*Valore accettazione*],[*Valore ideale*],
            [MPD-FIN], [Structure Fan In], [da determinare], [da determinare], 
            [MPD-FOUT], [Structure Fan Out], [da determinare], [da determinare],
            [MPD-CCM], [Complessità Ciclomatica per Metodo], [≤ 5], [≤ 3],
      ),
caption: [Tabella metriche per la manutenibilità del prodotto.
])



== Usabilità

#figure(
      table(
            columns:(auto,auto,auto,auto),
            align: (x, y) => (center, center, center,center).at(x),
            fill:(_,row) => if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
            [*Metrica*],[*Descrizione*],[*Valore accettazione*],[*Valore ideale*],
            [MPD-FU], [Facilità di Utilizzo], [≤ 7 click], [≤ 5 click], 
            [MPD-TA], [Tempo di Apprendimento], [≤ 10 minuti], [≤ 5 minuti]
      ),
caption: [Tabella metriche per l'usabilità del prodotto.])

== Affidabilità

#figure(
      table(
            columns:(auto,auto,auto,auto),
            align: (x, y) => (center, center, center,center).at(x),
            fill:(_,row) => if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
            [*Metrica*],[*Descrizione*],[*Valore accettazione*],[*Valore ideale*],
            [MPD-PTCP], [Passed Test Cases Percentage], [≥ 80%], [100%], 
            [MPD-CC], [Code Coverage], [≥80%], [100%],
            [MPD-BC], [Branch Coverage], [≥60%], [100%],
            [MPD-SC], [Statement Coverage], [≥60%], [100%],
      ),
caption: [Tabella metriche per l'affidabilità del prodotto.])


#pagebreak()

== Efficienza

#figure(
      table(
            columns:(auto,auto,auto,auto),
            align: (x, y) => (center, center, center,center).at(x),
            fill:(_,row) => if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
            [*Metrica*],[*Descrizione*],[*Valore accettazione*],[*Valore ideale*],
            [MPD-CPUU],[Maximum CPU usage],[da determinare],[da determinare], 
            [MPD-RAMU],[Maximum RAM usage],[da determinare],[da determinare], 
            [MPD-TDE],[Tempo Di Elaborazione],[da determinare], [da determinare],

      ),
caption: [Tabella metriche per l'efficienza del prodotto.])


#pagebreak()



= Strategie di testing

In questa sezione viene esposto il piano di testing che verrà utilizzato per garantire la correttezza finale del prodotto.
Come enunciato nel documento _Norme di Progetto v1.0_, il piano segue il #glossary("modello a V"), il quale associa ad ogni fase di sviluppo una corrispondente tipologia di testing. Tali tipologie sono le seguenti:
- *Test di unità*: si verifica il corretto funzionamento delle unità componenti il #glossary[sistema]. Un'unità rappresenta un elemento indivisibile e indipendente del #glossary[sistema]\;
- *Test di integrazione*: si verifica il corretto funzionamento di più unità che cooperano per svolgere uno specifico compito (tali unità devono certamente aver superato i loro test di unità precedentemente);
- *Test di #glossary[sistema]*: si verifica il corretto funzionamento del #glossary[sistema] nella sua interezza. I requisiti funzionali obbligatori, di vincolo, di qualità e di prestazione, precedentemente concordati con il Committente mediante stipulazione del contratto, devono essere soddisfatti per intero;
- *Test di accettazione*: si verifica il soddisfacimento del Committente rispetto al prodotto software. Il loro superamento permette di procedere con il rilascio del prodotto.

== Test di accettazione
In questa sezione vengono descritti i test di accettazione del prodotto software, eseguiti sia dal gruppo #team che dalla Proponente sotto la supervisione del gruppo.
Si vuole, con tali test, andare a validare il prodotto prima del suo rilascio.

#let test_di_accettazione = ( 
      ([
          Verificare che l'#glossary("amministratore pubblico") senza autenticazione possa:
            1. Usufruire dell'applicazione senza doversi autenticare.
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
            1. Aprire il menu di selezione delle #glossary("dashboard")\;
            2. Selezionare la #glossary("dashboard") generale dei sensori;
            3. Visualizzare la relativa #glossary("dashboard")\;
            4. Visualizzare un #glossary("pannello") con una mappa indicante la posizione di tutti i sensori come icone su di essa;
            5. Visualizzare un #glossary("pannello") con una tabella che mostra i dati relativi a quei sensori, in particolare, percentuale di batteria, se la batteria è autonoma o meno e data di ultima manutenzione;
            6. Visualizzare un messaggio di avvertenza di dati mancanti, nei vari #glossary("pannelli"), nel caso il sistema non riesca a reperire i dati.
      ],"N/I",[
            UC0\
            UC1\
            UC1.1\
            UC1.2
      ]),
      ([
          Verificare che l'#glossary("amministratore pubblico"), una volta entrato nell'applicazione, possa:
            1. Aprire il menu di selezione delle #glossary("dashboard")\;
            2. Selezionare la #glossary("dashboard") per visualizzare i dati ambientali;
            3. Visualizzare la relativa #glossary("dashboard")\;
            4. Visualizzare un #glossary("pannello") contenente un grafico in formato #glossary("serie storica") che mostri i risultati delle rilevazioni delle temperatura, espresse in gradi Celsius (°C), effettuate dai singoli sensori e aggregati tramite media aritmetica per intervalli di 5 minuti;
            5. Visualizzare un #glossary("pannello") contenente un grafico in formato #glossary("serie storica") che mostri i risultati delle rilevazioni dell'umidità, espresse in percentuale, effettuate dai singoli sensori e aggregati tramite media aritmetica per intervalli di 5 minuti;
            6. Visualizzare un #glossary("pannello") con una mappa mostrante la direzione del vento, rilevata da ciascun #glossary("sensore"), tramite delle frecce con origine la posizione del #glossary("sensore")\; 
            7. Visualizzare un #glossary("pannello") con una tabella che mostri l'ultima rilevazione della velocità del vento, espressa in chilometri orari (km/h), effettuata da ciascun #glossary("sensore")\; 
            8. Visualizzare un #glossary("pannello") contenente un grafico in formato #glossary("serie storica") che mostri i risultati delle rilevazioni delle quantità di precipitazioni, espresse in millimetri orari (mm/h), effettuate dai singoli sensori e aggregati tramite media aritmetica per intervalli di 5 minuti;
            9. Visualizzare un #glossary("pannello") contenente un indice numerico relativo alle precipitazioni, espresse in millimetri orari (mm/h), indicante la media  dell'intensità delle precipitazioni tra tutti i dati raccolti dai sensori, degli ultimi 5 minuti; 
            10. Visualizzare un #glossary("pannello") contenente un grafico in formato #glossary("serie storica") che mostri i risultati delle rilevazioni della concentrazione di inquinanti dell'aria (#glossary("PM10")), espressi in $#sym.mu g\/m^3$,effettuate dai singoli sensori e aggregati tramite media aritmetica per intervalli di 5 minuti;
            11. Visualizzare un #glossary("pannello") contenente la media della concentrazione di inquinanti dell'aria (#glossary("PM10")), espressa in $#sym.mu g\/m^3$, che consideri le rilevazioni di tutti i sensori attivi negli ultimi 5 minuti, e presentata in formato numerico;
            12. Visualizzare un #glossary("pannello") contenente un grafico in formato #glossary("serie storica") che mostri i risultati delle rilevazioni della percentuale di riempimento dei bacini idrici, effettuate dai singoli sensori e aggregate tramite media aritmetica per intervalli di 5 minuti;
            13. Visualizzare un #glossary("pannello") contenente la media della temperatura, espressa in gradi Celsius (°C), considerando tutti i sensori attivi negli ultimi 5 minuti, e presentata in formato numerico;
            14. Visualizzare un #glossary("pannello") contenente il massimo coefficiente di inquinamento dell'aria (#glossary("PM10")) registrato tra tutti i sensori negli ultimi 5 minuti, espresso in $#sym.mu g\/m^3$, presentato in formato numerico;
            15. Visualizzare un messaggio di avvertenza di dati mancanti, nei vari #glossary("pannelli"), nel caso di assenza di dati da mostrare.
      ],"N/I",[
            UC0\
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
            UC2.11\
            UC2.12\
            UC9
      ]),
      ([
          Verificare che l'#glossary("amministratore pubblico"), una volta entrato nell'applicazione, possa:
            1. Aprire il menu di selezione delle #glossary("dashboard")\;
            2. Selezionare la #glossary("dashboard") per visualizzare i dati urbanistici;
            3. Visualizzare la relativa #glossary("dashboard")\;
            4. Visualizzare un #glossary("pannello") con una mappa che indichi, mediante indicatori numerici, collocati presso le coordinate di ciascun #glossary("sensore"), la quantità di posti liberi nel parcheggio corrispondente;
            5. Visualizzare un #glossary("pannello") contenente una mappa che indichi, mediante indicatori booleani collocati presso le coordinate di ciascun #glossary("sensore"), la disponibilità della colonna corrispondente; 
            6. Visualizzare un #glossary("pannello") che esprima, tramite una tabella indicizzata tramite il nome del #glossary("sensore"), l'erogazione energetica, espressa in watt per ora;
            7. Visualizzare un #glossary("pannello") contenente una mappa che indichi, tramite gli stati "LOW", "MEDIUM", "HIGH" e "BLOCKED", lo stato di congestione delle strade; 
            8. Visualizzare un #glossary("pannello") contenente una mappa che indichi, mediante degli indicatori numerici, la posizione in tempo reale delle biciclette elettriche, tali indicatori devono inoltre indicare la percentuale di batteria del mezzo; 
            9. Visualizzare un #glossary("pannello") contenente una mappa indicante lo stato di riempimento delle zone ecologiche, espresse in valori percentuali, posizionate nelle coordinate delle zone; 
            10. Visualizzare un messaggio di avvertenza di dati mancanti, nei vari #glossary("pannelli"), nel caso di assenza di dati da mostrare.
      ],"N/I",[
            UC0\
            UC3\
            UC3.1\
            UC3.2\
            UC3.3\
            UC3.3.1\
            UC3.3.2\
            UC3.4\
            UC3.5\
            UC3.6\
            UC9
      ]),
      ([
          Verificare che l'#glossary("amministratore pubblico"), una volta entrato nell'applicazione, possa:
            1. Aprire il menu di selezione delle #glossary("dashboard")\;
            2. Selezionare la #glossary("dashboard") per visualizzare i #glossary("dati anomali") e il superamento soglie; 
            3. Visualizzare la relativa #glossary("dashboard")\;
            4. Visualizzare un #glossary("pannello") contenente una tabella, la quale mostra tutte le anomalie rilevate, mostrando il valore dell'anomalia, il #glossary("sensore") che l'ha rilevata e il relativo #glossary("timestamp")\; 
            5. Visualizzare un #glossary("pannello") contenente una tabella, la quale mostra tutti i dati superanti le soglie impostate nel sistema, mostrando il valore superante la soglia, il #glossary("sensore") che ha rilevato tale valore e il relativo #glossary("timestamp")\;
            6. Visualizzare un messaggio di avvertenza di dati mancanti, nei #glossary("pannelli"), nel caso di assenza di dati da mostrare.
      ],"N/I",[
            UC0\
            UC4\
            UC4.1\
            UC4.2\
            UC9
      ]),
      ([
          Verificare che l'#glossary("amministratore pubblico"), una volta entrato nell'applicazione, possa:
            1. Ricevere un'allerta che notifichi il superamento dei 40° Celsius (°C); 
            2. Ricevere un'allerta che notifichi il superamento dei 50 millimetri di pioggia all'ora (50 mm/h); 
            3. Ricevere un'allerta relativa all'inquinamento dell'aria (#glossary("PM10")) che notifica il superamento di 80#[#sym.mu]g su metro cubo ($ 80#sym.mu g\/m^3$); 
            4. Ricevere un'allerta che notifichi il superamento del 70% della capienza di un bacino; 
            5. Ricevere un'allerta che notifichi il superamento dell'80% della capienza di una zona ecologica.
      ],"N/I",[
            UC5\
            UC5.1\
            UC5.2\
            UC5.3\
            UC5.4\
            UC5.5\
            
      ]),
      ([
          Verificare che l'#glossary("amministratore pubblico"), una volta entrato nell'applicazione, possa:
            1. Scegliere una #glossary("dashboard") da visualizzare;
            2. Applicare dei filtri, per visualizzare solo i dati provenienti dal sottoinsieme di sensori selezionato, nel caso di #glossary("pannelli") di tipo #glossary("serie storica")\;
            3. Applicare dei filtri, per visualizzare solo i dati provenienti dai sensori delle tipologie selezionate, nel caso di #glossary("pannelli") contenenti tabelle, le quali comprendono più tipologie di sensori al loro interno; 
            4. Applicare dei filtri, per selezionare solo particolari sensori, mediante il nome, nel caso di #glossary("pannelli") contenenti tabelle;
            5. Applicare dei filtri, per selezionare solo i dati relativi ad un definito intervallo di tempo, all'interno di un'intera #glossary("dashboard")\;
      ],"N/I",[
            UC0\
            UC6\
            UC6.1\
            UC6.2\
            UC6.3\
            UC6.4\
      ]),
      ([
          Verificare che l'#glossary("amministratore pubblico"), una volta entrato nell'applicazione, possa:
            1. Scegliere una tabella da ordinare;
            2. Ordinare le righe di tale tabella secondo uno dei suoi campi. 
      ],"N/I",[
            UC7
      ]),
      ([
          Verificare che l'#glossary("amministratore pubblico"), una volta entrato nell'applicazione, possa:
            1. Scegliere una #glossary("dashboard") di cui modificare il layout;
            2. Modificare il layout dei #glossary("pannelli") in termini di posizione di tali #glossary("pannelli") e della loro dimensione.
      ],"N/I",[
            UC8, 
            UC8.1, 
            UC8.2
      ]),
      ([
          Verificare che un #glossary("sensore"), una volta connesso al sistema, possa:
            1. Inserire il risultato della rilevazione della temperatura, espressa in gradi Celsius (°C), con annesso il #glossary("timestamp") di rilevazione, le proprie coordinate geografiche, la propria percentuale di batteria (costantemente a 100% nel caso di sensori senza batteria autonoma), la data di ultima manutenzione effettuata su di esso e la propria frequenza di inserimento dati, espressa in secondi.
      ],"N/I",[
            U10\
            U21
      ]),
      ([
          Verificare che un #glossary("sensore"), una volta connesso al sistema, possa:
            1. Inserire il risultato della rilevazione dell'umidità, espressa in percentuale, con annesso il #glossary("timestamp") di rilevazione, le proprie coordinate geografiche, la propria percentuale di batteria (costantemente a 100% nel caso di sensori senza batteria autonoma), la data di ultima manutenzione effettuata su di esso e la propria frequenza di inserimento dati, espressa in secondi.
      ],"N/I",[
            U11\
            U21
      ]),
      ([
          Verificare che un #glossary("sensore"), una volta connesso al sistema, possa:
            1. Inserire il risultato della rilevazione della direzione e della velocità del vento, espresse rispettivamente in gradi (con gli 0° a Nord e i 180° a Sud) e in chilometri orari (km/h), con annesso il #glossary("timestamp") di rilevazione, le proprie coordinate geografiche, la propria percentuale di batteria (costantemente a 100% nel caso di sensori senza batteria autonoma), la data di ultima manutenzione effettuata su di esso e la propria frequenza di inserimento dati, espressa in secondi.
      ],"N/I",[
            U12\
            U21
      ]),
      ([
          Verificare che un #glossary("sensore"), una volta connesso al sistema, possa:
            1. Inserire il risultato della rilevazione della quantità di precipitazioni, espressa in millimetri all'ora (mm/h), con annesso il #glossary("timestamp") di rilevazione, le proprie coordinate geografiche, la propria percentuale di batteria (costantemente a 100% nel caso di sensori senza batteria autonoma), la data di ultima manutenzione effettuata su di esso e la propria frequenza di inserimento dati, espressa in secondi.
      ],"N/I",[
            U13\
            U21
      ]),
      ([
          Verificare che un #glossary("sensore"), una volta connesso al sistema, possa:
             1. Inserire il risultato della rilevazione dell'inquinamento dell'aria (#glossary("PM10")), espresso in $#sym.mu g\/m^3$, con annesso il #glossary("timestamp") di rilevazione, le proprie coordinate geografiche, la propria percentuale di batteria (costantemente a 100% nel caso di sensori senza batteria autonoma), la data di ultima manutenzione effettuata su di esso e la propria frequenza di inserimento dati, espressa in secondi.
      ],"N/I",[
            U14\
            U21
      ]),
      ([
          Verificare che un #glossary("sensore"), una volta connesso al sistema, possa:
            1. Inserire il risultato della rilevazione del livello di riempimento del bacino idrico presso cui è installato, espressa in percentuale, con annesso il #glossary("timestamp") di rilevazione, le proprie coordinate geografiche, la propria percentuale di batteria (costantemente a 100% nel caso di sensori senza batteria autonoma), la data di ultima manutenzione effettuata su di esso e la propria frequenza di inserimento dati, espressa in secondi.
      ],"N/I",[
            U15\
            U21
      ]),
      ([
          Verificare che un #glossary("sensore"), una volta connesso al sistema, possa:
            1. Inserire il risultato della rilevazione della quantità di parcheggi nel parcheggio in cui è installato, espressa numericamente, con annesso il #glossary("timestamp") di rilevazione, le proprie coordinate geografiche, la propria percentuale di batteria (costantemente a 100% nel caso di sensori senza batteria autonoma), la data di ultima manutenzione effettuata su di esso e la propria frequenza di inserimento dati, espressa in secondi.
      ],"N/I",[
            U16\
            U21
      ]),
      ([
          Verificare che un #glossary("sensore"), una volta connesso al sistema, possa:
            1. Inserire il risultato della rilevazione della quantità di energia erogata, espressa in chilowatt all'ora (kWh), con annesso il #glossary("timestamp") di rilevazione, le proprie coordinate geografiche, la propria percentuale di batteria (costantemente a 100% nel caso di sensori senza batteria autonoma), la data di ultima manutenzione effettuata su di esso e la propria frequenza di inserimento dati, espressa in secondi.
      ],"N/I",[
            U17\
            U21
      ]),
      ([
          Verificare che un #glossary("sensore"), una volta connesso al sistema, possa:
            1. Inserire il risultato della rilevazione della percentuale di batteria della bicicletta a cui è associato e le relative coordinate geografiche, con annesso il #glossary("timestamp") di rilevazione, la propria percentuale di batteria (costantemente a 100% nel caso di sensori senza batteria autonoma), la data di ultima manutenzione effettuata su di esso e la propria frequenza di inserimento dati, espressa in secondi.
      ],"N/I",[
            U18\
            U21
      ]),
      ([
          Verificare che un #glossary("sensore"), una volta connesso al sistema, possa:
            1. Inserire il risultato della rilevazione del livello di riempimento della zona ecologica presso cui è installato, espressa in percentuale, con annesso il #glossary("timestamp") di rilevazione, le proprie coordinate geografiche, la propria percentuale di batteria (costantemente a 100% nel caso di sensori senza batteria autonoma), la data di ultima manutenzione effettuata su di esso e la propria frequenza di inserimento dati, espressa in secondi.
      ],"N/I",[
            U19\
            U21
      ]),
      ([
          Verificare che un #glossary("sensore"), una volta connesso al sistema, possa:
            1. Inserire il risultato della rilevazione dello stato della congestione stradale nella strada presso cui è installato, espressa nei seguenti stati (ordinati per ordine di congestione crescente) "LOW", "MEDIUM", "HIGH", "BLOCKED", con annesso il #glossary("timestamp") di rilevazione, le proprie coordinate geografiche, la propria percentuale di batteria (costantemente a 100% nel caso di sensori senza batteria autonoma), la data di ultima manutenzione effettuata su di esso e la propria frequenza di inserimento dati, espressa in secondi.
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



#let test_di_sistema = (
      ([
            Verificare che l'#glossary("amministratore pubblico") possa accedere all'applicazione senza dover effettuare l'autenticazione.
      ],"N/I","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un menù di selezione delle #glossary[dashboard], che permetta di selezionare una #glossary("dashboard") Sensori, Ambientale, Urbanistica e Dati anomali & superamento soglie.
      ],"N/I","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare una #glossary("dashboard") dedicata a fornire una panoramica generale dei sensori.
      ],"N/I","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare le posizioni dei sensori come icone su una mappa, appartenente alla #glossary("dashboard") generale relativa ai sensori.
      ],"N/I","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare, in forma tabellare, l'elenco dei sensori con la relativa percentuale di batteria, un valore booleano che indica se il #glossary("sensore") abbia batteria autonoma o meno e la data di ultima manutenzione effettuata su tale #glossary("sensore"), all'interno della #glossary("dashboard") generale relativa ai sensori.
      ],"N/I","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa  monitorare i dati provenienti dai sensori relativi ai dati ambientali in una #glossary("dashboard") apposita.
      ],"N/I","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente un grafico in formato #glossary("time series") rappresentante la media aritmetica della temperatura, espressa in gradi Celsius (°C), per ciascun #glossary("sensore"), che aggreghi i dati per intervalli di 5 minuti, nella #glossary("dashboard") relativa ai dati ambientali. 
      ],"N/I","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente un grafico in formato #glossary("time series") rappresentante la media aritmetica dell'umidità, espressa in percentuale, per ciascun #glossary("sensore"), che aggreghi i dati per intervalli di 5 minuti, nella #glossary("dashboard") relativa ai dati ambientali. 
      ],"N/I","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente una mappa che evidenzi la direzione del vento, mediante frecce aventi origine nelle coordinate del #glossary("sensore"), nella #glossary("dashboard") relativa ai dati ambientali.
      ],"N/I","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente una tabella la quale riporta l'ultima velocità del vento, espressa in chilometri all'ora (km/h), per ciascun #glossary("sensore"), nella #glossary("dashboard") relativa ai dati ambientali.
      ],"N/I","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente un grafico in formato #glossary("time series") rappresentante la media aritmetica dell'intensità delle precipitazioni, espresse in millimetri all'ora (mm/h), per ciascun #glossary("sensore"), che aggreghi i dati per intervalli di 5 minuti, nella #glossary("dashboard") relativa ai dati ambientali. 
      ],"N/I","ROF"),

      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente un indice numerico, che esprime l'intensità media delle precipitazioni, espressa in millimetri all'ora (mm/h), degli ultimi 5 minuti, facendo la media dei dati raccolti tra tutti i sensori, nella #glossary("dashboard") relativa ai dati ambientali.
      ],"N/I","RDF"),

      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente un grafico in formato #glossary("time series") rappresentante la media aritmetica del livello di polveri sottili nell'aria (#glossary("PM10")), espressa in $#sym.mu g\/m^3$, per ciascun #glossary("sensore"), aggregando i dati per intervalli di 5 minuti, nella #glossary("dashboard") relativa ai dati ambientali.
      ],"N/I","ROF"),

      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente un indice numerico, che esprime l'inquinamento dell'aria medio (#glossary("PM10")), espresso in $#sym.mu g\/m^3$, degli ultimi 5 minuti, facendo la media dei dati raccolti tra tutti i sensori, nella #glossary("dashboard") relativa ai dati ambientali.
      ],"N/I","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente un grafico in formato #glossary("time series") rappresentante la percentuale di riempimento dei bacini idrici, per ciascun #glossary("sensore"), aggregando i dati per intervalli di 5 minuti, nella #glossary("dashboard") relativa ai dati ambientali.
      ],"N/I","ROF"),

      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente un indice numerico, che esprime la temperatura media, espressa in gradi Celsius (°C), degli ultimi 5 minuti, facendo la media dei dati raccolti tra tutti i sensori, nella #glossary("dashboard") relativa ai dati ambientali.
      ],"N/I","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente un indice numerico, che esprime l'inquinamento dell'aria massimo (#glossary("PM10")), espresso in $#sym.mu g\/m^3$, degli ultimi 5 minuti, tra i dati registrati da tutti i sensori, nella #glossary("dashboard") relativa ai dati ambientali.
      ],"N/I","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa monitorare i dati provenienti dai sensori relativi ai dati urbanistici in una #glossary("dashboard") apposita.
      ],"N/I","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente una mappa che evidenzi il numero di posti liberi nei vari parcheggi, mediante indicatori numerici posti nelle coordinate del #glossary("sensore"), nella #glossary("dashboard") relativa ai dati urbanistici.
      ],"N/I","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente una mappa che evidenzi la posizione delle colonne di ricarica per auto, mediante indicatori booleani posti nelle coordinate dei sensori che ne indicano la disponibilità di queste, nella #glossary("dashboard") relativa ai dati urbanistici.
      ],"N/I","ROF"),



      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente una tabella che riporti l'erogazione delle colonne di ricarica, espressa in Watt all'ora, nella #glossary("dashboard") relativa ai dati urbanistici.
      ],"N/I","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente una mappa che evidenzi lo stato di congestione delle strade, mediante gli stati "LOW", "MEDIUM", "HIGH", "BLOCKED", presso le coordinate dei sensori che hanno effettuato la rilevazione, nella #glossary("dashboard") relativa ai dati urbanistici.
      ],"N/I","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente una mappa che mostri, in tempo reale, la posizione delle biciclette elettriche, mediante degli indicatori numerici, indicanti la percentuale della batteria, nella #glossary("dashboard") relativa ai dati urbanistici.
      ],"N/I","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente una mappa che mostri la percentuale di riempimento delle zone ecologiche, mediante degli indicatori percentuali, posizionati nelle coordinate della zona, nella #glossary("dashboard") relativa ai dati urbanistici.
      ],"N/I","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare una #glossary("dashboard") dedicata a monitorare i #glossary("dati anomali") e i dati superanti delle soglie.
      ],"N/I","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente una tabella che mostri i #glossary("dati anomali"), il #glossary("sensore") che li ha rilevati e il #glossary("timestamp") del rilevamento, nella #glossary("dashboard") relativa ai #glossary("dati anomali") e il superamento delle soglie.
      ],"N/I","RPF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente una tabella che mostri i dati relativi a temperatura, precipitazioni, inquinamento dell'aria (#glossary("PM10")), bacini idrici e zone ecologiche, i cui valori superano una soglia fissata, il #glossary("sensore") che li ha rilevati e il #glossary("timestamp") del rilevamento, nella #glossary("dashboard") relativa ai #glossary("dati anomali") e superanti le soglie.
      ],"N/I","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare delle notifiche riguardo a rilevazioni di tipo temperatura, superanti una soglia di 40° Celsius (°C).
      ],"N/I","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare delle notifiche riguardo rilevazioni di tipo precipitazioni, superanti una soglia di 50 millimetri all'ora (50 mm/h).
      ],"N/I","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare delle notifiche riguardo rilevazioni dell' inquinamento dell'aria (#glossary("PM10")), superanti una soglia di 80 microgrammi su metro cubo ($80#sym.mu g\/m^3$).
      ],"N/I","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare delle notifiche riguardo rilevazioni del livello di riempimento dei bacini idrici, superanti una soglia corrispondente al 70% della capienza del bacino idrico corrispondente.
      ],"N/I","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare delle notifiche riguardo rilevazioni del livello di riempimento delle zone ecologiche, superanti una soglia corrispondente all'80% della capienza della zona corrispondente.
      ],"N/I","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa filtrare i dati, visualizzati all'interno di un grafico di tipo #glossary("time series"), in base ad un sottoinsieme di sensori da lui selezionato.
      ],"N/I","ROF"),
      ([
            Verificare che che l'#glossary("amministratore pubblico") possa filtrare i dati, visualizzati all'interno di una tabella, in base alla tipologia di #glossary("sensore"). 
      ],"N/I","ROF"),
      ([
            Verificare  che l'#glossary("amministratore pubblico") possa filtrare i dati, visualizzati all'interno di una tabella, in base ad un sotto-insieme di sensori, selezionando i nomi dei sensori di interesse.
      ],"N/I","ROF"),
      ([
            Verificare  che l'#glossary("amministratore pubblico") possa filtrare i dati in base ad un intervallo temporale. Di conseguenza la  #glossary("dashboard") interessata deve, nella sua totalità, mostrare solamente i dati aventi un #glossary("timestamp") in tale intervallo.
      ],"N/I","ROF"),
      ([
            Verificare  che l'#glossary("amministratore pubblico"), nei #glossary("pannelli") tabellari, possa ordinare i dati sulla base dei valori delle proprie colonne, sia in ordine crescente che decrescente. 
      ],"N/I","RDF"),
      ([
            Verificare  che l'#glossary("amministratore pubblico") possa, nel contesto della singola #glossary("dashboard"),  modificare il layout, agendo sulla posizione dei  #glossary("pannelli"). 
      ],"N/I","RDF"),
      ([
            Verificare  che l'#glossary("amministratore pubblico") possa, nel contesto della singola #glossary("dashboard"),  modificare il layout, agendo sulla dimensione dei  #glossary("pannelli"). 
      ],"N/I","RDF"),
      ([
            Verificare  che l'#glossary("amministratore pubblico"), riceva un messaggio di errore qualora, il sistema di visualizzazione non riesca a reperire i dati necessari per un determinato #glossary("pannello"). 
      ],"N/I","ROF"),
      /*da qui iniziano i requisiti relativi ai sensori*/
      ([
            Verificare che un #glossary("sensore") possa inserire nel sistema le rilevazioni della temperatura, espresse in gradi Celsius (°C), effettuate dal #glossary("sensore"), con annesso coordinate e #glossary("timestamp") della rilevazione.
      ],"N/I","ROF"),
      ([
            Verificare che un #glossary("sensore") possa inserire nel sistema le rilevazioni all'umidità, espresse in percentuale, effettuate dal #glossary("sensore"), con annesso coordinate e #glossary("timestamp") della rilevazione. 
      ],"N/I","ROF"),
      ([
            Verificare che un #glossary("sensore") possa inserire nel sistema le rilevazioni della velocità e della direzione del vento, espresse rispettivamente in chilometri all'ora (km/h) e in gradi (con gli 0° a Nord e i 180° a Sud), effettuate dal #glossary("sensore"), con annesso coordinate e #glossary("timestamp") della rilevazione. 
      ],"N/I","ROF"),
      ([
            Verificare che un #glossary("sensore") possa inserire nel sistema le rilevazioni della quantità di precipitazioni, espresse in millimetri orari (mm/h), con annesso coordinate e #glossary("timestamp") della rilevazione. 
      ],"N/I","ROF"),
      ([
            Verificare che un #glossary("sensore") possa inserire nel sistema le rilevazioni dell'inquinamento (#glossary("PM10")), espresse in microgrammi al metro cubo ($#sym.mu g\/m^3$), effettuate dal #glossary("sensore"), con annesso coordinate e #glossary("timestamp") della rilevazione. 
      ],"N/I","ROF"),
      ([
            Verificare che un #glossary("sensore") possa inserire nel sistema le rilevazioni del livello di riempimento del bacino idrico presso cui è installato, espresse in percentuale, effettuate dal #glossary("sensore"), con annesso coordinate e #glossary("timestamp") della rilevazione. 
      ],"N/I","ROF"),
      ([
            Verificare che un #glossary("sensore") possa inserire nel sistema le rilevazioni del quantitativo di posti liberi nel parcheggio controllato, effettuate dal #glossary("sensore"), con annesso coordinate e #glossary("timestamp") della rilevazione. 
      ],"N/I","ROF"),
      ([
            Verificare che un #glossary("sensore") possa inserire nel sistema le rilevazioni dell'erogazione della colonna di ricarica controllata, espresse in chilowatt all'ora (kWh), effettuate dal #glossary("sensore"), con annesso coordinate e #glossary("timestamp") della rilevazione. 
      ],"N/I","ROF"),
      ([
            Verificare che un #glossary("sensore") possa inserire nel sistema le rilevazioni delle coordinate geografiche e della percentuale di batteria della bicicletta elettrica controllata, effettuate dal #glossary("sensore"), con annesso il #glossary("timestamp") della rilevazione. 
      ],"N/I","ROF"),
      ([
            Verificare che un #glossary("sensore") possa inserire nel sistema le rilevazioni del livello di riempimento della zona ecologica presso cui è installato, espresse in percentuale, effettuate dal #glossary("sensore"), con annesso coordinate e #glossary("timestamp") della rilevazione. 
      ],"N/I","ROF"),
      ([
            Verificare che un #glossary("sensore") possa inserire nel sistema le rilevazioni del livello di congestione stradale, espresse in stati (in ordine crescente di congestione: "LOW", "MEDIUM", "HIGH", "BLOCKED"), effettuate dal #glossary("sensore"), con annesso coordinate e #glossary("timestamp") della misurazione.
      ],"N/I","ROF"),
      ([
            Verificare che ogni #glossary("sensore") invii oltre ai dati della misurazione effettuata, la propria percentuale di batteria, la data di ultima manutenzione effettuata su di esso, e la propria frequenza di inserimento dati espressa in secondi.
      ],"N/I","ROF"),
      ([
            Verificare che sia stato implementato almeno un simulatore almeno una tipologia di #glossary("sensore").
      ],"N/I","ROF"), 
      ([
            Verificare che i dati prodotti dalle simulazioni siano realistici.
      ],"N/I","ROF"), 
      ([
            Verificare che il sistema possa rilevare eventuali relazioni tra sorgenti di dati diverse.
      ],"N/I","ROF"), 
      ([
            Verificare che il sistema possa effettuare previsioni di eventi futuri, sulla base di dati storici e attuali.
      ],"N/I","ROF"), 
      

      

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

== Liste di controllo

Le liste di controllo sono uno strumento che il Verificatore può utilizzare al fine di individuare errori ricorrenti nella #glossary[documentazione] o nel codice. Tali liste prevedono anche una descrizione del problema al fine di poter fornire una spiegazione della richiesta di cambiamenti durante la fase di revisione.
Le liste di controllo possono essere aggiornate durante tutto il corso del progetto dal Verificatore, man mano che vengono notati errori ricorrenti.

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
      [Titolo principale],[Tutti i titoli principali devono iniziare la pagina nella quale vengono inseriti.],

),
caption: [Lista di controllo per la struttura dei documenti.]
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
      [Forma non concisa],[Le espressioni troppo verbose, ove possibile, devono essere ridotte a forme più concise.],
      [Non formalità],[Le espressioni non formali devono essere sostituite con le corrispondenti espressioni formali.],
      [Richiamo errato al documento],[Ogni richiamo ai documenti, in una loro particolare versione, deve seguire la seguente forma: _NomeDocumento vVersioneMajor.VersioneMinor_ (e.g. _Piano di Progetto v1.0_).],
      [Termini impropriamente in maiuscolo],[I termini di glossario non godono della proprietà di avere la prima lettera maiuscola, rispetto alle parole tradizionali. Seguono le stesse regole delle parole non di glossario in quanto alla forma (ovviamente non riguardo allo stile).],
      [Acronimi non in maiuscolo],[Gli acronimi devono essere completamente in maiuscolo (e.g. #glossary[ITS] - acronimo per Issue Tracking System).],
),
caption: [Lista di controllo per gli errori ortografici, di lingua italiana e di forma.]
)

#pagebreak()
=== Non conformità con le _Norme di Progetto_

#figure(
table(
      columns: (1fr, 2fr),
      inset: 10pt,
      align: (center, left),
      [*Aspetto*],[*Spiegazione*],
      [Formato date errato],[Il formato delle date deve essere *dd-mm-aaaa* all'interno dei documenti, oppure *aa-mm-dd* all'interno dei nomi dei documenti.],
      [Punteggiatura scorretta negli elenchi],[Ogni elemento di un elenco, numerato o non, deve terminare con un "*;*", ad eccezione dell'ultima riga, la quale deve terminare con "*.*".],
      ["*:*" in grassetto negli elenchi],[Gli elenchi nella forma "*termine*: testo", non devono includere il ":" nel grassetto.],
      [Maiuscole nei titoli],[La prima lettera di ogni titolo deve essere maiuscola. Il resto del titolo dovrebbe essere in minuscolo (tolte particolari eccezioni, come ad esempio nomi di documenti o lettere che compaiono all'interno di acronimi).],
      [Maiuscole negli elenchi],[Le prime lettere di ogni elenco devono essere maiuscole.],
      [Ruoli in minuscolo],[Tutti i ruoli del progetto devono avere la prima lettera in maiuscolo.],
      [Termine non presente nel glossario],[Ogni termine segnato con la formattazione da glossario deve essere effettivamente presente nel glossario con la relativa descrizione.],
),
caption: [Lista di controllo per le non conformità con le _Norme di Progetto_.]
)

#pagebreak()
=== _Analisi dei Requisiti_

#figure(
table(
      columns: (1fr, 2fr),
      inset: 10pt,
      align: (center, left),
      [*Aspetto*],[*Spiegazione*],
      [Tracciamento caso d'uso - requisito],[Per ciascun caso d'uso deve corrispondere almeno un requisito.],
      [Struttura errata dei requisiti],[I requisiti devono essere scritti nella forma: "\<soggetto\> deve/devono \<verbo all'infinito\>"],
      [Numerazione errata dei casi d'uso],[La numerazione dei casi d'uso deve seguire la crescita dei numeri interi naturali. Se si tratta di un sotto-caso d'uso, il sotto-caso deve ereditare, come prefisso del proprio codice, il codice del caso d'uso a cui appartiene, e ne aggiunge una cifra. Fare riferimento alle _Norme di Progetto v1.0_ per una descrizione più approfondita.],
      [#glossary[UML] dei casi d'uso],[Le estensioni e le inclusioni di un caso d'uso vanno nello stesso diagramma #glossary[UML] del caso d'uso stesso.],
),
caption: [Lista di controllo per l’_Analisi dei Requisiti_.]
)


#pagebreak()
= Cruscotto delle metriche

== Qualità di processo - fornitura

=== Estimated At Completion
 
#figure(
  image("./assets/valutazione-metriche/EAC.png", width: 85%),
  caption: [
    Valutazione Estimated At Completion.
  ],
)

*#glossary[RTB]* L'EAC rappresenta una revisione del valore stimato per la realizzazione del progetto, ossia il BAC (Budget At Completion) rivisto allo stato corrente del progetto; il fattore che incide maggiormente sull'andamento dell'EAC è il rapporto tra EV (Estimated Value) e AC (Actual Cost), per cui tanto più queste metriche sono vicine l'una all'altra, tanto più l'EAC risulterà vicino al BAC pianificato inizialmente. 
Concluso il secondo #glossary[sprint], il team ha rilevato che il valore associato all'EAC non rientrava all'interno della soglia accettabile: ci si è dunque attivati al fine di rimodulare la quantità di lavoro netta associata al concetto di ora produttiva.

Dal grafico si può rilevare che la curva delineata dal valore dell'EAC, pur essendo rimasta sempre al di sopra del valore di accettazione, ha, già a partire dal secondo #glossary[sprint] e dunque a seguito dell'azione correttiva intrapresa, mostrato un trend decrescente; il team si aspettava che nel corso degli #glossary[sprint] successivi l'andamento avrebbe continuato la sua discesa fino a che i valori fossero rientrati nella fascia accettabile.

Nelle ultime rilevazioni effettuate, la metrica ha comunque continuato la sua discesa, senza però raggiungere la soglia accettabile: la misurazione della metrica è stata di certo inflazionata dalle attività previste per gli ultimi #glossary[sprint].
Il team si è occupato infatti di ultimare tutta la #glossary[documentazione] necessaria alla revisione #glossary("RTB") e ciò ha fatto impennare i costi, causa il costo orario più elevato dei ruoli attivi (specie dell'Amministratore).

Questo risultato, nonostante la correlazione causale individuata, suggerisce ugualmente che qualcosa nel progetto non è stato gestito al meglio: la forte attenzione posta sulla #glossary[documentazione] nell'ultimo #glossary[sprint] è una manifestazione del tentativo del team di rincorrere gli obiettivi di una pianificazione poco rigorosa. Ne deriva che il team, in vista della seconda revisione, dovrà impegnarsi a migliorare il processo relativo alla gestione di progetto, in modo da poter essere sempre sicuri che gli obiettivi fissati siano effettivamente raggiunti nei termini dettati dalla pianificazione. 


#pagebreak()

=== Budget Variance e Schedule Variance

#figure(
  image("./assets/valutazione-metriche/BV_SV.png", width: 85%),
  caption: [
    Valutazione Budget Variance e Schedule Variance.
  ],
)

*#glossary[RTB]* La metrica BV indica se alla data corrente si è speso di più o di meno rispetto a quanto inizialmente previsto nel budget; la metrica SV indica se si è in linea, in anticipo o in ritardo rispetto alla schedulazione delle attività di progetto pianificate. 
Nonostante inizialmente le due metriche si stessero allontanando rapidamente dal valore di accettazione, a partire dal secondo #glossary[sprint] queste sembrano stabilizzarsi, segno che le azioni correttive adottate all'epoca hanno prodotto gli effetti desiderati quasi immediatamente.
Il cambiamento più significativo si è verificato durante il quinto #glossary[sprint], in occasione del quale è stata osservata un'inversione di tendenza: entrambe le metriche hanno iniziato a riavvicinarsi al valore desiderato.
Il team si aspetta che il #glossary[way of working] consolidato nel corso del progetto permetta di recuperare quanto perso nel corso dei primi #glossary[sprint]. 
Durante il settimo e l'ottavo #glossary[sprint] le due metriche hanno mantenuto il gradiente che ci si aspettava. 


=== Actual Cost e Estimate To Complete

#figure(
  image("./assets/valutazione-metriche/AC_ETC.png", width: 85%),
  caption: [
    Valutazione Actual Cost e Estimate To Complete.
  ],
)

*#glossary[RTB]* L'AC rappresenta il costo effettivo sostenuto fino a un dato momento, mentre l'ETC rappresenta la stima del costo aggiuntivo necessario per completare il progetto; di conseguenza, ci si aspetta che l'AC cresca e che l'ETC diminuisca in modo sostanzialmente lineare, segno che il progetto sta mantenendo un ritmo regolare di avanzamento. 
Il grafico mostra che effettivamente il team ha mantenuto un ritmo di avanzamento pressoché costante durante tutto il periodo che precede la revisione #glossary[RTB], il che è apprezzabile: nonostante la sessione d'esame il team ha continuato a occuparsi con impegno delle attività di progetto, per quanto possibile.
Tuttavia, si può evincere anche che il progetto risulta essere leggermente in ritardo rispetto alle tempistiche inizialmente previste.
Considerando che gli otto #glossary[sprint] effettuati corrispondono ad un periodo temporale di 10 settimane, esattamente la metà del periodo di tempo previsto per il completamento dell'intero progetto, ci si aspettava che le due metriche delineate nel grafico si fossero già incrociate giunti a questo punto.


=== Earned Value e Planned Value

#figure(
  image("./assets/valutazione-metriche/EV_PV.png", width: 85%),
  caption: [
    Valutazione Earned Value e Planned Value.
  ],
)

*#glossary[RTB]* L'EV rappresenta il valore prodotto dal progetto ossia il valore dei #glossary[deliverable] rilasciati fino al momento della misurazione in seguito alle attività svolte; il PV rappresenta invece il valore del lavoro pianificato fino a un dato momento. Nonostante sia ancora prematuro confrontare le due metriche con l'EAC, si può notare che il PV si mantiene al di sotto dell'EV, seppur di poco, segno che i preventivi fatti finora sono stati leggermente ottimistici rispetto alla spesa effettiva. Si può notare come le due metriche a partire dal sesto #glossary[sprint] tendano ad avvicinarsi: ciò denota che il team sta iniziando effettivamente a produrre dei preventivi di periodo che rispecchiano maggiormente la realtà effettiva, anche per come viene fotografata nei consuntivi di periodo.

// == Qualità di Processo - Codifica TODO: non ha senso in questa fase del progetto


#pagebreak()


== Qualità di processo - documentazione

=== Indice Gulpease

#figure(
  image("./assets/valutazione-metriche/IG.png", width: 85%),
  caption: [
    Valutazione Indice Gulpease.
  ],
)

*#glossary[RTB]* Al termine del secondo #glossary[sprint], tutti i documenti in corso di preparazione in vista della revisione #glossary("RTB") possiedono un IG al di sopra del limite accettabile inferiore di 60; in particolare, l'_Analisi dei Requisiti_ ha raggiunto il valore ideale. 
Si rileva che nel corso dell'ultimo #glossary[sprint] tutti i documenti hanno subito un abbassamento del loro indice di leggibilità, perciò nel corso del periodo che precede la seconda revisione #glossary[PB] il team dovrà impegnarsi ad utilizzare una scrittura più semplice.


=== Correttezza Ortografica

#figure(
  image("./assets/valutazione-metriche/CO.png", width: 85%),
  caption: [
    Valutazione Correttezza Ortografica.
  ],
)


*#glossary[RTB]* A seguito dei primi due #glossary[sprint] sono stati rilevati parecchi errori ortografici, per far fronte ai quali si è scelto di adottare uno strumento di controllo dell'ortografia sia in fase di stesura che in fase di revisione della #glossary[documentazione]. Tuttavia, nonostante l'uso di questo strumento, si è notato che il processo di #glossary[documentazione] continua ad essere afflitto da errori ortografici. Questo indica che il problema non è tanto la mancanza di strumenti adeguati, quanto più un approccio disattento da parte del team durante la redazione dei documenti, e nel processo di verifica che ne consegue.
Fare in modo che non vi siano errori nei documenti prima della revisione #glossary("RTB") rimane comunque un obiettivo di qualità che il team vuole raggiungere. 
Per ovviare al problema il team ha deciso di introdurre una checklist incentrata sugli errori ortografici, in modo tale che i responsabili del processo di verifica possano avvalersene nel correggere eventuali errori. Questa checklist è pensata non solo come uno strumento pratico, ma principalmente come un promemoria costante per il Verificatore. 
Tale strumento ha mostrato immediatamente i suoi effetti benefici: gli errori nel corso dell'ottavo #glossary[sprint] sono calati a zero.


== Qualità di processo - gestione della qualità

=== Metriche Non Soddisfatte

#figure(
  image("./assets/valutazione-metriche/MNS.png", width: 85%),
  caption: [
    Valutazione Metriche Non Soddisfatte.
  ],
)
Le Metriche Non Soddisfatte corrispondono alle metriche MPC-CO, MPC-CPI, MPC-EAC. In concomitanza con l'ottavo #glossary("sprint"), la misurazione di MPC-CO è rientrata all'interno del valore di accettazione. Per quanto riguarda MPC-CPI e MPC-EAC, essendo estremamente legate tra loro, si rimanda alle considerazioni relative a MPC-EAC.


// == Qualità di prodotto
#pagebreak()



== Considerazioni finali in vista della revisione #glossary[RTB]

Il team ha tentato fin da subito di adottare un #glossary[way of working] che consentisse di rispettare gli obiettivi e le scadenze impostate all'inizio dello svolgimento del progetto, ma ci si è presto resi conto che quest'ultimo sarebbe dovuto essere gradualmente ampliato e raffinato con il passare del tempo; infatti, nonostante il #glossary[way of working] sia progressivamente migliorato con l'avanzare del progetto, alcune aree necessitano di essere meglio definite o migliorate affinché la qualità di processo si rifletta positivamente sulla qualità di prodotto. Volendo ripercorrere brevemente la progressione del modo di lavorare del team, si possono riportare alcune considerazioni sulle difficoltà incontrate inizialmente e su come si sia tentato di superarle. 

In generale, il team non ha avuto difficoltà nel fissare incontri interni settimanali per discutere dell'avanzamento del progetto a cui tutti i componenti partecipassero attivamente; tuttavia, per una buona parte del periodo antecedente la prima revisione #glossary[RTB] (sostanzialmente fino allo #glossary[sprint] 5 incluso), gli incontri hanno avuto una durata eccessiva, ossia oltre le 1,5 ore. Dunque, il team ha cominciato a stilare un #glossary[ordine del giorno] nel corso dello #glossary[sprint] in modo da poter strutturare meglio gli incontri e limitarne la durata. Nonostante questa lista abbia un contenuto piuttosto variabile, si può migliorare la sua applicazione prestabilendo quanto tempo si dovrebbe dedicare a ciascun punto di discussione nel corso dell'incontro, cosa che il team ha intenzione di fare dopo la prima revisione per renderli più efficienti. Si nota che gli incontri si protraggono ancora per più di quanto previsto, il che in parte è dovuto al fatto che si investe del tempo per assistere gli Amministratori nella creazione delle issue e assegnazione dei relativi campi. Tuttavia il fenomeno va riducendosi, segno che il team sta imparando a svolgere queste attività in modo più efficiente.

Si è menzionato il processo di creazione e assegnazione delle issue: fortunatamente tale processo è stato messo a punto e applicato in modo consistente fin dal principio, ma si può migliorare la sua applicazione per agevolare ulteriormente la creazione del preventivo che precede ogni #glossary[sprint] e la pianificazione a breve termine. In particolare, come spiegato nelle _Norme di Progetto v1.0_, ad ogni issue viene assegnata una dimensione (in base alle ore produttive che si stima siano necessarie per il suo completamento) e una priorità, pensate per aiutare il team a dimensionare gli #glossary[sprint] e a gestire la catena di dipendenze tra le varie issue in modo corretto; tuttavia, il fatto di conoscere (e aggiornare in corso d'opera se necessario) la dimensione di tutte le issue previste per un determinato #glossary[sprint] e, di conseguenza, la dimensione dello #glossary[sprint] stesso non è stato preso in considerazione nella creazione del preventivo rilevante. Non c'è dubbio sul fatto che creare un preventivo "informato" da questo genere di stima sia più efficace che crearne uno inserendo ore non vincolate in alcun modo, solo in base alle esigenze del momento. Allo stesso modo il team si era prefissato di esplicitare sempre le date di inizio e fine di ogni singola issue, in modo da agevolare la pianificazione; anche in questo caso l'idea iniziale non è stata applicata in modo soddisfacente, perciò è risultato difficile eseguire una pianificazione dettagliata di ogni #glossary[sprint], che consistesse anche di un diagramma di Gantt. In futuro, dunque, il team ha intenzione di sfruttare queste procedure in modo concreto per migliorare le attività di creazione di pianificazione e preventivo di ogni #glossary[sprint].

Sarebbe utile dunque monitorare la dimensione di ogni #glossary[sprint] come viene descritta sopra tramite una metrica apposita da inserire tra quelle di gestione dei processi; idealmente si avrebbe anche una metrica che misura il tasso di completamento delle attività per ogni #glossary[sprint], così da potersi regolare nella pianificazione di quelli futuri. Quest'ultima non è stata utilizzata perché nel momento in cui il team ha cominciato ad utilizzare le metriche scelte in modo appropriato, si è reso conto di non possedere una traccia delle issue aperte e chiuse al termine di ogni #glossary[sprint]\; attualmente, nel momento in cui si hanno delle issue ancora aperte alla fine dello #glossary[sprint] corrente, queste vengono "trasportate" allo #glossary[sprint] successivo assegnandole alla #glossary[milestone] appena creata. In futuro, sarebbe bene fare uno "screenshot" dello stato della Kanban board al termine dello #glossary[sprint] in modo da poter calcolare questa metrica aggiuntiva prima di riadattarla allo #glossary[sprint] in procinto di iniziare.

L'applicazione di una routine più rigorosa per quanto riguarda l'aggiornamento del _Piano di Progetto_ e del _Piano di Qualifica_ con i dati rilevanti è di importanza vitale, soprattutto dopo la revisione #glossary[RTB] quando ci saranno documenti aggiuntivi che richiederanno attenzione; pianificazione, preventivo, consuntivo e metriche dovranno essere aggiornati in modo metodico e rigoroso in modo da essere sfruttati come strumenti utili ed evitare problemi come l'impiego di più ore produttive in un determinato ruolo (Amministratore, ad esempio) di quante non ce ne siano effettivamente a disposizione (anche questo da considerare nella creazione dei preventivi appunto, assieme alla dimensione dello #glossary[sprint]).

In quanto alla rendicontazione delle ore produttive effettivamente utilizzate dai membri del team nel corso di ciascuno #glossary[sprint], lo #glossary[spreadsheet] "Time & Resource Manager" su Google Drive si è rivelato estremamente utile (se aggiornato tempestivamente da tutti i membri senza ritardo); tuttavia, l'utilizzo delle ore produttive preventivate ed effettive riportate nel _Piano di Progetto v1.0_ per calcolare la percentuale di lavoro preventivato e svolto nell'ottica di PV ed EV è ancora un punto di discussione all'interno del team; infatti, come descritto dal grafico, L'EAC è ancora al di sopra del limite di accettazione superiore nonostante l'andamento decrescente. Questo è in un certo senso in linea con l'utilizzo che il team ha fatto del BAC, utilizzando più ore da Amministratore (tra le più costose, tra l'altro) del previsto, ma è anche un prodotto del modo in cui il team ha scelto di calcolare la percentuale di lavoro menzionata sopra; non essendoci altre alternative valide per eseguire il calcolo, con ogni probabilità il team continuerà ad adottare l'approccio delineato, utilizzando però le ore in modo più consapevole rispetto a quanto già speso per fare in modo che l'EAC continui ad avere un andamento decrescente.

La comunicazione all'interno del team è stata stabile fin dall'inizio del progetto e non ha subito grosse variazioni se non durante il periodo coincidente con la sessione di esami invernale e poco oltre (lo stesso vale per la comunicazione esterna con la Proponente); tuttavia, il team dovrebbe imparare a gestire meglio (e quindi stabilire una procedura per) le situazioni in cui uno o più documenti necessitano di una revisione o di modifiche critiche da effettuare con urgenza (senza dover necessariamente attendere il termine dello #glossary[sprint] corrente) tramite discussioni dedicate su Discord o meeting di emergenza. Tali misure sono state predisposte recentemente visto l'andamento del progetto nel corso della sessione, ma non sempre utilizzate quando necessario.

Complessivamente, il #glossary[way of working] del team è migliorato notevolmente dall'inizio del progetto, in particolare grazie a tutti gli strumenti, le procedure e le automazioni descritte nelle _Norme di Progetto v 1.0_ e alle misure di prevenzione dei rischi descritte nel _Piano di Progetto v1.0_, ma ciò non significa che sia privo di imperfezioni e che non possa essere migliorato ulteriormente in seguito alla revisione #glossary[RTB].