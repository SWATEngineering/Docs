#import "../../const.typ": Re_cost, Am_cost, An_cost, Ve_cost, Pr_cost, Pt_cost
#import "../../functions.typ": rendicontazioneOreAPosteriori, rendicontazioneCostiAPosteriori, glossary


== Dodicesimo #glossary[sprint]

*Inizio*: Venerdì 08/03/2024

*Fine*: Giovedì 14/03/2024 

#rendicontazioneOreAPosteriori(sprintNumber: "12")

#rendicontazioneCostiAPosteriori(sprintNumber: "12")

=== Analisi a posteriori

Nella retrospettiva è stato evidenziato il rispetto del totale delle ore preventivate per questo #glossary[sprint] con una differenza di soli 30 minuti tra il preventivo e il consuntivo, il che costituisce un tasso di errore dell'1% circa (0.86%). È notevole come il team sia riuscito a gestire senza particolari intoppi un regime sostenuto di circa 60 ore produttive settimanali, dimostrando così impegno e coerenza nel rispettare le scadenze prefissate per arrivare il prima possibile alla seconda revisione #glossary[PB].
Nel consuntivo emerge che sono state consumate più ore da Amministratore rispetto a quanto preventivato, principalmente a causa della necessità di creare alcuni script per automatizzare l'ambiente di lavoro in merito al calcolo delle metriche della qualità del prodotto, richiedendo uno sforzo aggiuntivo.
Per quanto riguarda l'attività di codifica, si può affermare che, con l'ultima implementazione dei sensori urbanistici rimanenti, la parte del prodotto software relativa alla simulazione dei dati potrebbe essere considerata conclusa. Questo traguardo è stato raggiunto in breve tempo grazie ad una buona distribuzione del lavoro a carico dei Programmatori; infatti, ciascun membro del team si è dedicato allo sviluppo di uno o due sensori diversi nel corso degli ultimi due #glossary[sprint] e, in tal modo, il team è riuscito a realizzare gli 11 sensori previsti dall'_Analisi dei Requisiti_ e a coniugarli con la nuova #glossary[architettura].
Per quanto riguarda le ore impiegate dai Verificatori, queste sono state inferiori a quanto preventivato poiché il team si è concentrato prevalentemente sull'attività di codifica, dedicando relativamente meno tempo alla #glossary[documentazione]; infatti, il team ha ritenuto opportuno attendere che il prodotto software fosse sviluppato quasi nella sua interezza per applicare eventuali modifiche migliorative alle _Specifiche Tecniche_ e proseguire con la stesura del _Manuale Utente_.

==== Aggiornamento della pianificazione e gestione dei rischi

Durante lo #glossary[sprint] attuale, l'unico rischio che si è manifestato è stato il rischio RT1 - Conoscenze tecnologiche limitate. Il team ha incontrato delle difficoltà nel definire il metodo ottimale per condurre i test del prodotto e selezionare i software pertinenti. Nonostante il rischio sia stato parzialmente mitigato attraverso un incontro con la Proponente, dove si è discusso anche delle strategie da attuare per la parte di testing, non tutte le domande hanno ricevuto una risposta esaustiva e ciò ha contribuito a rallentare il processo decisionale. I componenti del team tenteranno di implementare i primi test di unità e di integrazione con le conoscenze attualmente in loro possesso e chiederanno un altro riscontro da parte della Proponente nell'arco di una settimana.