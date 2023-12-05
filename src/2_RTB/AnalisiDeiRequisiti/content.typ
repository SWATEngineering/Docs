#import "meta.typ" : title
#import "functions.typ" : glossary, team

#set list(marker: ([•], [--]))
#set enum(numbering: "1.a.")

= Introduzione

== Scopo del documento
Il presente documento ha lo scopo di fornire una descrizione dettagliata dei casi d'uso e dei requisiti del progetto _InnovaCity_. Questi risultano dall'analisi del capitolato C6 presentato dalla Proponente _Sync_ Lab e dalla successiva interazione diretta con essa attraverso gli incontri svolti.

== Scopo del prodotto
Lo scopo del prodotto è la realizzazione di un sistema di persistenza dati e successiva visualizzazione di questi, provenienti da sensori dislocati geograficamente. Tale piattaforma consentirà all'#glossary("amministratore pubblico") di acquisire una panoramica completa delle condizioni della città, facilitando così la presa di decisioni informate e tempestive riguardo alla gestione delle risorse e all'implementazione di servizi.

== Riferimenti

=== Riferimenti normativi
- Capitolato C6 - InnovaCity: Smart city monitoring platform:
#link("https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C6.pdf")\
#link("https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C6p.pdf")

- Norme di Progetto

- Regolamento progetto didattico:
#link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/PD2.pdf")

=== Riferimenti informativi
Analisi dei requisiti - corso di Ingegneria del Software a.a. 2023/2024: \
#link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T5.pdf") \
Cardin	Analisi e descrizione delle funzionalità: Use Case e relativi diagammi (UML) - corso di Ingegneria del Software a.a. 2023/2024: \
#link("https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20di%20Attivit%C3%A0.pdf")

= Descrizione

== Obiettivi del prodotto
L'obbiettivo consiste nella creazione di una piattaforma di monitoraggio e gestione di una #glossary("Smart City"). L'utente, individuato nell'#glossary("amministratore pubblico"), potrà farne impiego per migliorare la qualità generale della vita e l'efficienza dei servizi nel contesto di un'area urbana. L'utente sarà in grado di monitorare, attraverso la consultazione di una dashboard, lo stato della città, sotto i punti di vista ambientali, logistici e di sicurezza. Questo cruscotto includerà rappresentazioni grafiche basate su dati provenienti da dei sensori installati all'interno dell'area geografica della città.

== Funzionalità del prodotto
Il prodotto si compone di due parti principali:
- *Una #glossary("data pipeline")* in grado di raccogliere, persistere e processare dati provenienti da più sorgenti (ovvero i #glossary("sensori")) in #glossary("real-time");
- *Una dashboard* che permette di visualizzare i dati raccolti.

La piattaforma prevede fondamentalmente una tipologia di utente: l'#glossary("amministratore pubblico"). Questo utente avrà accesso alla dashboard e prenderà visione di diverse metriche e indicatori sullo stato della città, mediante diversi strumenti di visualizzazione.

== Utenti e caratteristiche
Il prodotto, destinato ad #glossary("amministratori pubblici"), consente loro di ottenere una panoramica sulle condizioni della città. Ciò fornisce loro una base solida per prendere decisioni ponderate sulla gestione delle risorse e sull'implementazione dei servizi, il che risulta cruciale nel miglioramento dell'efficienza complessiva della gestione urbana. Si presuppone che l' #glossary("amministratore pubblico") abbia conoscenze di analisi e di interpretazione dei dati, tali da poter trarre un concreto beneficio dal controllo della dashboard.

= Casi d'uso
== Scopo
In questa sezione si vogliono elencare e descrivere tutti i casi d'uso individuati dall'analisi del capitolato e dalle interazioni avute con la Proponente. In particolare, si individuano gli #glossary("attori") e le funzionalità che questi possono svolgere. Ogni caso d'uso possiede un codice, la cui struttura è descritta nelle Norme di Progetto.

== Attori
Il sistema si interfaccerà con due attori diveri:
- *#glossary("Amministratore pubblico")*: è un utente che ha accesso alla dashboard in tutte le sue funzionalità e può visualizzare i dati raccolti dai sensori, mediante quest'ultima;
- *#glossary("Sensore")*: è un dispositivo in grado di raccogliere dati relativi al proprio dominio di interesse e di inserirli all'interno del sistema per far si che vengano persistiti.

Relativamente all'utilizzo della dashboard, viene definito un unico attore con accesso completo alle funzionalità, in quanto per sua natura l' #glossary("amministratore pubblico") possiede le competenze tecniche necessarie per poter interagire con essa in tutte le sue parti.

#figure(
  image("assets/attori.png", width: 40%),
  caption: [Gerarchia degli attori]
)

#figure(
  image("assets/USECASES.png",width:130%),
  caption: [USECASE]
)

== Elenco dei casi d'uso

#set heading(numbering: none)

=== UC1: Visualizzazione Panoramica Generale Sensori
- *Attore Principale*: amministrato pubblico. 
- *Precondizioni*: nessuna.
- *Postcondizioni*: l'attore visualizza i panelli relativi ai dati dati propri dei sensori. 
- *Scenario Principale*:
  + l'attore accede al sistema; 
  + l'attore seleziona la visualizzazione della panoramica generale dei sensori;
  + il sistema elabora i dati e renderizza i pannelli; 
  + l'attore visualizza i panelli.
- *Specializzazioni*: nessuna.
- *Inclusioni*: nessuno.
- *Estensioni*: nessuna.

=== UC1.1: Visualizzazione posizione sensori su mappa
- *Attore Principale*: amministratore pubblico. 
- *Precondizioni*: nessuna.
- *Postcondizioni*: l'attore visualizza le posizioni dei sensori come icone su una mappa. 
- *Scenario Principale*:
  + l'attore accede al sistema; 
  + l'attore seleziona la visualizzazione della panoramica generale dei sensori;
  + il sistema elabora i dati e renderizza il pannello; 
  + l'attore visualizza il pannelo.
- *Specializzazioni*: nessuna.
- *Inclusioni*: nessuna. 
- *Estensioni*:  UC9 Visualizzazione errore nessun dato.

=== UC1.2: Visualizzazione tabella sensori
- *Attore Principale*: amministratore pubblico. 
- *Precondizioni*: nessuna.
- *Postcondizioni*: l'attore visualizza le posizioni dei sensori come icone su una mappa. 
- *Scenario Principale*:
  + l'attore accede al sistema; 
  + l'attore seleziona la visualizzazione della panoramica generale dei sensori;
  + il sistema elabora i dati e renderizza la tabella; 
  + l'attore visualizza il pannelo.
- *Specializzazioni*: nessuna.
- *Inclusioni*: nessuna.
- *Estensioni*:  UC9 Visualizzazione errore nessun dato. 

=== UC2: Visualizzazione dati ambientali
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: nessuna.
- *Postcondizioni*: l'attore visualizza pannelli contenenti dati relativi al dominio ambientale.
- *Scenario Principale*:
  + l'attore accede al sistema;
  + l'attore seleziona la visualizzazione del dominio ambientale;
  + il sistema elabora i dati e renderizza i pannelli relativi.
- *Specializzazioni*: nessuna.
- *Inclusioni*: nessuna.
- *Estensioni*: nessuna.

=== UC2.1: Visualizzazione pannello dati ambientali
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'attore ha selezionato la visualizzazione relativa al dominio dei dati ambientali.
- *Postcondizioni*: l'attore visualizza un pannello contenente dati relativi al dominio ambientale.
- *Scenario Principale*:
  + l'attore accede al sistema;
  + l'attore seleziona la visualizzazione del dominio ambientale;
  + il sistema elabora i dati e renderizza il pannello relativo.
- *Specializzazioni*: [UC2.2],[UC2.3],[UC2.4],[UC2.5],[UC2.6],[UC2.7],[UC2.8],[UC2.9],[UC2.10],[UC2.11],[UC2.12],[UC2.13],[UC2.14],[UC2.15],[UC2.16].
- *Inclusioni*: nessuna.
- *Estensioni*: [UC9].

=== UC3: Visualizzazione dati urbanistici
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: nessuna.
- *Postcondizioni*: l'attore visualizza pannelli contenenti dati relativi al dominio urbanistico.
- *Scenario Principale*:
  + l'attore accede al sistema;
  + l'attore seleziona la visualizzazione del dominio urbanistico;
  + il sistema elabora i dati e renderizza i pannelli relativi.
- *Specializzazioni*: nessuna.
- *Inclusioni*: nessuna.
- *Estensioni*: nessuna.

=== UC3.1: Visualizzazione pannello dati urbanistici
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'attore ha selezionato la visualizzazione relativa al dominio dei dati urbanistici.
- *Postcondizioni*: l'attore visualizza un pannello contenente dati relativi al dominio urbanistico.
- *Scenario Principale*:
  + l'attore accede al sistema;
  + l'attore seleziona la visualizzazione del dominio urbanistico;
  + il sistema elabora i dati e renderizza il pannello relativo.
- *Specializzazioni*: [UC3.2],[UC3.3],[UC3.4],[UC3.5],[UC3.6],[UC3.7],[UC3.8],[UC3.9],[UC3.10],[UC3.11],[UC3.12],[UC3.13],[UC3.14],[UC3.15],[UC3.16].
- *Inclusioni*: nessuna.
- *Estensioni*: [UC9].

=== UC3.2: Visualizzazione grafico a mappa della disponibilità parcheggi
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'attore ha selezionato la visualizzazione relativa al dominio dei dati urbanistici.
- *Postcondizioni*: l'attore visualizza un grafico a mappa atto ad indicare le disponibilità nei parcheggi. 
- *Scenario Principale*:
  + l'attore accede al sistema;
  + l'attore seleziona la visualizzazione del dominio urbanistico;
  + il sistema elabora i dati e renderizza il pannello relativo.
- *Specializzazioni*: nessuna. 
- *Inclusioni*: nessuna.
- *Estensioni*: nessuna.

=== UC3.3: Visualizzazione posizione e stato colonne ricarica
- *Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'attore ha selezionato la visualizzazione relativa al dominio dei dati urbanistici.
- *Postcondizioni*: l'attore visualizza un grafico a mappa atto ad indicare il wattaggio erogato e la disponibilità delle colonnine.  
- *Scenario Principale*:
  + l'attore accede al sistema;
  + l'attore seleziona la visualizzazione del dominio urbanistico;
  + il sistema elabora i dati e renderizza il pannello relativo.
- *Specializzazioni*: nessuna.
- *Inclusioni*: nessuna.
- *Estensioni*: nessuna.

=== UC3.4: Visualizzazione grafico a mappa intensità traffico
*Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'attore ha selezionato la visualizzazione relativa al dominio dei dati urbanistici.
- *Postcondizioni*: l'attore visualizza un grafico a mappa atto indicatere la distribuzione della congestione del traffico.
- *Scenario Principale*:
  + l'attore accede al sistema;
  + l'attore seleziona la visualizzazione del dominio urbanistico;
  + il sistema elabora i dati e renderizza il pannello relativo.
- *Specializzazioni*: nessuna.
- *Inclusioni*: nessuna.
- *Estensioni*: nessuna.

=== UC3.5: Visualizzazione posizione real time delle biciclette elettriche e relativa percentuale batteria
*Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'attore ha selezionato la visualizzazione relativa al dominio dei dati urbanistici.
- *Postcondizioni*: l'attore visualizza un grafico a mappa atto ad indicare la posizione e la percentuale delle batterie delle biciclette elettriche. 
- *Scenario Principale*:
  + l'attore accede al sistema;
  + l'attore seleziona la visualizzazione del dominio urbanistico;
  + il sistema elabora i dati e renderizza il pannello relativo.
- *Specializzazioni*: nessuna.
- *Inclusioni*: nessuna.
- *Estensioni*: nessuna.


=== UC3.6: Visualizzazione grafico a mappa relativo al numero connessioni a hotspot pubblici
*Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'attore ha selezionato la visualizzazione relativa al dominio dei dati urbanistici.
- *Postcondizioni*: l'attore visualizza un grafico a mappa atto ad indicare la densità delle conessioni a hotspot pubblici. 
- *Scenario Principale*:
  + l'attore accede al sistema;
  + l'attore seleziona la visualizzazione del dominio urbanistico;
  + il sistema elabora i dati e renderizza il pannello relativo.
- *Specializzazioni*: nessuna.
- *Inclusioni*: nessuna.
- *Estensioni*: nessuna.

=== UC3.7: Visualizzazione indicatore percentuale su mappa riempimento zone rifiuti
*Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'attore ha selezionato la visualizzazione relativa al dominio dei dati urbanistici.
- *Postcondizioni*: l'attore visualizza un grafico a mappa atto ad indicare lo stato di riempimento delle zone rifiuti. 
  + l'attore accede al sistema;
  + l'attore seleziona la visualizzazione del dominio urbanistico;
  + il sistema elabora i dati e renderizza il pannello relativo.
- *Specializzazioni*: nessuna.
- *Inclusioni*: nessuna.
- *Estensioni*: nessuna.

=== UC3.8: Visualizzazione grafico a mappa sul consumo elettrico
*Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'attore ha selezionato la visualizzazione relativa al dominio dei dati urbanistici.
- *Postcondizioni*: l'attore visualizza un grafico a mappa atto mostrare la distribuzione geografica del consumo elettrico.
  + l'attore accede al sistema;
  + l'attore seleziona la visualizzazione del dominio urbanistico;
  + il sistema elabora i dati e renderizza il pannello relativo.
- *Specializzazioni*: nessuna.
- *Inclusioni*: nessuna.
- *Estensioni*: nessuna.

=== UC3.9: Visualizzazione grafico a mappa sul consumo idrico
*Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'attore ha selezionato la visualizzazione relativa al dominio dei dati urbanistici.
- *Postcondizioni*: l'attore visualizza un grafico a mappa atto mostrare la distribuzione geografica del consumo idrico.
  + l'attore accede al sistema;
  + l'attore seleziona la visualizzazione del dominio urbanistico;
  + il sistema elabora i dati e renderizza il pannello relativo.
- *Specializzazioni*: nessuna.
- *Inclusioni*: nessuna.
- *Estensioni*: nessuna.

=== UC3.10: Visualizzazione grafico a mappa sul consumo del gas
*Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'attore ha selezionato la visualizzazione relativa al dominio dei dati urbanistici.
- *Postcondizioni*: l'attore visualizza un grafico a mappa atto mostrare la distribuzione geografica del consumo del gas.
  + l'attore accede al sistema;
  + l'attore seleziona la visualizzazione del dominio urbanistico;
  + il sistema elabora i dati e renderizza il pannello relativo.
- *Specializzazioni*: nessuna.
- *Inclusioni*: nessuna.
- *Estensioni*: nessuna.

=== UC 3.11: Visualizzazione time series del consumo elettrico
*Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'attore ha selezionato la visualizzazione relativa al dominio dei dati urbanistici.
- *Postcondizioni*: l'attore visualizza un pannello contenente i dati relativi al consumo elettrico in formato _time series_.
  + l'attore accede al sistema;
  + l'attore seleziona la visualizzazione del dominio urbanistico;
  + il sistema elabora i dati e renderizza il pannello relativo.
- *Specializzazioni*: nessuna.
- *Inclusioni*: nessuna.
- *Estensioni*: nessuna.

=== UC3.12: Visualizzazione time series del consumo idrico
*Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'attore ha selezionato la visualizzazione relativa al dominio dei dati urbanistici.
- *Postcondizioni*: l'attore visualizza un pannello contenente i dati relativi al consumo idrico in formato _time series_.
  + l'attore accede al sistema;
  + l'attore seleziona la visualizzazione del dominio urbanistico;
  + il sistema elabora i dati e renderizza il pannello relativo.
- *Specializzazioni*: nessuna.
- *Inclusioni*: nessuna.
- *Estensioni*: nessuna.

=== UC3.13: Visualizzazione time series del consumo del gas
*Attore Principale*: amministratore pubblico.
- *Precondizioni*: l'attore ha selezionato la visualizzazione relativa al dominio dei dati urbanistici.
- *Postcondizioni*: l'attore visualizza un pannello contenente i dati relativi al consumo del gas in formato _time series_.
  + l'attore accede al sistema;
  + l'attore seleziona la visualizzazione del dominio urbanistico;
  + il sistema elabora i dati e renderizza il pannello relativo.
- *Specializzazioni*: nessuna.
- *Inclusioni*: nessuna.
- *Estensioni*: nessuna.


=== UC7: Applicazione ordinamento colonne tabelle
- *Attore Principale*: amministratore pubblico. 
- *Precondizioni*: il sistema mostra una qualsisi tabella. 
- *Postcondizioni*: l'attore visualizza la tabella ordinata sulla base del valore della colonna selezionata.
- *Scenario Principale*:
  + l'attore clicca sull'opzione per ordinare la tabella sulla base di qualche valore;  
  + il sistema ordina la tabella sulla base del valore voluto.
- *Specializzazioni*: .nessuna. 
- *Inclusioni*: nessuna. 
- *Estensioni*: nessuna. 

=== UC8: Modifica layout pannelli
- *Attore Principale*: amministratore pubblico. 
- *Precondizioni*: l'attore sta visualizzando almeno un pannello. 
- *Postcondizioni*: l'attore visualizza il nuovo layout.
- *Scenario Principale*:
  + l'attore sposta o ridimensiona i pannelli a suo piacimento; 
  + il sistema renderizza i pannelli con il nuovo layout. 
- *Specializzazioni*: nessuna. 
- *Inclusioni*: nessuna. 
- *Estensioni*: nessuna.


=== UC9: Visualizzazione errore nessun dato
- *Attore Principale*: amministratore pubblico. 
- *Precondizioni*: il sistema non ha i dati necessari alla renderizzazione di un pannello. 
- *Postcondizioni*: l'attore visualizza il messaggio di errore.
- *Scenario Principale*:
  + l'attore vuole visualizzare qualche pannello [UC1.2] [UC1.1] [UC2.1] [UC3.1]; 
  + il sistema non ha i dati per renderizzarlo e mostra un messaggio di errore. 
- *Specializzazioni*: nessuna. 
- *Inclusioni*: nessuna. 
- *Estensioni*: nessuna. 

=== UC10: Inserimento dati temperatura
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persitito i dati inviati dal sensore.
- *Scenario Principale*:
  + il sensore effettua una rilevazione della temperatura;
  + il sensore formatta un messaggio da inviare al sistema;
  + il sensore invia il messaggio al sistema. 
- *Specializzazioni*: nessuna. 
- *Inclusioni*: UC27.
- *Estensioni*: nessuna. 

=== UC11: Inserimento dati umidità
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persitito i dati inviati dal sensore.
- *Scenario Principale*:
  + il sensore effettua una rilevazione dell'umidità;
  + il sensore formatta un messaggio da inviare al sistema;
  + il sensore invia il messaggio al sistema. 
- *Specializzazioni*: nessuna. 
- *Inclusioni*: UC27. 
- *Estensioni*: nessuna. 

=== UC12: Inserimento dati velocità e direzione del vento
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persitito i dati inviati dal sensore.
- *Scenario Principale*:
  + il sensore effettua una rilevazione della velocità e della direzione del vento;
  + il sensore formatta un messaggio da inviare al sistema;
  + il sensore invia il messaggio al sistema. 
- *Specializzazioni*: nessuna. 
- *Inclusioni*: UC27. 
- *Estensioni*: nessuna.

=== UC13: Inserimento dati precipitazioni
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persitito i dati inviati dal sensore.
- *Scenario Principale*:
  + il sensore effettua una rilevazione qauntitativa delle precipitazioni;
  + il sensore formatta un messaggio da inviare al sistema;
  + il sensore invia il messaggio al sistema. 
- *Specializzazioni*: nessuna. 
- *Inclusioni*: UC27. 
- *Estensioni*: nessuna.

=== UC14: Inserimento dati inquinamento aria
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persitito i dati inviati dal sensore.
- *Scenario Principale*:
  + il sensore effettua una rilevazione quantitativa dell'inquinamento dell'aria;
  + il sensore formatta un messaggio da inviare al sistema;
  + il sensore invia il messaggio al sistema. 
- *Specializzazioni*: nessuna. 
- *Inclusioni*: UC27. 
- *Estensioni*: nessuna.

=== UC15: Inserimento dati indice UV
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persitito i dati inviati dal sensore.
- *Scenario Principale*:
  + il sensore effettua una rilevazione dell'indice di Radiazione Ultravioletta (UV);
  + il sensore formatta un messaggio da inviare al sistema;
  + il sensore invia il messaggio al sistema. 
- *Specializzazioni*: nessuna. 
- *Inclusioni*: UC27. 
- *Estensioni*: nessuna.

=== UC16: Inserimento dati intensità acustica
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persitito i dati inviati dal sensore.
- *Scenario Principale*:
  + il sensore effettua una rilevazione  del livello sonoro;
  + il sensore formatta un messaggio da inviare al sistema;
  + il sensore invia il messaggio al sistema. 
- *Specializzazioni*: nessuna. 
- *Inclusioni*: UC27. 
- *Estensioni*: nessuna.

=== UC17: Inserimento dati livello bacini idrici
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persitito i dati inviati dal sensore.
- *Scenario Principale*:
  + il sensore effettua una rilevazione del livello del bacino idrico in cui è installato;
  + il sensore formatta un messaggio da inviare al sistema;
  + il sensore invia il messaggio al sistema. 
- *Specializzazioni*: nessuna. 
- *Inclusioni*: UC27. 
- *Estensioni*: nessuna.

=== UC18: Inserimento dati stato cielo
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persitito i dati inviati dal sensore.
- *Scenario Principale*:
  + il sensore effettua una rilevazione qualitativa dello stato del cielo;
  + il sensore formatta un messaggio da inviare al sistema;
  + il sensore invia il messaggio al sistema. 
- *Specializzazioni*: nessuna. 
- *Inclusioni*: UC27. 
- *Estensioni*: nessuna.

=== UC19: Inserimento dati disponibilità parcheggi
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persitito i dati inviati dal sensore.
- *Scenario Principale*:
  + il sensore rileva ingressi e uscite del parcheggio in cui è insallato;
  + il sensore formatta un messaggio da inviare al sistema;
  + il sensore invia il messaggio al sistema. 
- *Specializzazioni*: nessuna. 
- *Inclusioni*: UC27. 
- *Estensioni*: nessuna.

=== UC20: Inserimento dati colonne di ricarica
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persitito i dati inviati dal sensore.
- *Scenario Principale*:
  + il sensore effettua una rilevazione del voltaggio erogato dalla colonna di ricarica;
  + il sensore formatta un messaggio da inviare al sistema;
  + il sensore invia il messaggio al sistema. 
- *Specializzazioni*: nessuna. 
- *Inclusioni*: UC27. 
- *Estensioni*: nessuna.

=== UC21: Inserimento dati biciclette elettriche
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persitito i dati inviati dal sensore.
- *Scenario Principale*:
  + il sensore effettua una rilevazione della posizione e della percentuale della batteria della bicicletta elettrica su cui è installato;
  + il sensore formatta un messaggio da inviare al sistema;
  + il sensore invia il messaggio al sistema. 
- *Specializzazioni*: nessuna. 
- *Inclusioni*: UC27. 
- *Estensioni*: nessuna.

=== UC22: inserimento dati  connessioni hotspot
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persitito i dati inviati dal sensore.
- *Scenario Principale*:
  + il sensore effettua una rilevazione della quantità di connessioni sul hotspot a cui è associato;  
  + il sensore formatta un messaggio da inviare al sistema;
  + il sensore invia il messaggio al sistema. 
- *Specializzazioni*: nessuna. 
- *Inclusioni*: UC27. 
- *Estensioni*: nessuna.

=== UC23: inserimento dati riempimento zone ecologiche
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persitito i dati inviati dal sensore.
- *Scenario Principale*:
  + il sensore effettua una rilevazione del livello di riempimento del contenitore ecologico a cui è associato; 
  + il sensore formatta un messaggio da inviare al sistema;
  + il sensore invia il messaggio al sistema. 
- *Specializzazioni*: nessuna. 
- *Inclusioni*: UC27. 
- *Estensioni*: nessuna.

=== UC24: inserimento dati consumo elettrico 
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persitito i dati inviati dal sensore.
- *Scenario Principale*:
  + il sensore effettua una rilevazione del consumo elettrico dell'edificio in cui è installato; 
  + il sensore formatta un messaggio da inviare al sistema;
  + il sensore invia il messaggio al sistema. 
- *Specializzazioni*: nessuna. 
- *Inclusioni*: UC27. 
- *Estensioni*: nessuna.

=== UC25: inserimento dati consumo idrico 
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persitito i dati inviati dal sensore.
- *Scenario Principale*:
  + il sensore effettua una rilevazione del consumo idrico dell'edificio in cui è installato; 
  + il sensore formatta un messaggio da inviare al sistema;
  + il sensore invia il messaggio al sistema. 
- *Specializzazioni*: nessuna. 
- *Inclusioni*: UC27. 
- *Estensioni*: nessuna.

=== UC26: inserimento dati consumo di gas
- *Attore Principale*: sensore. 
- *Precondizioni*: il sensore è acceso e collegato al sistema. 
- *Postcondizioni*: il sistema ha persitito i dati inviati dal sensore.
- *Scenario Principale*:
  + il sensore effettua una rilevazione del consumo di gas dell'edificio in cui è installato; 
  + il sensore formatta un messaggio da inviare al sistema;
  + il sensore invia il messaggio al sistema. 
- *Specializzazioni*: nessuna. 
- *Inclusioni*: UC27. 
- *Estensioni*: nessuna



#set heading(numbering: "1.1")

= Requisiti

== Requisiti funzionali (obbligatori e desiderabili)
#table(
  columns: (auto, auto, 2fr),
  inset: 10pt,
  align: horizon,
  [*Codice*], [*Importanza*], [*Descrizione*],
  [*ROF1*],[Obbligatorio],[L’utente deve poter accedere all’applicazione senza dover effettuare l’autenticazione.],
  [*ROF2*],[Obbligatorio],[L’utente deve poter monitorare i dati provenienti dai sensori distribuiti nella città in tempo reale tramite una dashboard.],
  [*ROF3*],[Obbligatorio],[L’utente deve poter visualizzare una mappa della città con evidenziati la suddivisione in celle e il posizionamento dei sensori.],
  [*ROF4*],[Obbligatorio],[L’utente deve poter visualizzare indicatori numerici che rappresentano i dati correnti dei sensori nella città.],
  [*ROF5*],[Obbligatorio],[L’utente deve poter monitorare i dati provenienti dai sensori distribuiti in una cella in tempo reale tramite una dashboard.],
  [*ROF6*],[Obbligatorio],[L’utente deve poter visualizzare una mappa della cella con evidenziato il posizionamento dei sensori.],
  [*ROF7*],[Obbligatorio],[L’utente deve poter visualizzare indicatori numerici che rappresentano i dati correnti dei sensori nella cella.],
  [*ROF8*],[Obbligatorio],[L’utente deve poter visualizzare un registro di tutti i sensori all’interno della rete.],
  [*ROF9*],[Obbligatorio],[L’utente deve poter selezionare un singolo sensore.],
  [*ROF10*],[Obbligatorio],[L’utente deve poter visualizzare le informazioni pertinenti al sensore selezionato.],
  [*ROF11*],[Desiderabile],[L’utente deve poter modificare lo stato operativo del sensore selezionato.],
  [*ROF12*],[Obbligatorio],[L’utente deve poter impostare il periodo temporale per visualizzare i dati storici del sensore.],
  [*ROF13*],[Obbligatorio],[Il sistema notifica l’utente in caso di inserimento di date non valide.],
  [*ROF14*],[Obbligatorio],[L’utente deve poter visualizzare i dati storici del sensore selezionato.],
  [*ROF15*],[Obbligatorio],[Il sistema notifica l’utente in caso di rilevazione di anomalie nei dati sensoriali.],
  [*RDF16*],[Desiderabile],[Il sistema registra le anomalie rilevate nei dati sensoriali all’interno di un log.],
  [*ROF17*],[Obbligatorio],[Il sistema notifica l’utente quando i dati sensoriali superano soglie predefinite.],
  [*RDF18*],[Desiderabile],[L’utente deve poter configurare le soglie di monitoraggio dei dati sensoriali.],
  [*ROF19*],[Desiderabile],[L’utente deve poter visualizzare i trend temporali dei dati sensoriali.],
  [*RDF20*],[Desiderabile],[L’utente deve poter analizzare la correlazione tra dati provenienti da tipi diversi di sensori.],
  [*RDF21*],[Desiderabile],[L’utente deve poter confrontare dati provenienti da celle diverse.],
  [*RDF22*],[Desiderabile],[Il sistema notifica l’utente in caso di selezione di celle non comparabili.],
  [*ROF23*],[Obbligatorio],[L’utente deve poter filtrare i sensori in base alle loro caratteristiche.],
  [*RDF24*],[Desiderabile],[L’utente deve poter aggiungere un sensore reale alla rete di sensori esistenti.]
)

== Requisiti di qualità
#table(
  columns: (auto, auto, 2fr),
  inset: 10pt,
  align: horizon,
  [*Codice*], [*Importanza*], [*Descrizione*],
  [*ROQ1*],[Obbligatorio],[Il superamento di test che dimostrino il corretto funzionamento dei servizi utilizzati e delle funzionalità implementate. La copertura di test deve essere almeno dell'80% e deve essere dimostrata tramite report.],
  [*ROQ2*],[Obbligatorio],[Il sistema deve essere testato nella sua interezza tramite #glossary("test end-to-end")],
  [*ROQ3*],[Obbligatorio], [Viene richiesta una #glossary("documentazione") sulle scelte implementative e progettuali, che dovranno essere accompagnate da motivazioni.],
  [*ROQ4*],[Obbligatorio],[La documentazione dovrà riguardare anche problemi aperti ed eventuali possibili soluzioni da approfondire in futuro.]
)

== Requisiti di vincolo
#table(
  columns: (auto, auto, 2fr),
  inset: 10pt,
  align: horizon,
  [*Codice*], [*Importanza*], [*Descrizione*],
  [*ROV1*],[Obbligatorio],[La creazione di un simulatore di almeno una sorgente dati],
  [*ROV2*],[Obbligatorio],[La simulazione deve produrre dati realistici],
  [*ROV3*],[Obbligatorio],[I dati vanno raccolti in un database OLAP],
  [*ROV4*],[Obbligatorio],[I dati vanno passati ad un sistema di stream processing],
  [*ROV5*],[Obbligatorio],[Una dashboard che riporti almeno i dati di un sensore],
  [*RDV6*],[Desiderabile],[La simulazione di più sorgenti dati],
  [*RPV7*],[Opzionale],[Messa in evidenza di relazioni tra dati provenienti da sorgenti diverse],
  [*RPV8*],[Opzionale],[Un sistema di allerta che notifichi l'utente in caso di anomalie o eventi critici],
  [*RPV9*],[Opzionale],[La previsione di eventi futuri, basata su dati storici e attuali],
  [*RDV10*],[Desiderabile],[Una dashboard avanzata contenente: una mappa della città, widget e informazioni sui sensori (ad esempio il tipo di sensore, il modello, ecc.).]
)

== Tracciamento
=== Requisiti - Fonti
#table(
  columns: (auto, auto),
  inset: 10pt,
  align: horizon,
  [*Requisiti*], [*Fonti*],
  [ROF1], [Capitolato],
  [ROF2], [UC1],
  [ROF3], [UC1.1],
  [ROF4], [UC1.2],
  [ROF5], [UC2],
  [ROF6], [UC2.2],
  [ROF7], [UC2.2],
  [RPF8], [UC3],
  [ROF9], [UC4],
  [ROF10], [UC4],
  [RDF11], [UC5],
  [ROF12], [UC6],
  [RDF13], [UC6],
  [ROF14], [UC6],
  [RPF15], [UC7, UC7.1],
  [ROF16], [UC7.1],
  [RPF17], [UC7, UC7.2],
  [RDF18], [UC9],
  [ROF19], [UC10],
  [RDF20], [UC11, UC11.1],
  [RDF21], [UC11, UC11.2],
  [RDF22], [UC11.2],
  [ROF23], [UC13],
  [RDF24], [UC14],
  [ROQ1], [Capitolato],
  [ROQ2], [Capitolato],
  [ROQ3], [Capitolato],
  [ROQ4], [Capitolato],
  [ROV1], [Capitolato],
  [ROV2], [Capitolato],
  [ROV3], [Capitolato],
  [ROV4], [Capitolato],
  [RDV5], [Capitolato],
  [RPV6], [Capitolato],
  [RPV7], [Capitolato],
  [RPV8], [Verbale esterno],
  [RPV9], [Capitolato]
)

== Riepilogo
#table(
  columns: (auto, auto, auto, auto, auto),
  inset: 10pt,
  align: horizon,
  [*Tipologia*], [*Obbligatori*], [*Desiderabili*], [*Opzionali*], [*Totale*],
  [funzionali], [16], [8], [0], [24],
  [di qualità], [4], [0], [0], [4],
  [di vincolo], [5], [3], [2], [10]
)
