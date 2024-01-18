#import "meta.typ": inizio_incontro, fine_incontro, luogo_incontro
#import "functions.typ": glossary, team
#let participants = csv("participants.csv")

= Partecipanti
/ Inizio incontro: #inizio_incontro
/ Fine incontro: #fine_incontro
/ Luogo incontro: #luogo_incontro

#table(
  columns: (3fr, 1fr),
  [*Nome*], [*Durata presenza*],
  ..participants.flatten()
)
= Sintesi Elaborazione Incontro

/*************************************/
/*    INSERIRE SOTTO IL CONTENUTO    */ 
/*************************************/

== Conclusione del _Piano di Progetto_

L'incontro si è aperto discutendo lo stadio di avanzamento del _Piano di Progetto_ e quel che è necessario aggiungere con lo scopo di concluderne la stesura in vista della prima revisione #glossary[RTB]; in particolare, il team ha analizzato e approvato il nuovo preventivo redatto dal Responsabile, che implementa una ripartizione diversa delle ore produttive per ruolo e, di conseguenza, modifica il budget previsto inizialmente per lo svolgimento del progetto (da 11070€ a 11555€) pur mantenendo lo stesso numero di ore totali (95 a membro, ovvero 570). Le motivazioni che hanno guidato il team in questa decisione sono le seguenti:

- Le ore dedicate al ruolo di Responsabile sono aumentate nel nuovo preventivo (ne erano previste 60 inizialmente, ora 75) poiché il team ne ha già utilizzate 40 nel corso degli otto #glossary[sprint] previsti prima della revisione #glossary[RTB] e, considerando il trend attuale, le ore rimanenti non sarebbero state sufficienti a coprire gli #glossary[sprint] che compongono i periodi precedenti alle revisioni #glossary[PB] e #glossary[CA]. Inoltre, sono ormai molteplici le responsabilità connesse al ruolo di Responsabile (come sottolineato nelle _Norme di Progetto v1.0_), che non può essere lasciato vacante in nessuno degli #glossary[sprint];

- Le ore dedicate al ruolo di Amministratore sono aumentate significativamente nel nuovo preventivo (ne erano previste 48 inizialmente, ora 92) poiché il team ne ha già utilizzate ben 56 nel corso dei primi otto #glossary[sprint] e, di conseguenza, non erano rimaste più ore a disposizione per coprire gli #glossary[sprint] successivi alla revisione #glossary[RTB]. Si evince facilmente che alcuni componenti del team hanno dovuto utilizzare più ore di quelle assegnate loro inizialmente in questo ruolo, il che è principalmente dovuto al fatto che l'Amministratore è incaricato di portare avanti lo svolgimento di due documenti particolarmente rilevanti nel contesto della revisione #glossary[RTB], ossia le _Norme di Progetto v1.0_ e il _Piano di Qualifica v1.0_. Le ore nel nuovo preventivo ammontano a 92 e non di più in quanto è stato considerato il fatto che l'Amministratore coprirà verosimilmente meno responsabilità in futuro, non dovendosi occupare della stesura dei nuovi documenti previsti per la seconda revisione #glossary[PB];

- Le ore dedicate al ruolo di Progettista sono rimaste invariate nel nuovo preventivo (ne sono ancora previste 84) poiché il team ne ha utilizzata solo 1 all'inizio dello sviluppo del #glossary[PoC] (ma si è reso conto in seguito che il #glossary[PoC] non prevede essenzialmente alcun tipo di progettazione) e, di conseguenza, non si dispone di dati sufficienti per poter stabilire se il numero di ore necessiti di essere cambiato. La scelta più idonea è quindi quella di non modificare il preventivo iniziale in questo senso (almeno per il momento);

- Le ore dedicate al ruolo di Analista sono aumentate leggermente nel nuovo preventivo (ne erano previste 54 inizialmente, ora 58) poiché il team ne ha utilizzate 42 nel corso dei primi otto #glossary[sprint] e le ore rimanenti non avrebbero consentito di apportare modifiche sostanziali all'_Analisi dei Requisiti v1.0_ qualora fossero state necessarie in seguito alla revisione #glossary[RTB]. Il team ha utilizzato un maggior numero di ore rispetto al previsto a causa della necessità di riscrivere fondamentalmente dall'inizio la sezione dedicata ai casi d'uso (e i requisiti corrispondenti) in seguito al colloquio svolto con il professor Cardin dopo una prima stesura iniziale;

- Le ore dedicate al ruolo di Programmatore sono diminuite significativamente nel nuovo preventivo (ne erano previste 162 inizialmente, ora 124) poiché il team ne ha utilizzate solo 30 nel corso dei primi otto #glossary[sprint], il che è comprensibile visto che lo sviluppo del #glossary[PoC] non ha presentato difficoltà particolari o imprevisti, e si stima che le ore rimanenti secondo il nuovo preventivo siano più che sufficienti a portare a termine lo sviluppo del #glossary[MVP] in vista della revisione #glossary[PB] e ad aggiungere funzionalità in più in vista anche della revisione #glossary[CA];

- Le ore dedicate al ruolo di Verificatore sono diminuite nel nuovo preventivo (ne erano previste 162 inizialmente, ora 137), il team ne ha utilizzate 65 nel corso dei primi otto #glossary[sprint]. Le ore da Verificatore aumentano però rispetto a quelle da Programmatore in confronto al vecchio preventivo, in quanto ci si è resi conto che si tratta del ruolo che ha consumato il maggior numero di ore produttive in generale fino ad oggi e le responsabilità dei Verificatori non faranno che aumentare dopo la revisione #glossary[RTB]. Oltre alla revisione di documentazione e codice, saranno responsabili anche dello sviluppo di tutti i test per assicurare che il prodotto software soddisfi i requisiti di qualità che verranno specificati sempre più in dettaglio all'interno del _Piano di Qualifica_.

Infine, si è deciso di voler adottare un'automazione che crei le tabelle e i grafici pertinenti ai preventivi in modo simile a quella realizzata precedentemente per i consuntivi e di limitare i diagrammi di Gantt nella parte di pianificazione ai tre realizzati inizialmente per le tre #glossary[baseline] principali (le revisioni).

== Modifica del _Piano di Qualifica_

Il team ha successivamente discusso di come sia più appropriato riportare ed evidenziare gli effetti del nuovo budget preventivato (nuovo BAC o "Budget At Completion") all'interno del _Piano di Qualifica v1.0_. Durante la discussione sono state esplorate due alternative principali: applicare il nuovo BAC solo agli #glossary[sprint] successivi alla revisione #glossary[RTB], oppure iniziare ad applicarlo dallo #glossary[sprint] 7 (il quale coincide con la creazione del nuovo preventivo) in avanti. Il team ha scelto la seconda alternativa, con l'intenzione di evidenziare l'adattamento del team all'andamento del progetto fino al settimo #glossary[sprint]. In questo modo, si intende valutare se i valori accettabili stabiliti inizialmente per le metriche misurate fino a quel momento siano adeguati rispetto al nuovo BAC.

== Ultime migliorie da apportare al #glossary[PoC]

Il team ha deciso di implementare le ultime migliorie suggerite dalla Proponente al #glossary[PoC] in vista della revisione #glossary[RTB], ovvero l'aggiunta di tabelle contenenti i dati grezzi inviati dai simulatori di sensori e il filtraggio dei dati stessi utilizzando le #glossary[Grafana] variables.

== Data di candidatura alla revisione #glossary[RTB]

Infine, dato che sia l'_Analisi dei Requisiti v1.0_ che il #glossary[PoC] sono stati quasi ultimati del tutto, il team ha collettivamente deciso di candidarsi alla prima revisione #glossary[RTB] al termine dello #glossary[sprint] corrente, ossia il giorno 19 Gennaio 2024. Successivamente alla candidatura, il team prevede di ultimare la presentazione per il colloquio con il Committente Cardin e di avviare e terminare la revisione in stile #glossary[walkthrough] di tutta la documentazione rilevante per il secondo colloquio con il Committente Vardanega.

== Rotazione dei ruoli

- Matteo Rango: Programmatore;
- Simone Caregnato: Amministratore;
- Riccardo Toniolo: Verificatore;
- Riccardo Costantin: Verificatore;
- Nancy Kalaj: Responsabile;
- Giacomo D’Ovidio: Amministratore, Verificatore.