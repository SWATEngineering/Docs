#import "../../const.typ": Re_cost, Am_cost, An_cost, Ve_cost, Pr_cost, Pt_cost
#import "../../functions.typ": rendicontazioneOreAPosteriori, rendicontazioneCostiAPosteriori, glossary


== Undicesimo #glossary[sprint]

*Inizio*: Venerdì 23/02/2024

*Fine*: Giovedì 29/02/2024 

#rendicontazioneOreAPosteriori(sprintNumber: "11")

#rendicontazioneCostiAPosteriori(sprintNumber: "11")

=== Analisi a posteriori
La retrospettiva ha evidenziato come il totale delle ore preventivato per questo #glossary("sprint") si possa dire rispettato. La differenza tra preventivo e consuntivo è infatti pari a tre ore, che sul totale preventivato di 60 ore lavorative costituiscono un distacco pari al 5%, più che accettabile. 
Si vuole evidenziare come nel corso di questo #glossary("sprint"), per la prima volta, il team abbia mantenuto una media pari a quasi 10 ore produttive al giorno. Questo è coerente con la disponibilità espressa dal team dopo la prima revisione #glossary[RTB] e con la necessità di ogni membro di raggiungere la seconda revisione #glossary[PB] avendo impiegato almeno 80 ore produttive, il minimo per poter concludere il progetto.
L'unica differenza significativa tra preventivo e consuntivo si può ritrovare nelle ore del ruolo di Amministratore: si era infatti erroneamente sottostimata la dimensione, in termini di ore produttive, delle task assegnate agli Amministratori. 
È stato inoltre rilevato che le ore assegnate all'attività di revisione, sebbene complessivamente non dissimili da quelle consuntivate, sono state distribuite su un numero esiguo di membri. Per questo motivo, nei prossimi #glossary[sprint] sarà bene distribuire il carico di lavoro su un numero maggiore di persone, evitando di concentrarlo su un unico individuo. Infatti, designando ripetutamente gli stessi membri del team come Verificatori, si rischia di limitare la diversità di prospettive applicate al processo di verifica, portando ad una mancanza di identificazione di potenziali problemi o miglioramenti e, a lungo andare, ad un abbassamento della qualità del lavoro svolto.

==== Aggiornamento della pianificazione e gestione dei rischi
Le riflessioni qui esplicitate non hanno portato a considerevoli cambiamenti nella pianificazione futura.
Nel corso dello #glossary("sprint") in oggetto si è manifestato il rischio tecnologico RT1 o conoscenza tecnologica limitata: tale rischio si è concretizzato nell'utilizzo dello strumento Pydantic. Tuttavia, considerando il ruolo non centrale di tale libreria nell'#glossary[architettura] del progetto, il team ha optato per la sua rimozione.
In questo caso le misure preventive individuate non sono state efficaci nell'eludere il rischio: il team, sottovalutando la complessità dello strumento, non aveva immaginato che potesse creare dei rallentamenti nello sviluppo e, di conseguenza, non ha applicato le misure preventive individuate.
/*SONO INCERTO SU QUESTA PARTE QUA ATTENDO UNA VALUTAZIONE DA PARTE DEL VERIFICATORE*/
Il team ha inoltre rilevato l'esigenza di intensificare il dialogo con l'azienda proponente: nonostante le misure preventive per il rischio di comunicazione RC3 (frequenza limitata nella comunicazione con la Proponente), siano chiare riguardo alla necessità di mantenere una frequenza di incontri, e di conseguente ricezione di feedback, perlomeno settimanale, non vi è stato alcun tipo di comunicazione con l'azienda da all'incirca due settimane. Di conseguenza, si è rimarcata la volontà di organizzare un incontro al più presto e, possibilmente, di reintrodurre la frequenza settimanale che ha caratterizzato il periodo antecedente l'#glossary[RTB]. 
