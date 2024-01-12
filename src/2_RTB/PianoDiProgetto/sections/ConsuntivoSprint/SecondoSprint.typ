#import "../../const.typ": Re_cost, Am_cost, An_cost, Ve_cost, Pr_cost, Pt_cost
#import "../../functions.typ": rendicontazioneOreAPosteriori, rendicontazioneCostiAPosteriori, glossary


== Secondo #glossary[sprint]
#rendicontazioneOreAPosteriori(sprintNumber: "02")

#rendicontazioneCostiAPosteriori(sprintNumber: "02")

=== Analisi a posteriori

Il consuntivo delinea come il numero di ore preventivate sia ancora notevolmente inferiore rispetto a quelle effettivamente utilizzate, in questo caso non a causa di una pianificazione irrealistica (dato che le ore preventivate sono simili in numero a quelle effettive dello #glossary[sprint] precedente), ma principalmente a causa di un imprevisto pertinente all'_Analisi dei Requisiti_; infatti, dal consuntivo emerge una notevole sottostima del tempo richiesto al ruolo di Analista. Ciò è dovuto al fatto che il team, dopo il colloquio con il professor Cardin e una discussione con la Proponente, si è focalizzato sulla ristrutturazione della maggior parte del documento, il che ha richiesto un notevole sforzo aggiuntivo. 
Inoltre, dato che era previsto che i componenti assumessero più di un ruolo nel corso di questo #glossary[sprint], i ruoli sono stati nuovamente ruotati a metà di esso. L'emergere del rischio RC5 o Context Switch si è rivelato di difficile gestione a metà #glossary[sprint], senza che vi fosse un'occasione di stabilire con precisione il progresso attuale del team rispetto alla prossima #glossary["Milestone"]. In particolare, la costrizione a dover passare un lavoro incompleto ad un altro membro del team, a causa del cambio dei ruoli, non si è rivelata una scelta efficiente. Questo è uno dei motivi per i quali si è deciso di adottare #glossary[sprint] di una settimana e, di conseguenza, preventivare un quantitativo più piccolo di ore in futuro (pur mantenendo la possibilità per i membri di assumere più di un ruolo). 

Ciononostante, il team ha portato a termine gli obiettivi prefissati nei tempi previsti, aggiungendo una pianificazione a lungo termine (fino alla CA) al _Piano di Progetto_, ultimando una prima ristesura dei casi d'uso nell'_Analisi dei Requisiti_ e ultimando anche una prima versione funzionante del PoC. Oltre al rischio citato sopra, l'unico altro rischio degno di nota è stato nuovamente RT1 o Conoscenza tecnologica limitata, ma è stato utilizzato l'approccio di lavoro in coppia, decidendo di assegnare le attività relative allo sviluppo del PoC a due Programmatori che hanno lavorato sinergisticamente e spesso in modalità sincrona per compensare le proprie lacune e velocizzare la terminazione della prima versione.