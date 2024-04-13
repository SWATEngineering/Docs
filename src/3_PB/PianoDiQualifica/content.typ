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
Al fine di evitare possibili ambiguità relative al linguaggio utilizzato nei documenti, viene fornito il _Glossario v2.0_, nel quale sono presenti tutte le definizioni di termini aventi un significato specifico che vuole essere disambiguato. Tali termini, sono scritti in _corsivo_ e marcati con una #sub("G") a pedice.
Un'attività che comprende l'inserimento di un termine di glossario può considerarsi conclusa solo nel momento in cui il termine viene scritto e spiegato nel _Glossario_.

== Riferimenti
=== Normativi
- _Norme di Progetto v2.0_;
- Documento e presentazione di capitolato d'appalto C6 - InnovaCity:
  - _ https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C6.pdf _ (05/12/2023)
  - _ https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C6p.pdf _ (20/11/2023)
- Regolamento di progetto:
  - _ https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/PD2.pdf _ (15/03/2024)

=== Informativi
- Slide dell'insegnamento di Ingegneria del Software:
  - Qualità del software:
    - _ https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T7.pdf _ (29/11/2023)
  - Qualità di processo:
    - _ https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T8.pdf _ (05/12/2023)
  - Verifica e Validazione:
    - _ https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T9.pdf _ (18/12/2023)
    - _ https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T10.pdf _ (04/01/2024)
    - _ https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T11.pdf _ (04/01/2024)

#pagebreak()
= Qualità di processo



La qualità di processo si fonda sull'assunto che, al fine di ottenere un prodotto che soddisfi determinati standard di qualità, è necessario che i processi che lo sottendono siano sottoposti a controlli periodici con lo scopo ultimo di ottimizzarli.
Il concetto di qualità di processo viene dunque applicato all'intero spettro di attività, pratiche e metodi utilizzati lungo l'intero ciclo di vita del software.
In sintesi, la qualità di processo mira a rendere la qualità una parte integrante del prodotto, garantendo che sia costruita nel processo stesso e non sia solo un obiettivo secondario.
Di seguito vengono presentate le metriche che il team si impegna a soddisfare nel contesto della qualità di processo.
Come presentato nel documento _Norme di Progetto v2.0_, la sigla MPC sta ad indicare le metriche di processo.

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
Come presentato nel documento _Norme di Progetto v2.0_ la sigla MPD sta ad indicare le metriche di prodotto.


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
            [MPD-FIN], [Structure Fan In], [massimizzare], [massimizzare],
            [MPD-FOUT], [Structure Fan Out], [minimizzare], [minimizzarre],
            [MPD-CCM], [Complessità Ciclomatica per Metodo], [≤ 5], [≤ 4],
      ),
caption: [Tabella metriche per la manutenibilità del prodotto.
])


/*SFIN e SFOUT sono da determinare ancora, ma non ho idea di quali potrebbero essere i valori più adatti e quindi lascio volentieri al prossimo la decisione*/


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
            [MPD-BC], [Branch Coverage], [≥80%], [100%],
            [MPD-SC], [Statement Coverage], [≥80%], [100%],
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
            [MPD-CPUU],[Maximum CPU usage],[\≤ 20%],[\≤ 15%], 
            [MPD-RAMU],[Maximum RAM usage],[\≤ 3 GB],[\≤ 2GB], 
            [MPD-TDE],[Tempo Di Elaborazione],[\≤ 6s], [\≤ 4s],
      ),
caption: [Tabella metriche per l'efficienza del prodotto.])


#pagebreak()



= Strategie di testing

In questa sezione viene esposto il piano di testing che verrà utilizzato per garantire la correttezza finale del prodotto.
Come enunciato nel documento _Norme di Progetto v2.0_, il piano segue il #glossary("modello a V"), il quale associa ad ogni fase di sviluppo una corrispondente tipologia di testing. Tali tipologie sono le seguenti:
- *Test di unità*: si verifica il corretto funzionamento delle unità componenti il #glossary[sistema]. Un'unità rappresenta un elemento indivisibile e indipendente del #glossary[sistema]\;
- *Test di integrazione*: si verifica il corretto funzionamento di più unità che cooperano per svolgere uno specifico compito (tali unità devono certamente aver superato i loro test di unità precedentemente);
- *Test di #glossary[sistema]*: si verifica il corretto funzionamento del #glossary[sistema] nella sua interezza. I requisiti funzionali obbligatori, di vincolo, di qualità e di prestazione, precedentemente concordati con la Proponente mediante stipulazione del contratto, devono essere soddisfatti per intero;
- *Test di accettazione*: si verifica il soddisfacimento della Proponente rispetto al prodotto software. Il loro superamento permette di procedere con il rilascio del prodotto. 


Per le procedure necessarie all'esecuzione di test di unità e di integrazione si rimanda al documento  _Norme di Progetto v2.0_ nella sezione relativa al processo di verifica.


== Test di accettazione
In questa sezione vengono descritti i test di accettazione del prodotto software, eseguiti sia dal gruppo #team che dalla Proponente sotto la supervisione del gruppo.
Si vuole, con tali test, andare a validare il prodotto prima del suo rilascio.

#let test_di_accettazione = (
      ([
          Verificare che l'#glossary("amministratore pubblico") senza autenticazione possa:
            1. Usufruire dell'applicazione senza doversi autenticare.
      ],"S",[
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
            2. Selezionare la #glossary("dashboard") dei dati grezzi;
            3. Visualizzare la relativa #glossary("dashboard")\;
            4. Visualizzare un #glossary("pannello") con una tabella che mostra i dati grezzi, in particolare il nome del #glossary[sensore], la tipologia del #glossary[sensore], il timestamp della rilevazione e il valore della misurazione (se composta da più dati, tutti i valori devono essere elencati nella colonna corrispondente);
            5. Visualizzare un messaggio di avvertenza di dati mancanti, all'interno del #glossary("pannello"), nel caso il #glossary[sistema] non riesca a reperire i dati.
      ],"S",[
            UC0\
            UC1\
            UC1.1\
            UC9
      ]),
      ([
          Verificare che l'#glossary("amministratore pubblico"), una volta entrato nell'applicazione, possa:
            1. Aprire il menu di selezione delle #glossary("dashboard")\;
            2. Selezionare la #glossary("dashboard") per visualizzare i dati ambientali;
            3. Visualizzare la relativa #glossary("dashboard")\;
            4. Visualizzare un #glossary("pannello") contenente un grafico in formato #glossary("serie storica") che mostri i risultati delle rilevazioni delle temperatura, espressa in gradi Celsius (°C), effettuate dai singoli sensori e aggregati tramite media aritmetica per intervalli di 1 minuto e i risultati delle rilevazioni della temperatura effettuate da tutti i sensori e aggregati tramite media aritmetica per intervalli di 5 minuti;
            5. Visualizzare un #glossary("pannello") contenente un grafico in formato #glossary("serie storica") che mostri i risultati delle rilevazioni dell'umidità, espressa in percentuale, effettuate dai singoli sensori e aggregati tramite media aritmetica per intervalli di 1 minuto e i risultati delle rilevazioni dell'umidità effettuate da tutti i sensori e aggregati tramite media aritmetica per intervalli di 5 minuti;
            6. Visualizzare un #glossary("pannello") con una mappa mostrante la direzione del vento, rilevata da ciascun #glossary("sensore"), tramite delle frecce con origine la posizione del #glossary("sensore")\; 
            7. Visualizzare un #glossary("pannello") con una tabella che mostri l'ultima rilevazione della velocità del vento, espressa in chilometri orari (km/h), e la sua direzione, espressa in gradi (con gli 0° a Est e i 180° a Ovest), effettuata da ciascun #glossary("sensore")\; 
            8. Visualizzare un #glossary("pannello") contenente un grafico in formato #glossary("serie storica") che mostri i risultati delle rilevazioni delle quantità di precipitazioni, espressa in millimetri orari (mm/h), effettuate dai singoli sensori e aggregati tramite media aritmetica per intervalli di 1 minuto e i risultati delle rilevazioni delle quantità di precipitazioni effettuate da tutti i sensori e aggregati tramite media aritmetica per intervalli di 5 minuti;
            9. Visualizzare un #glossary("pannello") contenente un indice numerico relativo alle precipitazioni, espresse in millimetri orari (mm/h), indicante la media dell'intensità delle precipitazioni tra tutti i dati raccolti dai sensori nell'intervallo di tempo impostato all'interno della #glossary[dashboard]; 
            10. Visualizzare un #glossary("pannello") contenente un grafico in formato #glossary("serie storica") che mostri i risultati delle rilevazioni della concentrazione di inquinanti dell'aria (#glossary("PM10")), espressa in $#sym.mu g\/m^3$,effettuate dai singoli sensori e aggregati tramite media aritmetica per intervalli di 1 minuto e i risultati delle rilevazioni della concentrazioni di inquinanti effettuate da tutti i sensori e aggregati tramite media aritmetica per intervalli di 5 minuti;
            11. Visualizzare un #glossary("pannello") contenente la media della concentrazione di inquinanti dell'aria (#glossary("PM10")), espressa in $#sym.mu g\/m^3$, che consideri le rilevazioni di tutti i sensori attivi nell'ultimo minuto, e sia presentata in formato numerico;
            12. Visualizzare un #glossary("pannello") contenente un grafico in formato #glossary("serie storica") che mostri i risultati delle rilevazioni della percentuale di riempimento dei bacini idrici, effettuate dai singoli sensori e aggregate tramite media aritmetica per intervalli di 1 minuto e i risultati delle rilevazioni della percentuale di riempimento effettuate da tutti i sensori e aggregati tramite media aritmetica per intervalli di 5 minuti;
            13. Visualizzare un #glossary("pannello") contenente la media della temperatura, espressa in gradi Celsius (°C), considerando tutti i sensori attivi nell'intervallo di tempo impostato all'interno della #glossary[dashboard], e presentata in formato numerico;
            14. Visualizzare un #glossary("pannello") contenente il massimo coefficiente di inquinamento dell'aria (#glossary("PM10")) registrato tra tutti i sensori negli ultimi 5 minuti, espresso in $#sym.mu g\/m^3$, presentato in formato numerico;
            15. Visualizzare un #glossary("pannello") con una mappa che indichi, mediante icone collocate presso le coordinate di ciascun #glossary[sensore], la posizione dei sensori;
            16. Visualizzare un messaggio di avvertenza di dati mancanti, nei vari #glossary("pannelli"), nel caso di assenza di dati da mostrare.
      ],"S",[
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
            UC2.13\
            UC9
      ]),
      ([
          Verificare che l'#glossary("amministratore pubblico"), una volta entrato nell'applicazione, possa:
            1. Aprire il menu di selezione delle #glossary("dashboard")\;
            2. Selezionare la #glossary("dashboard") per visualizzare i dati urbanistici;
            3. Visualizzare la relativa #glossary("dashboard")\;
            4. Visualizzare un #glossary("pannello") con una mappa che indichi, mediante indicatori numerici, collocati presso le coordinate di ciascun #glossary("sensore"), la quantità di posti liberi nel parcheggio corrispondente;
            5. Visualizzare un #glossary("pannello") contenente una mappa che indichi, mediante indicatori booleani collocati presso le coordinate di ciascun #glossary("sensore"), la disponibilità della colonna corrispondente; 
            6. Visualizzare un #glossary("pannello") che esprima, tramite una tabella indicizzata tramite il nome del #glossary("sensore"), l'erogazione energetica, espressa in watt per ora (kWh);
            7. Visualizzare un #glossary("pannello") contenente una mappa che indichi, tramite gli stati "LOW", "MEDIUM", "HIGH" e "BLOCKED", lo stato di congestione delle strade; 
            8. Visualizzare un #glossary("pannello") contenente una mappa che indichi, mediante degli indicatori numerici che indicano la percentuale di batteria, la posizione in tempo reale delle biciclette elettriche; 
            9. Visualizzare un #glossary("pannello") contenente una mappa indicante lo stato di riempimento delle zone ecologiche, espresse in valori percentuali, posizionate nelle coordinate delle zone; 
            10. Visualizzare un messaggio di avvertenza di dati mancanti, nei vari #glossary("pannelli"), nel caso di assenza di dati da mostrare.
      ],"S",[
            UC0\
            UC3\
            UC3.1\
            UC3.2\
            UC3.3\
            UC3.4\
            UC3.5\
            UC3.6\
            UC3.7\
            UC9
      ]),
      ([
          Verificare che l'#glossary("amministratore pubblico"), una volta entrato nell'applicazione, possa:
            1. Aprire il menu di selezione delle #glossary("dashboard")\;
            2. Selezionare la #glossary("dashboard") per visualizzare il superamento delle soglie; 
            3. Visualizzare la relativa #glossary("dashboard")\;
            4. Visualizzare un #glossary("pannello") contenente una tabella, la quale mostra tutte le anomalie rilevate, mostrando il valore dell'anomalia, il #glossary("sensore") che l'ha rilevata e il relativo #glossary("timestamp")\; 
            5. Visualizzare un #glossary("pannello") contenente una tabella, la quale mostra tutti i dati superanti la soglia dei 40° Celsius (40°C) di temperatura, mostrando il valore superante la soglia, il #glossary("sensore") che ha rilevato tale valore e il relativo #glossary("timestamp")\;
            6. Visualizzare un #glossary("pannello") contenente una tabella, la quale mostra tutti i dati superanti la soglia dei 50 millimetri di pioggia all'ora (50 mm/h), mostrando il valore superante la soglia, il #glossary("sensore") che ha rilevato tale valore e il relativo #glossary("timestamp")\;
            7. Visualizzare un #glossary("pannello") contenente una tabella, la quale mostra tutti i dati superanti la soglia di 80#[#sym.mu]g su metro cubo ($80#sym.mu g\/m^3$) di livello di polveri sottili nell'aria (#glossary[PM10]), mostrando il valore superante la soglia, il #glossary("sensore") che ha rilevato tale valore e il relativo #glossary("timestamp")\;
            8. Visualizzare un #glossary("pannello") contenente una tabella, la quale mostra tutti i dati superanti la soglia del 70% di capienza dei bacini idrici, mostrando il valore superante la soglia, il #glossary("sensore") che ha rilevato tale valore e il relativo #glossary("timestamp")\;
            9. Visualizzare un #glossary("pannello") contenente una tabella, la quale mostra tutti i dati superanti la soglia dell'80% di capienza delle zone ecologiche, mostrando il valore superante la soglia, il #glossary("sensore") che ha rilevato tale valore e il relativo #glossary("timestamp")\;
            10. Visualizzare un messaggio di avvertenza di dati mancanti, nei #glossary("pannelli"), nel caso di assenza di dati da mostrare.
      ],"S",[
            UC0\
            UC4\
            UC4.1\
            UC4.2\
            UC4.3\
            UC4.4\
            UC4.5\
            UC4.6\
            UC4.7\
            UC9
      ]),
      ([
          Verificare che l'#glossary("amministratore pubblico"), una volta avviata l'applicazione, possa:
            1. Visualizzare una notifica che denoti il superamento dei 40° Celsius (°C); 
            2. Visualizzare una notifica che denoti il superamento dei 50 millimetri di pioggia all'ora (50 mm/h); 
            3. Visualizzare una notifica relativa all'inquinamento dell'aria (#glossary("PM10")) che denoti il superamento di 80#[#sym.mu]g su metro cubo ($ 80#sym.mu g\/m^3$); 
            4. Visualizzare una notifica che denoti il superamento del 70% della capienza di un bacino; 
            5. Visualizzare una notifica che denoti il superamento dell'80% della capienza di una zona ecologica.
      ],"S",[
            UC5\
            UC5.1\
            UC5.2\
            UC5.3\
            UC5.4\
            UC5.5\
            UC5.6
      ]),
      ([
          Verificare che l'#glossary("amministratore pubblico"), una volta entrato nell'applicazione, possa:
            1. Scegliere una #glossary("dashboard") da visualizzare;
            2. Applicare dei filtri, per visualizzare solo i dati provenienti dal sottoinsieme di sensori selezionato, nel caso di #glossary("pannelli") di tipo #glossary("serie storica")\;
            3. Applicare dei filtri, per visualizzare solo i dati provenienti dai sensori delle tipologie selezionate, nel caso di #glossary("pannelli") contenenti tabelle, le quali comprendono più tipologie di sensori al loro interno;
            4. Applicare dei filtri, per selezionare solo particolari sensori, mediante il nome, nel caso di #glossary("pannelli") contenenti tabelle;
            5. Applicare dei filtri, per selezionare solo i dati relativi ad un definito intervallo di tempo, all'interno di un'intera #glossary("dashboard")\;
      ],"S",[
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
      ],"S",[
            UC7
      ]),
      ([
          Verificare che l'#glossary("amministratore pubblico"), una volta entrato nell'applicazione, possa:
            1. Scegliere una #glossary("dashboard") di cui modificare il layout;
            2. Modificare il layout dei #glossary("pannelli") in termini di posizione di tali #glossary("pannelli") e della loro dimensione.
      ],"N/I",[
            UC8\ 
            UC8.1\ 
            UC8.2
      ]),
      ([
          Verificare che un #glossary("sensore"), una volta connesso al sistema, possa:
            1. Inserire il risultato della rilevazione della temperatura, espressa in gradi Celsius (°C), con annesso il #glossary("timestamp") di rilevazione e le proprie coordinate geografiche.
      ],"S",[
            U10
      ]),
      ([
          Verificare che un #glossary("sensore"), una volta connesso al sistema, possa:
            1. Inserire il risultato della rilevazione dell'umidità, espressa in percentuale, con annesso il #glossary("timestamp") di rilevazione e le proprie coordinate geografiche.
      ],"S",[
            U11
      ]),
      ([
          Verificare che un #glossary("sensore"), una volta connesso al sistema, possa:
            1. Inserire il risultato della rilevazione della direzione e della velocità del vento, espresse rispettivamente in gradi (con gli 0° a Est e i 180° a Ovest) e in chilometri orari (km/h), con annesso il #glossary("timestamp") di rilevazione e le proprie coordinate geografiche.
      ],"S",[
            U12
      ]),
      ([
          Verificare che un #glossary("sensore"), una volta connesso al sistema, possa:
            1. Inserire il risultato della rilevazione della quantità di precipitazioni, espressa in millimetri all'ora (mm/h), con annesso il #glossary("timestamp") di rilevazione e le proprie coordinate geografiche.
      ],"S",[
            U13
      ]),
      ([
          Verificare che un #glossary("sensore"), una volta connesso al sistema, possa:
             1. Inserire il risultato della rilevazione dell'inquinamento dell'aria (#glossary("PM10")), espresso in $#sym.mu g\/m^3$, con annesso il #glossary("timestamp") di rilevazione e le proprie coordinate geografiche.
      ],"S",[
            U14
      ]),
      ([
          Verificare che un #glossary("sensore"), una volta connesso al sistema, possa:
            1. Inserire il risultato della rilevazione del livello di riempimento del bacino idrico presso cui è installato, espressa in percentuale, con annesso il #glossary("timestamp") di rilevazione e le proprie coordinate geografiche.
      ],"S",[
            U15
      ]),
      ([
          Verificare che un #glossary("sensore"), una volta connesso al sistema, possa:
            1. Inserire il risultato della rilevazione del numero di auto presenti all'interno del parcheggio controllato e del numero di posti auto totali a disposizione, con annesso il #glossary("timestamp") di rilevazione e le proprie coordinate geografiche.
      ],"S",[
            U16
      ]),
      ([
          Verificare che un #glossary("sensore"), una volta connesso al sistema, possa:
            1. Inserire il risultato della rilevazione della disponibilità della colonna di ricarica e della quantità di energia erogata, espressa in chilowatt all'ora (kWh), con annesso il #glossary("timestamp") di rilevazione e le proprie coordinate geografiche.
      ],"S",[
            U17
      ]),
      ([
          Verificare che un #glossary("sensore"), una volta connesso al sistema, possa:
            1. Inserire il risultato della rilevazione della percentuale di batteria della bicicletta a cui è associato e le relative coordinate geografiche, con annesso il #glossary("timestamp") di rilevazione.
      ],"S",[
            U18
      ]),
      ([
          Verificare che un #glossary("sensore"), una volta connesso al sistema, possa:
            1. Inserire il risultato della rilevazione del livello di riempimento della zona ecologica presso cui è installato, espressa in percentuale, con annesso il #glossary("timestamp") di rilevazione e le proprie coordinate geografiche.
      ],"S",[
            U19
      ]),
      ([
          Verificare che un #glossary("sensore"), una volta connesso al sistema, possa:
            1. Inserire il risultato della rilevazione del numero di auto circolanti nella strada controllata, dello stato della congestione stradale, espresso nei seguenti stati (ordinati per ordine di congestione crescente) "LOW", "MEDIUM", "HIGH", "BLOCKED" e del tempo medio necessario per percorrere la strada, con annesso il #glossary("timestamp") di rilevazione e le proprie coordinate geografiche.
      ],"S",[
            U20
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
      ],"S","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un menù di selezione delle #glossary[dashboard], che permetta di selezionare una #glossary("dashboard") Dati grezzi, Ambientale, Urbanistica e Superamento soglie.
      ],"S","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare una #glossary("dashboard") dedicata a fornire una panoramica generale dei dati grezzi.
      ],"S","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare, in forma tabellare, i dati grezzi inviati da tutti i sensori con il nome del #glossary[sensore], la tipologia del #glossary[sensore], il timestamp della rilevazione e il valore della misurazione (nel caso in cui la misurazione sia composta da più dati, tutti i valori devono essere elencati ed etichettati opportunamente all'interno della stessa entrata nella colonna corrispondente), all'interno della #glossary("dashboard") relativa ai dati grezzi.
      ],"S","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa  monitorare i dati provenienti dai sensori relativi ai dati ambientali in una #glossary("dashboard") apposita.
      ],"S","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente un grafico in formato #glossary("time series") rappresentante la media aritmetica della temperatura, espressa in gradi Celsius (°C), per ciascun #glossary("sensore"), che aggreghi i dati per intervalli di 1 minuto, nella #glossary("dashboard") relativa ai dati ambientali. 
      ],"S","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente un grafico in formato #glossary("time series") rappresentante la media aritmetica della temperatura, espressa in gradi Celsius (°C), per tutti i sensori, che aggreghi i dati per intervalli di 5 minuti, nella #glossary("dashboard") relativa ai dati ambientali. 
      ],"S","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente un grafico in formato #glossary("time series") rappresentante la media aritmetica dell'umidità, espressa in percentuale, per ciascun #glossary("sensore"), che aggreghi i dati per intervalli di 1 minuto, nella #glossary("dashboard") relativa ai dati ambientali. 
      ],"S","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente un grafico in formato #glossary("time series") rappresentante la media aritmetica dell'umidità, espressa in percentuale, per tutti i sensori, che aggreghi i dati per intervalli di 5 minuti, nella #glossary("dashboard") relativa ai dati ambientali. 
      ],"S","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente una mappa che evidenzi la direzione del vento, mediante frecce aventi origine nelle coordinate del #glossary("sensore"), nella #glossary("dashboard") relativa ai dati ambientali.
      ],"S","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente una tabella la quale riporta l'ultima velocità del vento, espressa in chilometri all'ora (km/h), per ciascun #glossary("sensore"), nella #glossary("dashboard") relativa ai dati ambientali.
      ],"S","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente un grafico in formato #glossary("time series") rappresentante la media aritmetica dell'intensità delle precipitazioni, espresse in millimetri all'ora (mm/h), per ciascun #glossary("sensore"), che aggreghi i dati per intervalli di 1 minuto, nella #glossary("dashboard") relativa ai dati ambientali. 
      ],"S","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente un grafico in formato #glossary("time series") rappresentante la media aritmetica dell'intensità delle precipitazioni, espresse in millimetri all'ora (mm/h), per tutti i sensori, che aggreghi i dati per intervalli di 5 minuti, nella #glossary("dashboard") relativa ai dati ambientali. 
      ],"S","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente un indice numerico, che esprime l'intensità media delle precipitazioni, espressa in millimetri all'ora (mm/h), nell'intervallo di tempo impostato all'interno della #glossary[dashboard], facendo la media dei dati raccolti tra tutti i sensori, nella #glossary("dashboard") relativa ai dati ambientali.
      ],"S","RDF"),

      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente un grafico in formato #glossary("time series") rappresentante la media aritmetica del livello di polveri sottili nell'aria (#glossary("PM10")), espressa in $#sym.mu g\/m^3$, per ciascun #glossary("sensore"), aggregando i dati per intervalli di 1 minuto, nella #glossary("dashboard") relativa ai dati ambientali.
      ],"S","ROF"),

      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente un grafico in formato #glossary("time series") rappresentante la media aritmetica del livello di polveri sottili nell'aria (#glossary("PM10")), espressa in $#sym.mu g\/m^3$, per tutti i sensori, aggregando i dati per intervalli di 5 minuti, nella #glossary("dashboard") relativa ai dati ambientali.
      ],"S","ROF"),

      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente un indice numerico, che esprime l'inquinamento dell'aria medio (#glossary("PM10")), espresso in $#sym.mu g\/m^3$, nell'ultimo minuto, facendo la media dei dati raccolti tra tutti i sensori, nella #glossary("dashboard") relativa ai dati ambientali.
      ],"S","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente un grafico in formato #glossary("time series") rappresentante la percentuale di riempimento dei bacini idrici, per ciascun #glossary("sensore"), aggregando i dati per intervalli di 1 minuto, nella #glossary("dashboard") relativa ai dati ambientali.
      ],"S","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente un grafico in formato #glossary("time series") rappresentante la percentuale di riempimento dei bacini idrici, per tutti i sensori, aggregando i dati per intervalli di 5 minuti, nella #glossary("dashboard") relativa ai dati ambientali.
      ],"S","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente un indice numerico, che esprime la temperatura media, espressa in gradi Celsius (°C), nell'intervallo di tempo impostato all'interno della #glossary[dashboard], facendo la media dei dati raccolti tra tutti i sensori, nella #glossary("dashboard") relativa ai dati ambientali.
      ],"S","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente un indice numerico, che esprime l'inquinamento dell'aria massimo (#glossary("PM10")), espresso in $#sym.mu g\/m^3$, negli ultimi 5 minuti, tra i dati registrati da tutti i sensori, nella #glossary("dashboard") relativa ai dati ambientali.
      ],"S","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente una mappa che mostri le posizioni dei sensori che monitorano i dati ambientali, mediante icone colorate in base al tipo di #glossary[sensore], nella #glossary("dashboard") relativa ai dati ambientali.
      ],"S","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa monitorare i dati provenienti dai sensori relativi ai dati urbanistici in una #glossary("dashboard") apposita.
      ],"S","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente una mappa che evidenzi il numero di posti liberi nei vari parcheggi, mediante indicatori numerici posti nelle coordinate del #glossary("sensore"), nella #glossary("dashboard") relativa ai dati urbanistici.
      ],"S","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente una mappa che evidenzi la posizione delle colonne di ricarica per auto, mediante icone poste nelle coordinate dei sensori che ne indicano la disponibilità, nella #glossary("dashboard") relativa ai dati urbanistici.
      ],"S","ROF"),



      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente una tabella che riporti l'erogazione delle colonne di ricarica, espressa in Watt all'ora, nella #glossary("dashboard") relativa ai dati urbanistici.
      ],"S","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente una mappa che evidenzi lo stato di congestione delle strade, mediante gli stati "LOW", "MEDIUM", "HIGH", "BLOCKED", presso le coordinate dei sensori che hanno effettuato la rilevazione, nella #glossary("dashboard") relativa ai dati urbanistici.
      ],"S","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente una mappa che mostri, in tempo reale, la posizione delle biciclette elettriche, mediante degli indicatori numerici, indicanti la percentuale della batteria, nella #glossary("dashboard") relativa ai dati urbanistici.
      ],"S","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente una mappa che mostri la percentuale di riempimento delle zone ecologiche, mediante degli indicatori percentuali, posizionati nelle coordinate della zona, nella #glossary("dashboard") relativa ai dati urbanistici.
      ],"S","ROF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare una #glossary("dashboard") dedicata a monitorare i dati superanti delle soglie.
      ],"S","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente una tabella che mostri i #glossary("dati anomali"), il #glossary("sensore") che li ha rilevati e il #glossary("timestamp") del rilevamento, nella #glossary("dashboard") relativa al superamento delle soglie.
      ],"S","RPF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente una tabella che mostri i dati relativi alla temperatura i cui valori superano la soglia dei 40° Celsius (40°C), il #glossary("sensore") che li ha rilevati e il #glossary("timestamp") del rilevamento, nella #glossary("dashboard") relativa ai dati superanti le soglie.
      ],"S","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente una tabella che mostri i dati relativi alle precipitazioni i cui valori superano la soglia dei 50 millimetri di pioggia all'ora (50 mm/h), il #glossary("sensore") che li ha rilevati e il #glossary("timestamp") del rilevamento, nella #glossary("dashboard") relativa ai dati superanti le soglie.
      ],"S","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente una tabella che mostri i dati relativi al livello di polveri sottili nell'aria (#glossary[PM10]) i cui valori superano la soglia di 80#[#sym.mu]g su metro cubo ($80#sym.mu g\/m^3$), il #glossary("sensore") che li ha rilevati e il #glossary("timestamp") del rilevamento, nella #glossary("dashboard") relativa ai dati superanti le soglie.
      ],"S","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente una tabella che mostri i dati relativi ai bacini idrici i cui valori superano la soglia del 70% di capienza, il #glossary("sensore") che li ha rilevati e il #glossary("timestamp") del rilevamento, nella #glossary("dashboard") relativa ai dati superanti le soglie.
      ],"S","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare un #glossary("pannello") contenente una tabella che mostri i dati relativi alle zone ecologiche i cui valori superano la soglia dell'80% di capienza, il #glossary("sensore") che li ha rilevati e il #glossary("timestamp") del rilevamento, nella #glossary("dashboard") relativa ai dati superanti le soglie.
      ],"S","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare delle notifiche che denotano il superamento di una soglia impostata.
      ],"S","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare delle notifiche riguardo a rilevazioni di tipo temperatura, superanti una soglia di 40° Celsius (°C).
      ],"S","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare delle notifiche riguardo rilevazioni di tipo precipitazioni, superanti una soglia di 50 millimetri all'ora (50 mm/h).
      ],"S","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare delle notifiche riguardo rilevazioni dell' inquinamento dell'aria (#glossary("PM10")), superanti una soglia di 80 microgrammi su metro cubo ($80#sym.mu g\/m^3$).
      ],"S","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare delle notifiche riguardo rilevazioni del livello di riempimento dei bacini idrici, superanti una soglia corrispondente al 70% della capienza del bacino idrico corrispondente.
      ],"S","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa visualizzare delle notifiche riguardo rilevazioni del livello di riempimento delle zone ecologiche, superanti una soglia corrispondente all'80% della capienza della zona corrispondente.
      ],"S","RDF"),
      ([
            Verificare che l'#glossary("amministratore pubblico") possa filtrare i dati, visualizzati all'interno di un grafico di tipo #glossary("time series"), in base ad un sottoinsieme di sensori da lui selezionato.
      ],"S","ROF"),
      ([
            Verificare che che l'#glossary("amministratore pubblico") possa filtrare i dati, visualizzati all'interno di una tabella, in base alla tipologia di #glossary("sensore").
      ],"S","ROF"),
      ([
            Verificare  che l'#glossary("amministratore pubblico") possa filtrare i dati, visualizzati all'interno di una tabella, in base ad un sotto-insieme di sensori, selezionando i nomi dei sensori di interesse.
      ],"S","ROF"),
      ([
            Verificare  che l'#glossary("amministratore pubblico") possa filtrare i dati in base ad un intervallo temporale. Di conseguenza la  #glossary("dashboard") interessata deve, nella sua totalità, mostrare solamente i dati aventi un #glossary("timestamp") in tale intervallo.
      ],"S","ROF"),
      ([
            Verificare  che l'#glossary("amministratore pubblico"), nei #glossary("pannelli") tabellari, possa ordinare i dati in base a tutti i campi presenti, sia in ordine crescente che decrescente. 
      ],"S","RDF"),
      ([
            Verificare  che l'#glossary("amministratore pubblico"), riceva un messaggio di errore qualora, il sistema di visualizzazione non riesca a reperire i dati necessari per un determinato #glossary("pannello").
      ],"S","ROF"),
      /*da qui iniziano i requisiti relativi ai sensori*/
      ([
            Verificare che un #glossary("sensore") possa inserire nel sistema le rilevazioni della temperatura, espresse in gradi Celsius (°C), effettuate dal #glossary("sensore"), con annesso coordinate e #glossary("timestamp") della rilevazione.
      ],"S","ROF"),
      ([
            Verificare che un #glossary("sensore") possa inserire nel sistema le rilevazioni all'umidità, espresse in percentuale, effettuate dal #glossary("sensore"), con annesso coordinate e #glossary("timestamp") della rilevazione.
      ],"S","ROF"),
      ([
            Verificare che un #glossary("sensore") possa inserire nel sistema le rilevazioni della velocità e della direzione del vento, espresse rispettivamente in chilometri all'ora (km/h) e in gradi (con gli 0° a Est e i 180° a Ovest), effettuate dal #glossary("sensore"), con annesso coordinate e #glossary("timestamp") della rilevazione. 
      ],"S","ROF"),
      ([
            Verificare che un #glossary("sensore") possa inserire nel sistema le rilevazioni della quantità di precipitazioni, espresse in millimetri orari (mm/h), con annesso coordinate e #glossary("timestamp") della rilevazione.
      ],"S","ROF"),
      ([
            Verificare che un #glossary("sensore") possa inserire nel sistema le rilevazioni dell'inquinamento (#glossary("PM10")), espresse in microgrammi al metro cubo ($#sym.mu g\/m^3$), effettuate dal #glossary("sensore"), con annesso coordinate e #glossary("timestamp") della rilevazione.
      ],"S","ROF"),
      ([
            Verificare che un #glossary("sensore") possa inserire nel sistema le rilevazioni del livello di riempimento del bacino idrico presso cui è installato, espresse in percentuale, effettuate dal #glossary("sensore"), con annesso coordinate e #glossary("timestamp") della rilevazione.
      ],"S","ROF"),
      ([
            Verificare che un #glossary("sensore") possa inserire nel sistema le rilevazioni del numero di auto presenti all'interno del parcheggio controllato e del numero di posti auto totali a disposizione, effettuate dal #glossary("sensore"), con annesso coordinate e #glossary("timestamp") della rilevazione. 
      ],"S","ROF"),
      ([
            Verificare che un #glossary("sensore") possa inserire nel sistema le rilevazioni della disponibilità della colonna di ricarica controllata e della potenza di erogazione, espressa in chilowatt all'ora (kWh), effettuate dal #glossary("sensore"), con annesso coordinate e #glossary("timestamp") della rilevazione. 
      ],"S","ROF"),
      ([
            Verificare che un #glossary("sensore") possa inserire nel sistema le rilevazioni delle coordinate geografiche e della percentuale di batteria della bicicletta elettrica controllata, effettuate dal #glossary("sensore"), con annesso il #glossary("timestamp") della rilevazione.
      ],"S","ROF"),
      ([
            Verificare che un #glossary("sensore") possa inserire nel sistema le rilevazioni del livello di riempimento della zona ecologica presso cui è installato, espresse in percentuale, effettuate dal #glossary("sensore"), con annesso coordinate e #glossary("timestamp") della rilevazione.
      ],"S","ROF"),
      ([
            Verificare che un #glossary("sensore") possa inserire nel sistema le rilevazioni del numero di auto circolanti nella strada controllata, dello stato della congestione stradale nella strada, espresso in stati (in ordine di crescente congestione sono: "LOW", "MEDIUM", "HIGH", "BLOCKED") del tempo medio necessario per percorrere la strada, effettuate dal #glossary("sensore"), con annesso coordinate e #glossary("timestamp") della misurazione.
      ],"S","ROF"),
      ([
            Verificare che sia stato implementato almeno un simulatore almeno una tipologia di #glossary("sensore").
      ],"S","ROF"),
      ([
            Verificare che i dati prodotti dalle simulazioni siano realistici.
      ],"S","ROF"),
      ([
            Verificare che il sistema possa rilevare eventuali relazioni tra sorgenti di dati diverse.
      ],"N/I","RPF"), 
      ([
            Verificare che il sistema possa effettuare previsioni di eventi futuri, sulla base di dati storici e attuali.
      ],"N/I","RPF"), 
      


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

== Test di integrazione  
In questa sezione vengono descritti i test di integrazione del prodotto software.
#let test_di_integrazione = (

      ([
            Verificare che i dati generati dal simulatore di inquinamento atmosferico siano correttamente memorizzati nel database.
      ],"S",[]),
      ([
            Verificare che i dati generati dal simulatore di inquinamento atmosferico siano correttamente aggregati e memorizzati nel database.
      ],"S",[]),
      ([
            Verificare se i dati della media mobile generati dal simulatore di inquinamento atmosferico siano correttamente inseriti nel database.
      ],"S",[

      ]),
      ([
            Verificare che i dati generati dal simulatore delle colonne di ricarica siano correttamente memorizzati nel database.
      ],"S",[]),

      ([
            Verificare che i dati generati dal simulatore delle biciclette elettriche siano correttamente memorizzati nel database.
      ],"S",[]),
      ([
            Verificare che i dati generati dal simulatore di riempimento delle isole ecologiche siano correttamente memorizzati nel database.
      ],"S",[]),
      ([
            Verificare che i dati generati dal simulatore di umidità siano correttamente memorizzati nel database.
      ],"S",[]),
      ([
            Verificare che i dati generati dal simulatore di umidità siano correttamente aggregati e memorizzati nel database.
      ],"S",[]),
      ([
            Verificare se i dati della media mobile generati dal simulatore di umidità siano correttamente inseriti nel database.
      ],"S",[

      ]),
      ([
            Verificare che i dati generati dal simulatore dei parcheggi siano correttamente memorizzati nel database.
      ],"S",[]),
      ([
            Verificare che i dati generati dal simulatore di precipitazioni siano correttamente memorizzati nel database.
      ],"S",[]),
      ([
            Verificare che i dati generati dal simulatore di precipitazioni siano correttamente aggregati e memorizzati nel database.
      ],"S",[]),
      ([
            Verificare se i dati della media mobile generati dal simulatore di precipitazioni siano correttamente inseriti nel database.
      ],"S",[

      ]),
      
      ([
            Verificare che i dati generati dal simulatore del livello di riempimento dei bacini idrici siano correttamente memorizzati nel database.
      ],"S",[]),
      ([
            Verificare che i dati generati dal simulatore del livello di riempimento dei bacini idrici siano correttamente aggregati e memorizzati nel database.
      ],"S",[]),
      ([
            Verificare se i dati della media mobile generati dal simulatore del livello di riempimento dei bacini idrici siano correttamente inseriti nel database.
      ],"S",[

      ]),
      ([
            Verificare che i dati generati dal simulatore di temperatura siano correttamente memorizzati nel database.
      ],"S",[]),
      ([
            Verificare che i dati generati dal simulatore di temperatura siano correttamente aggregati e memorizzati nel database.
      ],"S",[]),
      ([
            Verificare se i dati della media mobile generati dal simulatore di temperatura siano correttamente inseriti nel database.
      ],"S",[

      ]),
      ([
            Verificare che i dati generati dal simulatore del traffico siano correttamente memorizzati nel database.
      ],"S",[]),
      ([
            Verificare che i dati generati dal simulatore del vento siano correttamente memorizzati nel database.
      ],"S",[])
      
      



).enumerate(start:1).map(test => ("TI"+ str(test.at(0)),test.at(1).at(0),test.at(1).at(1),test.at(1).at(2)));

#show figure: set block(breakable: true)
#figure(
table(
      columns: (2fr,7fr,1fr),
      align: (center,left,center),
      fill:(_,row) =>if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Codice test*],[*Descrizione*],[*Stato*],
      ..test_di_integrazione.map(item => (item.at(0),item.at(1),item.at(2))).flatten().map(item => [#item])
),caption: "Test di integrazione.")

== Test di unità 

In questa sezione vengono descritti i test di unità del prodotto software.

#let test_di_unità =(
      ([
            Verificare che il metodo `produce()` della classe `AdapterProducer` si comporti come atteso sia in situazioni in cui il producer di #glossary[Kafka] funziona senza problemi, sia in caso di errori.
      ], "S", [

      ]),
      ([
            Verificare che la classe `KafkaSimulatorExecutorFactory` sia in grado di creare correttamente un'istanza di `SimulatorExecutor` utilizzando una configurazione data.
      ],"S",[]),
      ([
       Verificare che il metodo `write()` della classe `KafkaWriter` chiami correttamente il metodo `produce()` del suo oggetto `TargetProducer` con il messaggio appropriato e la funzione di conferma acked.     
      ], "S",[

      ]),
      ([
            Verificare che il metodo `run_all()` della classe `SimulatorExecutor` avvii correttamente tutti i simulatori associati ad esso.
      ],"S",[

      ]),
      ([
            Verificare che il metodo `stop_all()` della classe `SimulatorExecutor` fermi correttamente tutti i simulatori associati ad esso.
      ],"S",[

      ]),
      ([
            Verificare che il metodo `run()` della classe `SimulatorThread` chiami correttamente il metodo `simulate()` del simulatore di sensore.
      ],"S",[

      ]),
      ([
           Verificare che il metodo `run()` della classe `SimulatorThread` chiami correttamente il metodo `write()` del writer durante l'esecuzione del thread.
      ],"S",[

      ]),
      ([
            Verificare che il metodo `write()` della classe `StdoutWriter` scriva correttamente un messaggio sullo standard output.
      ],"S",[

      ]),
      ([
            Verificare che la classe `StdoutSimulatorExecutorFactory` sia in grado di creare correttamente un'istanza di `SimulatorExecutor`.
      ],"S",[

      ]),
      ([
            Verificare il comportamento della funzione `acked()` del modulo `utility_functions`, verificando che stampi correttamente i messaggi di errore  sullo standard output.
      ],"S",[

      ]),
      ([
            Verificare che il simulatore delle colonne di ricarica fornisca i dati attesi nel formato prestabilito.
      ],"S",[

      ]),
      ([
            Verificare che i dati sulla potenza erogata dalle colonne di ricarica simulate rimangano all'interno di un intervallo specifico (0-100).
      ],"S",[

      ]),
      ([
            Verificare la correttezza del recupero delle coordinate della destinazione del simulatore di biciclette elettriche.
      ],"S",[

      ]),
      ([
            Verificare la correttezza del recupero delle coordinate del percorso delle biciclette elettriche simulate.
      ],"S",[

      ]),
      ([
            Verificare che il simulatore delle biciclette elettriche fornisca i dati attesi nel formato prestabilito.
      ],"S",[

      ]),
      ([
            Verificare che il livello di batteria del simulatore delle biciclette elettriche rimanga all'interno di un intervallo specifico (0-100).
      ],"S",[

      ]),
      ([
            Verificare che il simulatore delle zone ecologiche fornisca i dati attesi nel formato prestabilito.
      ],"S",[

      ]),
      ([
            Verificare che il livello di riempimento del simulatore delle zone ecologiche rimanga all'interno di un intervallo specifico (0-100).
      ],"S",[

      ]),
      ([
            Verificare che il simulatore di umidità fornisca i dati attesi nel formato prestabilito.
      ],"S",[

      ]),
      ([
            Verificare che la percentuale generata dal simulatore di umidità rimanga all'interno di un intervallo specifico (5-100).
      ],"S",[

      ]),
      ([
            Verificare che il simulatore delle precipitazioni fornisca i dati attesi nel formato prestabilito.
      ],"S",[

      ]),
      ([
            Verificare che l'intensità di pioggia generata dal simulatore di precipitazioni rimanga all'interno di un intervallo specifico (0-100).
      ],"S",[

      ]),
      ([
           Verificare che il simulatore dei bacini idrici fornisca i dati attesi nel formato prestabilito.
      ],"S",[

      ]),
      ([
            Verificare che la percentuale generata dal simulatore dei bacini idrici rimanga all'interno di un intervallo specifico (0-100).
      ],"S",[

      ]),
      ([
            Verificare che il simulatore della temperatura fornisca i dati attesi nel formato prestabilito.
      ],"S",[

      ]),
      ([
            Verificare che il valore generato dal simulatore della temperatura rimanga all'interno di un intervallo specifico (3-19).
      ],"S",[

      ]),
      ([
            Verificare che il simulatore del vento fornisca i dati attesi nel formato prestabilito.
      ],"S",[

      ]),
      ([
            Verificare che il valore generato dal simulatore del vento rimanga all'interno di un intervallo specifico (1-9).
      ],"S",[

      ]),
      ([
            Verificare che il simulatore dell'inquinamento dell'aria fornisca i dati attesi nel formato prestabilito.

      ],"S",[]),
      ([
            Verificare che il valore generato dal simulatore dell'inquinamento dell'aria rimanga all'interno di un intervallo specifico (0-100).
      ],"S",[

      ]),
      ([
            Verificare che il simulatore della congestione stradale fornisca i dati attesi nel formato prestabilito.
      ],"S",[

      ]),
      ([
            Verificare che i livelli di traffico generati siano tra quelli previsti (LOW, MEDIUM, HIGH, BLOCKED).
      ],"S",[

      ]),
      ([
            Verificare che il simulatore dei parcheggi fornisca i dati attesi nel formato prestabilito.
      ],"S",[

      ])
      
      
      
).enumerate(start:1).map(test => ("TU"+ str(test.at(0)),test.at(1).at(0),test.at(1).at(1),test.at(1).at(2)));

#show figure: set block(breakable: true)
#figure(
table(
      columns: (2fr,7fr,1fr),
      align: (center,left,center),
      fill:(_,row) =>if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Codice test*],[*Descrizione*],[*Stato*],
      ..test_di_unità.map(item => (item.at(0),item.at(1),item.at(2))).flatten().map(item => [#item])
),caption: "Test di unità.")



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
      [Numerazione errata dei casi d'uso],[La numerazione dei casi d'uso deve seguire la crescita dei numeri interi naturali. Se si tratta di un sotto-caso d'uso, il sotto-caso deve ereditare, come prefisso del proprio codice, il codice del caso d'uso a cui appartiene, e ne aggiunge una cifra. Fare riferimento alle _Norme di Progetto v2.0_ per una descrizione più approfondita.],
      [#glossary[UML] dei casi d'uso],[Le estensioni e le inclusioni di un caso d'uso vanno nello stesso diagramma #glossary[UML] del caso d'uso stesso.],
),
caption: [Lista di controllo per l’_Analisi dei Requisiti_.]
)


#pagebreak()
= Cruscotto della qualità

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

*#glossary[PB]* L'analisi del grafico rivela un trend interessante nell'EAC a partire dal nono #glossary[sprint]. Durante tale #glossary[sprint], infatti, l'EAC mostra una leggera tendenza al rialzo, che si intensifica fino al suo picco nel decimo #glossary[sprint]. Questo aumento è attribuibile alla decisione del team di prendere una breve pausa, motivata dalla necessità di affrontare la sessione degli esami e partecipare ai colloqui previsti dalla prima revisione #glossary[RTB].

La pausa, sebbene necessaria, ha inevitabilmente influenzato il ritmo e la produttività del team negli #glossary[sprint] immediatamente successivi all'#glossary[RTB], causando un rallentamento nelle attività del progetto e un aumento dei costi associati alla gestione delle risorse durante questo periodo. In altre parole, questa interruzione temporanea ha comportato un leggero incremento nei costi previsti per il completamento del progetto, evidenziato dall'aumento dell'EAC; dato che il team ha utilizzato meno risorse negli #glossary[sprint] 9 e 10, l'EV è risultato considerevolmente più basso rispetto all'AC, il che ha portato l'EAC a crescere e a discostarsi dal BAC pianificato inizialmente.

Tuttavia, è interessante notare che nonostante questo rialzo nell'EAC fino al decimo #glossary[sprint], il suo valore è diminuito in modo ripido nel corso degli #glossary[sprint] successivi fino a raggiungere il valore ottimale verso la fine dell'ultimo #glossary[sprint] previsto. Questa tendenza al ribasso può essere attribuita alla ripresa del ritmo di lavoro, all'ottimizzazione delle risorse e alla migliore gestione delle attività del progetto da parte del team. Infatti, il numero delle ore produttive effettivamente impiegate dal team è mediamente raddoppiato rispetto a quelle che hanno caratterizzato gli #glossary[sprint] 9 e 10, segno indiscutibile del fatto che il team ha avuto successo nell'aumentare il valore del lavoro svolto e, di conseguenza, nell'avvicinare l'EV all'AC, facendo sì che L'EAC diminuisse fino a raggiungere il BAC.

In definitiva, sebbene la pausa abbia temporaneamente influenzato i costi previsti per il completamento del progetto, il team è riuscito a recuperare il terreno perso, riducendo l'EAC e portando il progetto verso il raggiungimento dei suoi obiettivi entro la fine degli #glossary[sprint] previsti prima della seconda revisione #glossary[PB].


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

*#glossary[PB]* La metrica SV ha continuato a decrescere fino a raggiungere lo 0% circa (0.18% con esattezza) al termine dello #glossary[sprint] 13. 
Il raggiungimento di questo traguardo per l'SV è un segnale positivo che indica un'efficace gestione del tempo e delle risorse all'interno del progetto. Si può affermare che il team sia riuscito a lavorare in modo efficiente e a mantenere il progetto in linea con la pianificazione prevista. Il continuo miglioramento della SV nel corso degli #glossary[sprint] dimostra un impegno costante; è interessante notare come, rispetto all'andamento della SV negli #glossary[sprint] antecedenti all'#glossary[RTB], che è risultato essere piuttosto altalenante, questa si sia stabilizzata nel suo andamento linearmente decrescente nel corso del periodo antecedente alla #glossary[PB]. Evidentemente il team è riuscito nel suo intento di effettuare una pianificazione più realistica e di aderirvi rigorosamente, con un ritmo di lavoro pressochè invariato negli ultimi #glossary[sprint].


Per quanto riguarda la Budget Variance (BV), si nota un significativo cambiamento di tendenza tra gli #glossary[sprint] 9 e 10. Durante questo intervallo, la linea subisce un  calo negativo, evidenziando una discrepanza tra il budget pianificato e le spese effettive. Come affermato precedentemente, questo decremento è principalmente attribuibile al ritmo di lavoro poco sostenuto che ha caratterizzato i primi due #glossary[sprint] successivi alla pausa programmata. Tuttavia, dallo #glossary[sprint] 11 in poi, la linea che descrive la BV inizia a risalire rapidamente, indicando un miglioramento nella gestione delle spese e una riduzione della discrepanza tra il budget previsto e quello effettivo. Alla fine del periodo considerato, la metrica BV raggiunge il -0.56%, un valore ben al di sotto della soglia di accettazione costituita dalla variazione del ±10% dal BAC.

#pagebreak()
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

*#glossary[PB]* Dal grafico si può notare come l'AC sia continuato a salire fino a fermarsi poco al di sotto dell'EAC. Questo indica che i costi effettivamente sostenuti sono stati inferiori alle stime previste per completare il progetto, il che suggerisce un'efficace gestione dei costi. Bisogna sottolineare, inoltre, che, come illustrato nell'ultimo consuntivo all'interno del _Piano di Progetto v2.0_, il team si è ritrovato ad avere a disposizione un budget leggermente più ampio rispetto a quanto preventivato per lo svolgimento del progetto sino alla #glossary[PB] a causa della rinuncia alla #glossary[CA]; il team ha dunque portato a termine gli obiettivi del periodo pre-#glossary[PB] disponendo ancora di alcune risorse inutilizzate, per quanto limitate.
Inoltre, l'ETC è continuato a diminuire nel corso degli #glossary[sprint], indicando una riduzione progressiva nella stima dei costi necessari per completare il progetto. Per lo stesso ragionamento fatto prima, l'ETC non ha toccato lo 0, poiché delle 570 ore previste ne sono state utilizzate leggermente meno.


=== Earned Value e Planned Value

#figure(
  image("./assets/valutazione-metriche/EV_PV.png", width: 85%),
  caption: [
    Valutazione Earned Value e Planned Value.
  ],
)

*#glossary[RTB]* L'EV rappresenta il valore prodotto dal progetto ossia il valore dei #glossary[deliverable] rilasciati fino al momento della misurazione in seguito alle attività svolte; il PV rappresenta invece il valore del lavoro pianificato fino a un dato momento. Nonostante sia ancora prematuro confrontare le due metriche con l'EAC, si può notare che il PV si mantiene al di sotto dell'EV, seppur di poco, segno che i preventivi fatti finora sono stati leggermente ottimistici rispetto alla spesa effettiva. Si può notare come le due metriche a partire dal sesto #glossary[sprint] tendano ad avvicinarsi: ciò denota che il team sta iniziando effettivamente a produrre dei preventivi di periodo che rispecchiano maggiormente la realtà effettiva, anche per come viene fotografata nei consuntivi di periodo.

*#glossary[PB]* Durante lo sviluppo del progetto, le metriche EV e PV hanno mostrato un costante avvicinamento, quasi fino a coincidere intorno allo #glossary[sprint] 12.
Questo progressivo avvicinamento suggerisce che i preventivi pianificati sono diventati sempre più precisi man mano che il progetto è avanzato.
Il fatto che queste due metriche si siano avvicinate sempre di più suggerisce che le previsioni iniziali sono state riviste e adattate in modo accurato sulla base dell'andamento effettivo del progetto. Ciò indica anche una maggiore solidità nella pianificazione e una migliore comprensione dei requisiti e delle risorse necessarie per il completamento del progetto. Inoltre, il quasi coincidere delle due metriche intorno allo #glossary[sprint] 12 indica che il progetto è stato eseguito in modo conforme alle previsioni e che la gestione del progetto è stata efficace nel monitorare e mantenere il progresso in linea con il piano stabilito.


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

*#glossary[PB]* Tutti i documenti hanno il valore di IG al di sopra del limite accettabile. Si nota che il documento _Piano di Qualifica_ ha subito una notevole diminuzione dell'indice, dovuta principalmente all'utilizzo di parole più lunghe e frasi più complesse.
Il documento _Analisi Dei Requisiti_, da grafico, ha l'indice più elevato tra tutti i documenti. Durante lo #glossary[sprint] 10, si può notare un significativo aumento dell'IG, infatti il documento è stato arricchito con correzioni suggerite dal Professore Cardin e con ulteriori dettagli nei casi d'uso e nei requisiti. Tuttavia, è interessante osservare che negli ultimi due #glossary[sprint] finali si è verificato un nuovo calo dell'Indice Gulpease, suggerendo possibili variazioni nella complessità del testo.


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

*#glossary[PB]* Nella revisione dei documenti _Specifica Tecnica v1.0_ e _Manuale Utente v1.0_, è emerso un certo numero di errori grammaticali e formali. Questa situazione è stata principalmente causata dal fatto che il team ha concentrato il proprio sforzo principalmente sulla revisione del codice e sui test, trascurando una revisione approfondita dei documenti stessi.
D'altra parte, gli altri documenti non presentano errori grammaticali evidenti, suggerendo un'efficace applicazione delle checklist di controllo e dei vari strumenti di revisione.


== Qualità di processo - codifica
Nella seguente tabella si mostrano il numero di infrazioni delle metriche prese in esame
riguardanti la qualità del processo di codifica.

/*da vedere se lasciare la tabella o mettere il grafico*/

#figure(
table(
      columns:(auto,auto,auto),
      align: (x, y) => (center, center, center).at(x),
      fill:(_,row) => if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Metrica*],[*Valore*],[*Valore accettazione*],
      [*MPC-ATC*], [2], [≤ 6],
      [*MPC-PM*], [0], [≤ 5],
      [*MPC-LCM*], [0], [≤ 25]
),
caption: [Metriche della codifica per lo sprint 12.])

#figure(
  image("./assets/valutazione-metriche/ATC_PM_LCM.png", width: 85%),
  caption: [
    Valutazione Metriche Codifica.
  ],
)

Nell'ambito delle metriche di codifica, si è verificata un'unica situazione di violazione riguardante la metrica ATC (Attributi per Classe), la quale è stata risolta nel corso dell'ultimo #glossary[sprint]. È importante sottolineare che gli attributi di classe, i parametri per metodo (PM) e il numero di righe per funzione (LCM) sono tutti conformi ai limiti accettabili.

#pagebreak()
== Qualità di processo - gestione della qualità

=== Metriche Non Soddisfatte

#figure(
  image("./assets/valutazione-metriche/MNS.png", width: 85%),
  caption: [
    Valutazione Metriche Non Soddisfatte.
  ],
)

*#glossary[RTB]* Le Metriche Non Soddisfatte corrispondono alle metriche MPC-CO, MPC-CPI, MPC-EAC. In concomitanza con l'ottavo #glossary("sprint"), la misurazione di MPC-CO è rientrata all'interno del valore di accettazione. Per quanto riguarda MPC-CPI e MPC-EAC, essendo estremamente legate tra loro, si rimanda alle considerazioni relative a MPC-EAC.

*#glossary[PB]* Durante gli #glossary[sprint] 11 e 12, la metrica CPI si è collocata entro il suo intervallo accettabile, determinando di conseguenza un posizionamento adeguato anche per la metrica EAC.  Durante lo #glossary[sprint] 12, le metriche non soddisfatte erano riconducibili ai requisiti obbligatori soddisfatti, oltre a due violazioni nella metrica ATC (ovvero il numero di attributi per classe). Nello #glossary[sprint] 13 si è verificata la violazione della metrica CO (correzione ortografica)  il che può essere attribuito al fatto che i documenti non erano stati sottoposti ad un'approfondita revisione. Tuttavia, a partire dallo #glossary[sprint] 14, tutte le metriche hanno raggiunto i valori desiderati e il numero di metriche non soddisfatte è calato a 0.


// == Qualità di prodotto
#pagebreak()

== Qualità di prodotto

=== Funzionalità

#figure(
  image("./assets/valutazione-metriche/ROS.png", width: 85%),
  caption: [
    Valutazione requisiti obbligatori, desiderabili e opzionali.
  ],
)

Dall'analisi del grafico emerge che tutti i requisiti obbligatori sono stati soddisfatti nel corso dello #glossary[sprint] 13. Inoltre, si è registrato un notevole progresso anche per quanto riguarda i requisiti desiderabili, con una percentuale finale di soddisfacimento pari al 92%. Tuttavia, risulta evidente che i requisiti opzionali sono stati realizzati solo parzialmente, raggiungendo il 33% della loro totalità.


=== Manutenibilità

#figure(
  image("./assets/valutazione-metriche/SFIN_SFOUT.png", width: 85%),
  caption: [
    Valutazione metrica FAN-IN FAN-OUT.
  ],
)

FAN-IN rappresenta il numero di moduli o componenti direttamente collegati o dipendenti da un modulo o una funzione specifica. 
SFOUT rappresenta il numero di dipendenze o connessioni che un componente o modulo particolare ha con altri componenti o moduli. Misura quanti altri elementi dipendono o interagiscono con un dato elemento all'interno di un #glossary[sistema].

L'analisi dei valori numerici evidenzia che il fan-in si attesta intorno al valore 2,6, indicando che ogni modulo o componente specifico ha in media circa 2,6 altre parti del #glossary[sistema] che dipendono direttamente da esso. Questo valore suggerisce che, sebbene ci sia un certo grado di dipendenza da altre parti del #glossary[sistema], questo non è così elevato da indicare una massima utilizzazione del modulo da altre parti del #glossary[sistema].

Per quanto riguarda il fan-out, che si attesta intorno al valore di 5,62, questo indica che ogni modulo ha in media circa 5,62 dipendenze o connessioni con altri moduli o componenti all'interno del #glossary[sistema]. Un valore così elevato di fan-out potrebbe suggerire che alcuni moduli hanno molte dipendenze da altri moduli, il che potrebbe aumentare la complessità del #glossary[sistema] e rendere più difficile la gestione dei moduli stessi.




=== Usabilità

#figure(
  image("./assets/valutazione-metriche/FU.png", width: 85%),
  caption: [
    Valutazione facilità di utilizzo.
  ],
)

Durante il corso degli #glossary[sprint], il numero massimo di click necessari per accedere a tutte le funzionalità del prodotto è rimasto costante a cinque. Questo rappresenta il valore ideale, confermando l'efficacia dell'interfaccia utente nel garantire un accesso rapido e diretto alle varie funzionalità del prodotto.

#figure(
  image("./assets/valutazione-metriche/TA.png", width: 85%),
  caption: [
    Valutazione tempo di apprendimento.
  ],
)

Per quanto riguarda la metrica del tempo di apprendimento (TA), è stato condotto un test regolare da parte di una persona estranea al progetto una volta a settimana al fine di valutare la facilità d'uso del prodotto. Inizialmente, durante il primo test di familiarizzazione, è stato registrato un tempo di apprendimento di circa dieci minuti. Questo periodo è stato considerato necessario per consentire alla persona di prendere confidenza con l'interfaccia e le funzionalità del prodotto.
Tuttavia, è interessante notare che, nello #glossary[sprint] 14, il tempo di apprendimento è diminuito a otto minuti. Questa diminuzione del tempo necessario per familiarizzare con il prodotto suggerisce un miglioramento nell'usabilità e nella chiarezza dell'interfaccia utente. 
Considerando che il test è stato effettuato una volta a settimana, è plausibile dedurre che un #glossary[amministratore pubblico] che utilizzi il prodotto quotidianamente dovrebbe riuscire a familiarizzare e comprendere il suo funzionamento in una manciata di minuti.

=== Affidabilità

#figure(
  image("./assets/valutazione-metriche/SC_BC.png", width: 85%),
  caption: [
    Valutazione metriche statement e branch coverage.
  ],
)

Nel grafico, osserviamo che lo statement coverage (SC) rimane costantemente elevato intorno al 93%, mentre il branch coverage (BC), sebbene sia sceso dal 83% all'81%, si mantiene comunque sopra l'80%, che rappresenta il minimo accettabile per una valutazione positiva della copertura del codice.

Il fatto che entrambe le metriche siano superiori all'80% indica che il codice è soggetto a un buon livello di copertura dai test. Una copertura dello statement così elevata suggerisce che la maggior parte del codice è stata eseguita durante i test, mentre un branch coverage superiore all'80% indica che la maggior parte dei rami decisionali del codice è stata attraversata dai test.

In conclusione, nonostante una leggera diminuzione nel branch coverage, entrambe le metriche rimangono ben al di sopra del minimo richiesto per una valutazione positiva della copertura del codice. Questo suggerisce che il codice è soggetto ad un livello adeguato di testing e che la sua qualità complessiva è solida e affidabile.

#figure(
  image("./assets/valutazione-metriche/PTCP.png", width: 85%),
  caption: [
    Valutazione metrica passed test.
  ],
)

Tutti i test prodotti sono stati superati con successo, senza alcun test fallito. Questo conferma ulteriormente la solidità del codice e l'efficacia dei test eseguiti.



=== Efficienza

Le metriche di efficienza sono state calcolate utilizzando un elaboratore con le seguenti caratteristiche:
- 16 GB RAM LPDDR5;
- CPU M1 PRO 10 Core 3.2GHz.
È stato valutato il rendimento del #glossary[sistema] a pieno carico, con più di quaranta simulatori di sensori attivi, ognuno generante una scrittura al secondo, per più di sei ore, senza che si verificassero rallentamenti significativi. I risultati sono rimasti invariati durante il corso del progetto, dato che le componenti sono rimaste le stesse e sono in grado di gestire una mole di dati molto superirore a quella richiesta per il progetto.
#figure(
table(
      columns:(auto,auto,auto),
      align: (x, y) => (center, center, center,center).at(x),
      fill:(_,row) => if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Metrica*],[*Valore Medio Rilevato*],[*Valore accettazione*],
      [MPD-CPUU],[\~12%],[\≤ 20%], 
      [MPD-RAMU],[~ 2,7 GB],[\≤ 3GB], 
      [MPD-TDE],[\~ 3s], [\≤ 6s],
),
caption: [Tabella delle metriche di efficienza a massimo carico])

== Considerazioni finali in vista della revisione #glossary[RTB]

Il team ha tentato fin da subito di adottare un #glossary[way of working] che consentisse di rispettare gli obiettivi e le scadenze impostate all'inizio dello svolgimento del progetto, ma ci si è presto resi conto che quest'ultimo sarebbe dovuto essere gradualmente ampliato e raffinato con il passare del tempo; infatti, nonostante il #glossary[way of working] sia progressivamente migliorato con l'avanzare del progetto, alcune aree necessitano di essere meglio definite o migliorate affinché la qualità di processo si rifletta positivamente sulla qualità di prodotto. Volendo ripercorrere brevemente la progressione del modo di lavorare del team, si possono riportare alcune considerazioni sulle difficoltà incontrate inizialmente e su come si sia tentato di superarle.

In generale, il team non ha avuto difficoltà nel fissare incontri interni settimanali per discutere dell'avanzamento del progetto a cui tutti i componenti partecipassero attivamente; tuttavia, per una buona parte del periodo antecedente la prima revisione #glossary[RTB] (sostanzialmente fino allo #glossary[sprint] 5 incluso), gli incontri hanno avuto una durata eccessiva, ossia oltre le 1,5 ore. Dunque, il team ha cominciato a stilare un #glossary[ordine del giorno] nel corso dello #glossary[sprint] in modo da poter strutturare meglio gli incontri e limitarne la durata. Nonostante questa lista abbia un contenuto piuttosto variabile, si può migliorare la sua applicazione prestabilendo quanto tempo si dovrebbe dedicare a ciascun punto di discussione nel corso dell'incontro, cosa che il team ha intenzione di fare dopo la prima revisione per renderli più efficienti. Si nota che gli incontri si protraggono ancora per più di quanto previsto, il che in parte è dovuto al fatto che si investe del tempo per assistere gli Amministratori nella creazione delle issue e assegnazione dei relativi campi. Tuttavia il fenomeno va riducendosi, segno che il team sta imparando a svolgere queste attività in modo più efficiente.

Si è menzionato il processo di creazione e assegnazione delle issue: fortunatamente tale processo è stato messo a punto e applicato in modo consistente fin dal principio, ma si può migliorare la sua applicazione per agevolare ulteriormente la creazione del preventivo che precede ogni #glossary[sprint] e la pianificazione a breve termine. In particolare, come spiegato nelle _Norme di Progetto v1.0_, ad ogni issue viene assegnata una dimensione (in base alle ore produttive che si stima siano necessarie per il suo completamento) e una priorità, pensate per aiutare il team a dimensionare gli #glossary[sprint] e a gestire la catena di dipendenze tra le varie issue in modo corretto; tuttavia, il fatto di conoscere (e aggiornare in corso d'opera se necessario) la dimensione di tutte le issue previste per un determinato #glossary[sprint] e, di conseguenza, la dimensione dello #glossary[sprint] stesso non è stato preso in considerazione nella creazione del preventivo rilevante. Non c'è dubbio sul fatto che creare un preventivo "informato" da questo genere di stima sia più efficace che crearne uno inserendo ore non vincolate in alcun modo, solo in base alle esigenze del momento. Allo stesso modo il team si era prefissato di esplicitare sempre le date di inizio e fine di ogni singola issue, in modo da agevolare la pianificazione; anche in questo caso l'idea iniziale non è stata applicata in modo soddisfacente, perciò è risultato difficile eseguire una pianificazione dettagliata di ogni #glossary[sprint], che consistesse anche di un diagramma di Gantt. In futuro, dunque, il team ha intenzione di sfruttare queste procedure in modo concreto per migliorare le attività di creazione di pianificazione e preventivo di ogni #glossary[sprint].

Sarebbe utile dunque monitorare la dimensione di ogni #glossary[sprint] come viene descritta sopra tramite una metrica apposita da inserire tra quelle di gestione dei processi; idealmente si avrebbe anche una metrica che misura il tasso di completamento delle attività per ogni #glossary[sprint], così da potersi regolare nella pianificazione di quelli futuri. Quest'ultima non è stata utilizzata perché nel momento in cui il team ha cominciato ad utilizzare le metriche scelte in modo appropriato, si è reso conto di non possedere una traccia delle issue aperte e chiuse al termine di ogni #glossary[sprint]\; attualmente, nel momento in cui si hanno delle issue ancora aperte alla fine dello #glossary[sprint] corrente, queste vengono "trasportate" allo #glossary[sprint] successivo assegnandole alla #glossary[milestone] appena creata. In futuro, sarebbe bene fare uno "screenshot" dello stato della Kanban board al termine dello #glossary[sprint] in modo da poter calcolare questa metrica aggiuntiva prima di riadattarla allo #glossary[sprint] in procinto di iniziare.

L'applicazione di una routine più rigorosa per quanto riguarda l'aggiornamento del _Piano di Progetto_ e del _Piano di Qualifica_ con i dati rilevanti è di importanza vitale, soprattutto dopo la revisione #glossary[RTB] quando ci saranno documenti aggiuntivi che richiederanno attenzione; pianificazione, preventivo, consuntivo e metriche dovranno essere aggiornati in modo metodico e rigoroso in modo da essere sfruttati come strumenti utili ed evitare problemi come l'impiego di più ore produttive in un determinato ruolo (Amministratore, ad esempio) di quante non ce ne siano effettivamente a disposizione (anche questo da considerare nella creazione dei preventivi appunto, assieme alla dimensione dello #glossary[sprint]).

In quanto alla rendicontazione delle ore produttive effettivamente utilizzate dai membri del team nel corso di ciascuno #glossary[sprint], lo #glossary[spreadsheet] "Time & Resource Manager" su Google Drive si è rivelato estremamente utile (se aggiornato tempestivamente da tutti i membri senza ritardo); tuttavia, l'utilizzo delle ore produttive preventivate ed effettive riportate nel _Piano di Progetto v1.0_ per calcolare la percentuale di lavoro preventivato e svolto nell'ottica di PV ed EV è ancora un punto di discussione all'interno del team; infatti, come descritto dal grafico, L'EAC è ancora al di sopra del limite di accettazione superiore nonostante l'andamento decrescente. Questo è in un certo senso in linea con l'utilizzo che il team ha fatto del BAC, utilizzando più ore da Amministratore (tra le più costose, tra l'altro) del previsto, ma è anche un prodotto del modo in cui il team ha scelto di calcolare la percentuale di lavoro menzionata sopra; non essendoci altre alternative valide per eseguire il calcolo, con ogni probabilità il team continuerà ad adottare l'approccio delineato, utilizzando però le ore in modo più consapevole rispetto a quanto già speso per fare in modo che l'EAC continui ad avere un andamento decrescente.

La comunicazione all'interno del team è stata stabile fin dall'inizio del progetto e non ha subito grosse variazioni se non durante il periodo coincidente con la sessione di esami invernale e poco oltre (lo stesso vale per la comunicazione esterna con la Proponente); tuttavia, il team dovrebbe imparare a gestire meglio (e quindi stabilire una procedura per) le situazioni in cui uno o più documenti necessitano di una revisione o di modifiche critiche da effettuare con urgenza (senza dover necessariamente attendere il termine dello #glossary[sprint] corrente) tramite discussioni dedicate su Discord o meeting di emergenza. Tali misure sono state predisposte recentemente visto l'andamento del progetto nel corso della sessione, ma non sempre utilizzate quando necessario.

Complessivamente, il #glossary[way of working] del team è migliorato notevolmente dall'inizio del progetto, in particolare grazie a tutti gli strumenti, le procedure e le automazioni descritte nelle _Norme di Progetto v 1.0_ e alle misure di prevenzione dei rischi descritte nel _Piano di Progetto v1.0_, ma ciò non significa che sia privo di imperfezioni e che non possa essere migliorato ulteriormente in seguito alla revisione #glossary[RTB].
