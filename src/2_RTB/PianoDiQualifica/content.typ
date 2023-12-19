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
          Verificare che l'amministratore pubblico senza autenticazione possa:
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
          Verificare che l'amministratore pubblico, una volta entrato nell'applicazione, possa:
            1. aprire il menu di selezione delle #glossary("dashboard");
            2. selezionare la #glossary("dashboard") per visualizzare la panoramica generale dei sensori;
            3. visualizzare la relativa #glossary("dashboard");
            4. visualizzare un #glossary("pannello") con una mappa indicante la posizione di tutti i sensori;
            5. visualizzare un #glossary("pannello") con una tabella che mostra lo stato di tutti i sensori.
            6. visualizzare un messaggio di avvertenza di dati mancanti, nei vari #glossary("pannelli"), nel caso il sistema non riesca ad ottenere i dati.
      ],"N/I",[
            UC1\
            UC1.1\
            UC1.2
      ]),
      ([
          Verificare che l'amministratore pubblico, una volta entrato nell'applicazione, possa:
            1. aprire il menu di selezione delle #glossary("dashboard");
            2. selezionare la #glossary("dashboard") per visualizzare i dati ambientali;
            3. visualizzare la relativa #glossary("dashboard");
            4. visualizzare un #glossary("pannello") con la #glossary("serie storica") delle temperature rilevate dai ciascun sensore;
            5. visualizzare un #glossary("pannello") con la #glossary("serie storica") delle percentuali di umidità rilevate da ciascun sensore;
            6. visualizzare un #glossary("pannello") con una mappa mostrante velocità e direzione del vento rilevato da ciascun sensore;
            7. visualizzare un #glossary("pannello") con la #glossary("serie storica") dei millimetri di pioggia rilevati dai ciascun sensore;
            8. visualizzare un #glossary("pannello") con la #glossary("serie storica") (in formato aggregato, andando a fare la media degli ultimi cinque minuti) dei millimetri di pioggia rilevati dai ciascun sensore;
            9. visualizzare un #glossary("pannello") con la #glossary("serie storica") relativa ai dati sull'inquinamento dell'aria rilevati dai ciascun sensore; /*TODO: sostituire con l'unità di misura/metrica giusta*/
            10. visualizzare un #glossary("pannello") con la #glossary("serie storica") (in formato aggregato, andando a fare la media degli ultimi cinque minuti) dei dati sull'inquinamento dell'aria rilevati dai ciascun sensore; /*TODO: sostituire con l'unità di misura/metrica giusta*/
            11. visualizzare un #glossary("pannello") con la #glossary("serie storica") delle percentuali di riempimento dei bacini idrici rilevate dai ciascun sensore;
            12. visualizzare un #glossary("pannello") con la #glossary("serie storica") (in formato aggregato, andando a fare la media degli ultimi cinque minuti) delle temperature rilevate dai ciascun sensore;
            13. visualizzare un #glossary("pannello") con il valore massimo negli ultimi 5 minuti relativo all'inquinamento dell'aria. /*TODO: sistemare con le unità di misura giuste*/
            14. visualizzare un messaggio di avvertenza di dati mancanti, nei vari #glossary("pannelli"), nel caso il sistema non riesca ad ottenere i dati.
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
          Verificare che l'amministratore pubblico, una volta entrato nell'applicazione, possa:
            1. aprire il menu di selezione delle #glossary("dashboard");
            2. selezionare la #glossary("dashboard") per visualizzare i dati urbanistici;
            3. visualizzare la relativa #glossary("dashboard");
            4. visualizzare un #glossary("pannello") con una mappa indicante la quantità di posti liberi per ogni parcheggio controllato da un sensore;
            5. visualizzare un #glossary("pannello") con una mappa indicante i watt erogati da ciascuna colonnina di ricarica controllata, indicando se è occupata o meno;
            6. visualizzare un #glossary("pannello") con una mappa indicante l'intensità del traffico sulle strade controllate; /*TODO: andare a specificare come questa intesità viene espressa (anche in adr)*/
            7. visualizzare un #glossary("pannello") con una mappa indicante la posizione di ciascuna bicicletta elettrica controllata, con la relativa percentuale di batteria;
            8. visualizzare un #glossary("pannello") con una mappa indicante la percentuale di riempimento di ogni zona rifiuti controllata;
            9. visualizzare un messaggio di avvertenza di dati mancanti, nei vari #glossary("pannelli"), nel caso il sistema non riesca ad ottenere i dati.
      ],"N/I",[
            UC3\
            UC3.2\
            UC3.3\
            UC3.4\
            UC3.5\
            UC3.6
      ]),
      ([
          Verificare che l'amministratore pubblico, una volta entrato nell'applicazione, possa:
            1. aprire il menu di selezione delle #glossary("dashboard");
            2. selezionare la #glossary("dashboard") per visualizzare i dati anomali prodotti dai sensori;
            3. visualizzare la relativa #glossary("dashboard");
            4. visualizzare una tabella contenente per ogni anomalia rilevata, il relativo sensore di riferimento. La tabella deve essere ordinata in base all'orario di registrazione dei dati.
      ],"N/I",[
            UC4
      ]),
      ([
          Verificare che l'amministratore pubblico, una volta entrato nell'applicazione, possa:
            1. ricevere notifiche relative al superamento di un qualche valore di soglia, impostato per determinati tipi di sensori. /*TODO: specificare i sensori (anche in adr)*/
      ],"N/I",[
            UC5
      ]),
      ([
          Verificare che l'amministratore pubblico, una volta entrato nell'applicazione, possa:
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
          Verificare che l'amministratore pubblico, una volta entrato nell'applicazione, possa:
            1. Scegliere una tabella da ordinare;
            2. Ordinare le righe di tale tabella per ciascuna sua colonna, in modo ascendente o discendente, secondo #glossary("ordinamento lessicografico") (nel caso di valori espressi in stringhe) o per confronto di valore numerico.
      ],"N/I",[
            UC7
      ]),
      ([
          Verificare che l'amministratore pubblico, una volta entrato nell'applicazione, possa:
            1. Scegliere una #glossary("dashboard") da modificare nel layout;
            2. Modificare il layout dei #glossary("pannelli") in termini di posizione di tali #glossary("pannelli") e di dimensioni.
      ],"N/I",[
            UC8
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

#let test_di_sistema = (
      ([
            Verificare che l'utente possa accedere all'applicazione senza dover effettuare l'autenticazione.
      ],"N/I",[ROF1]),
).enumerate(start:1).map(test => ("TS"+ str(test.at(0)),test.at(1).at(0),test.at(1).at(1),test.at(1).at(2)));

#show figure: set block(breakable: true)
#figure(
table(
      columns: (2fr,7fr,1fr),
      align: (center,left,center),
      fill:(_,row) =>if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Codice test*],[*Descrizione*],[*Stato*],
      ..test_di_sistema.map(item => (item.at(0),item.at(1),item.at(2))).flatten().map(item => [#item])
),caption: "Test di sistema.")


== Liste di controllo

Le liste di controllo sono uno strumento che i verificatori possono utilizzare al fine di individuare errori ricorrenti nella documentazione. Tali liste prevedono anche una descrizione del problema al fine di poter fornire una spiegazione della richiesta di cambiamenti durante la fase di revisione.
Le liste di controllo possono essere aggiornate durante tutto il corso del progetto dai Verificatori, man mano che vengono notati errori ricorrenti.

#pagebreak()
=== Struttura dei documenti

#figure(
table(
      columns: (1fr, 2fr),
      inset: 10pt,
      align: (center, left),
      [*Aspetto*],[*Spiegazione*],
      [Vuoti documentativi],[Tutte le sezioni che non si intende completare, e che quindi devono rimanere vuote, devono essere cancellate.],
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
      [Errori di battitura],[Gli errori di battitura, di distrazione o di ignoranza devono essere rimossi.],
      [Errori di coniugazione],[Gli errori di coniugazione devono essere rimossi.],
      [Forma verbale],[Il presente indicativo è da preferire.],
      [Forma non concise],[Le espressioni troppo verbose, ove possibile, devono essere ridotte a forme più concise.],
      [Non formalità],[Le espressioni non formali devono essere sostituite con le corrispondenti espressioni formali.],
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
      [Maiuscole nei titoli],[La prima lettera di ogni titolo deve essere maiuscola. Il resto del titolo dovrebbe essere in minuscolo (tolte particolari eccezioni).],
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
      [Numerazione errata dei casi d'uso],[La numerazione dei casi d'uso deve seguire la crescita dei numeri interi naturali. Se si tratta di un sotto-caso d'uso, il sotto-caso deve ereditare, come prefisso del proprio codice, il codice del caso d'uso a cui appartiene, e ne aggiunge una cifra.],
      [UML dei casi d'uso],[Le estensioni e le inclusioni di un caso d'uso vanno nello stesso diagramma UML del caso d'uso stesso.],
),
caption: [Lista di controllo per l’Analisi dei Requisiti]
)