#import "../../const.typ": Re_cost, Am_cost, An_cost, Ve_cost, Pr_cost, Pt_cost
#import "../../functions.typ": rendicontazioneOreAPosteriori, rendicontazioneCostiAPosteriori, glossary


== Quattordicesimo #glossary[sprint]

*Inizio*: Venerdì 22/03/2024

*Fine*: Giovedì 28/03/2024 

#rendicontazioneOreAPosteriori(sprintNumber: "14")

#rendicontazioneCostiAPosteriori(sprintNumber: "14")

=== Analisi a posteriori

La retrospettiva mostra che il team è stato in grado di rispettare le ore preventivate (61), impiegando 62.5 ore produttive per portare a termine le attività previste; questo #glossary[sprint] è stato dedicato fondamentalmente alla preparazione del prodotto software e dei documenti richiesti per la prima parte della seconda revisione #glossary[PB], ossia _Analisi dei Requisiti v2.0_ e _Specifica Tecnica v1.0_. 

==== Aggiornamento della pianificazione e gestione dei rischi

L'unico rischio che si è verificato nel corso dell'ultimo #glossary[sprint] è RP1 o "Comprensione erronea dei requisiti", dovuto non tanto ad ambiguità nei requisiti documentati all'interno dell'_Analisi dei Requisiti_ (che è stata corretta per tempo subito dopo l'#glossary[RTB] secondo le disposizioni del Prof. Cardin), ma piuttosto all'interpretazione che ne hanno fatto i componenti del team durante la progettazione e, di conseguenza, lo sviluppo del prodotto software. Infatti, certi dettagli implementativi specificati nel documento non sono stati presi in considerazione nel periodo di sviluppo successivo alla progettazione, con conseguenti discrepanze (seppur lievi) tra il contenuto dell'_Analisi dei Requisiti_ e il software. Di fronte a questo rischio, i continui momenti di verifica previsti dal #glossary[framework Scrum] hanno effettivamente consentito al team di accorgersi tempestivamente del problema e di adottare il giusto approccio per risolverlo: alcuni dei requisiti sono effettivamente stati rivisti nella loro formulazione per renderli più specifici e riflettere le scelte implementatative adottate nello sviluppo, ma la maggior parte del lavoro di refactoring è stata svolta sul software vero e proprio, per assicurarsi che rispettasse appieno quanto concordato con la Proponente. In altre parole, nonostante il rischio non abbia portato ad un dispendio di risorse aggiuntive particolarmente oneroso, sarebbe stato bene applicarsi per rispettare l'_Analisi dei Requisiti_ con estrema attenzione fin dall'inizio della progettazione, adottando un approccio "a priori". 