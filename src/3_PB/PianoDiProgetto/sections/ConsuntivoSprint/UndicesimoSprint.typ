#import "../../const.typ": Re_cost, Am_cost, An_cost, Ve_cost, Pr_cost, Pt_cost
#import "../../functions.typ": rendicontazioneOreAPosteriori, rendicontazioneCostiAPosteriori, glossary


==== Consuntivo

*Inizio*: Venerdì 01/03/2024

*Fine*: Giovedì 07/03/2024 

#rendicontazioneOreAPosteriori(sprintNumber: "11")

#rendicontazioneCostiAPosteriori(sprintNumber: "11")

===== Analisi a posteriori
La retrospettiva ha evidenziato come il totale delle ore preventivato per questo #glossary("sprint") si possa dire rispettato. La differenza tra preventivo e consuntivo è infatti pari a tre ore, che sul totale preventivato di 60 ore lavorative costituiscono un distacco pari al 5%, più che accettabile. 
Si vuole evidenziare come nel corso di questo #glossary("sprint"), per la prima volta, il team abbia mantenuto una media pari a quasi 10 ore produttive al giorno. Questo è coerente con la disponibilità espressa dal team dopo la prima revisione #glossary[RTB] e con la necessità di ogni membro di raggiungere la seconda revisione #glossary[PB] avendo impiegato almeno 80 ore produttive, il minimo per poter concludere il progetto.
L'unica differenza significativa tra preventivo e consuntivo si può ritrovare nelle ore del ruolo di Amministratore: si era infatti erroneamente sottostimata la dimensione, in termini di ore produttive, delle task assegnate agli Amministratori. 
È stato inoltre rilevato che le ore assegnate all'attività di revisione, sebbene complessivamente non dissimili da quelle consuntivate, sono state distribuite su un numero esiguo di membri. Per questo motivo, nei prossimi #glossary[sprint] sarà bene distribuire il carico di lavoro su un numero maggiore di persone, evitando di concentrarlo su un unico individuo. Infatti, designando ripetutamente gli stessi membri del team come Verificatori, si rischia di limitare la diversità di prospettive applicate al processo di verifica, portando ad una mancanza di identificazione di potenziali problemi o miglioramenti e, a lungo andare, ad un abbassamento della qualità del lavoro svolto.

===== Aggiornamento della pianificazione e gestione dei rischi
Nel corso dello #glossary("sprint") in oggetto si è manifestato il rischio tecnologico RT1 o conoscenza tecnologica limitata: tale rischio si è concretizzato nell'utilizzo dello strumento Pydantic. Tuttavia, considerando il ruolo non centrale di tale libreria nell'#glossary[architettura] del progetto, il team ha optato per la sua rimozione.
In questo caso le misure preventive individuate non sono state efficaci nell'eludere il rischio: il team, sottovalutando la complessità dello strumento, non aveva immaginato che potesse creare dei rallentamenti nello sviluppo e, di conseguenza, non ha applicato le misure preventive individuate.
Come enunciato nell'analisi sopra, si è anche manifestato il rischio di comunicazione RC6 o ripetizioni nelle assegnazioni del ruolo di Verificatore: in particolare, sarebbe bene evitare scenari in cui gli stessi componenti del team vengono incaricati di verificare la #glossary[documentazione] ripetutamente, mentre altri il codice, senza che questi si scambino mai tali responsabilità; in futuro, dunque, il team ha intenzione di adottare una rotazione più efficace del ruolo, come delineato nelle misure preventive del rischio. 
Il team ha inoltre rilevato l'esigenza di intensificare il dialogo con l'azienda proponente: nonostante le misure preventive per il rischio di comunicazione RC3 (frequenza limitata nella comunicazione con la Proponente), siano chiare riguardo alla necessità di mantenere una frequenza di incontri, e di conseguente ricezione di feedback, perlomeno settimanale, non vi è stato alcun tipo di comunicazione con l'azienda da all'incirca due settimane. Di conseguenza, si è rimarcata la volontà di organizzare un incontro al più presto e, possibilmente, di reintrodurre la frequenza settimanale che ha caratterizzato il periodo antecedente l'#glossary[RTB]. 
Infine, nonostante non si sia propriamente manifestato il rischio di pianificazione RP3 o "Variazioni nei tempi e costi del progetto", la decisione del team di non effettuare la terza revisione #glossary[CA] (rintracciabile nel verbale interno del 04/03) ha comunque avuto un impatto sulla pianificazione: infatti, se nel preventivo a finire redatto in occasione dell' #glossary[RTB] erano state dedicate alcune risorse allo svolgimento della #glossary[CA], ora queste sono utilizzabili in preparazione alla #glossary[PB]. Perciò non solo viene aggiornata la pianificazione all'interno del _Piano di Progetto_ aumentando le ore produttive a disposizione per determinati ruoli (Responsabile, Amministratore, Programmatore e Verificatore), ma il team ha anche intenzione di aumentare ulteriormente il ritmo di lavoro per sfruttare efficacemente le risorse aggiuntive a disposizione. 

