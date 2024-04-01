#import "../../const.typ": Re_cost, Am_cost, An_cost, Ve_cost, Pr_cost, Pt_cost
#import "../../functions.typ": rendicontazioneOreAPosteriori, rendicontazioneCostiAPosteriori, glossary


== Quattordicesimo #glossary[sprint]

*Inizio*: Venerdì 22/03/2024

*Fine*: Giovedì 28/03/2024 

#rendicontazioneOreAPosteriori(sprintNumber: "14")

#rendicontazioneCostiAPosteriori(sprintNumber: "14")

=== Analisi a posteriori

La retrospettiva dell'ultimo #glossary[sprint] prima della seconda revisione #glossary[PB] mostra che ancora una volta il team è stato in grado di rispettare le ore preventivate (61), impiegando 62.5 ore produttive per portare a termine le attività previste; non sorprende che la maggior parte delle ore siano state impiegate da Programmatori e Verificatori, dato che tra gli obiettivi della pianificazione vi erano la conclusione dello sviluppo del prodotto software e la revisione della #glossary[documentazione] in stile #glossary[walkthrough]. A tal proposito il team è riuscito a completare lo sviluppo del prodotto nei tempi previsti e lo presenterà alla Proponente in data 02/04/2024 per effettuare i test di accettazione ed ottenere la validazione dello stesso come #glossary[MVP]. La retrospettiva evidenzia anche che, al termine dei 6 #glossary[sprint] effettuati nel periodo di tempo trascorso tra l'#glossary[RTB] e la #glossary[PB] (effettivamente il numero di #glossary[sprint] che il team aveva previsto di dover utilizzare), le ore produttive rimanenti ammontano a 44.5 su 570 totali (7.8%) e, di conseguenza, il budget rimanente è di 847.5€ su 11.070€ totali (7.7%) a disposizione. 

Se si considera che secondo il preventivo aggiornato in occasione dell'#glossary[RTB] si dovevano avere 57 ore produttive rimanenti per lo svolgimento del periodo antecedente alla terza revisione #glossary[CA], è evidente che il team, una volta deciso di non volerla effettuare, ha accelerato il ritmo di lavoro per sfruttare anche le ore in più a disposizione in un lasso di tempo più breve, senza però riuscirci del tutto; tuttavia, bisogna sottolineare anche che, per quanto il team abbia tentato di riportare con accuratezza le ore produttive impiegate all'interno dello #glossary[spreadsheet] "Time & Resource Manager", è probabile che queste siano state sottostimate nella prima parte del progetto (prima della #glossary[PB]), dato che il rapporto ore orologio su ore produttive non era facilmente individuabile per ciascun componente e ha subito variazioni significative con l'avvento della sessione di esami (il che non si è verificato dopo l'#glossary[RTB]). Per questi motivi il team si ritiene comunque soddisfatto del proprio rendimento e, soprattutto, di essere riuscito a rispettare le scandenze temporali previste dopo l'#glossary[RTB], senza dover spostare la data di consegna una seconda volta. 

In occasione del termine della pianificazione, si riportano le ore cumulativamente utilizzate per ciascun ruolo rispetto a quelle preventivate per lo svolgimento di #glossary[RTB] e #glossary[PB]:

- Responsabile: 61.5 ore (contro le 63 preventivate);
- Amministratore: 83.5 ore (contro le 87 preventivate);
- Analista: 50 ore (contro le 54 preventivate);
- Progettista: 50 ore (contro le 60 preventivate);
- Programmatore: 135.5 ore (contro le 139 preventivate);
- Verificatore: 145 ore (contro le 167 preventivate).

==== Aggiornamento della pianificazione e gestione dei rischi

L'unico rischio che si è verificato nel corso dell'ultimo #glossary[sprint] è RP1 o "Comprensione erronea dei requisiti", dovuto non tanto ad ambiguità nei requisiti documentati all'interno dell'_Analisi dei Requisiti_ (che è stata corretta per tempo subito dopo l'#glossary[RTB] secondo le disposizioni del Prof. Cardin), ma piuttosto all'interpretazione che ne hanno fatto i componenti del team durante la progettazione e, di conseguenza, lo sviluppo del prodotto software. Infatti, certi dettagli implementativi specificati nel documento non sono stati presi in considerazione nel periodo di sviluppo successivo alla progettazione, con conseguenti discrepanze (seppur lievi) tra il contenuto dell'_Analisi dei Requisiti_ e il software. Di fronte a questo rischio, i continui momenti di verifica previsti dal #glossary[framework Scrum] hanno effettivamente consentito al team di accorgersi tempestivamente del problema e di adottare il giusto approccio per risolverlo: alcuni dei requisiti sono effettivamente stati rivisti nella loro formulazione per renderli più specifici e riflettere le scelte implementatative adottate nello sviluppo, ma la maggior parte del lavoro di refactoring è stata svolta sul software vero e proprio, per assicurarsi che rispettasse appieno quanto concordato con la Proponente. In altre parole, nonostante il rischio non abbia portato ad un dispendio di risorse aggiuntive particolarmente oneroso, sarebbe stato bene applicarsi per rispettare l'_Analisi dei Requisiti_ con estrema attenzione fin dall'inizio della progettazione, adottando un approccio "a priori". 