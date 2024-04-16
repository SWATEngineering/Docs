#import "../../const.typ": Re_cost, Am_cost, An_cost, Ve_cost, Pr_cost, Pt_cost
#import "../../functions.typ": rendicontazioneOreAPosteriori, rendicontazioneCostiAPosteriori, glossary, team


==== Consuntivo

*Inizio*: Venerdì 29/03/2024

*Fine*: Giovedì 04/04/2024 

#rendicontazioneOreAPosteriori(sprintNumber: "15")

#rendicontazioneCostiAPosteriori(sprintNumber: "15")

=== Analisi a posteriori

La retrospettiva dell'ultimo #glossary[sprint] prima della seconda revisione #glossary[PB] mostra che ancora una volta il team è stato in grado di rispettare le ore preventivate, impiegando 29.5 ore produttive per portare a termine le attività previste; non sorprende che la maggior parte delle ore siano state impiegate dai Verificatori, dato che tra gli obiettivi della pianificazione vi erano la conclusione dello sviluppo del prodotto software e la revisione della #glossary[documentazione] in stile #glossary[walkthrough]. A tal proposito il team è riuscito a completare lo sviluppo del prodotto nei tempi previsti e lo ha presentato alla Proponente in data 02/04/2024 per effettuare i test di accettazione ed ottenere la validazione dello stesso come #glossary[MVP]. La retrospettiva evidenzia anche che, al termine dei 7 #glossary[sprint] effettuati nel periodo di tempo trascorso tra l'#glossary[RTB] e la #glossary[PB], le ore produttive rimanenti ammontano a 15 su 570 totali (2.6%) e, di conseguenza, il budget rimanente è di 282.5€ su 11.070€ totali (2.6%) a disposizione. 

Se si considera che secondo il preventivo aggiornato in occasione dell'#glossary[RTB] si dovevano avere 57 ore produttive rimanenti per lo svolgimento del periodo antecedente alla terza revisione #glossary[CA], è evidente che il team, una volta deciso di non volerla effettuare, ha accelerato il ritmo di lavoro per sfruttare anche le ore in più a disposizione in un lasso di tempo più breve, senza però riuscirci del tutto; tuttavia, bisogna sottolineare anche che, per quanto il team abbia tentato di riportare con accuratezza le ore produttive impiegate all'interno dello #glossary[spreadsheet] "Time & Resource Manager", è probabile che queste siano state sottostimate nella prima parte del progetto (prima della #glossary[PB]), dato che il rapporto ore orologio su ore produttive non era facilmente individuabile per ciascun componente e ha subito variazioni significative con l'avvento della sessione di esami (il che non si è verificato dopo l'#glossary[RTB]). Per questi motivi il team si ritiene comunque soddisfatto del proprio rendimento e, soprattutto, di essere riuscito a rispettare le scadenze temporali previste dopo l'#glossary[RTB]. 

In occasione del termine della pianificazione, si riportano le ore cumulativamente utilizzate per ciascun ruolo rispetto a quelle preventivate per lo svolgimento di #glossary[RTB] e #glossary[PB]:

- Responsabile: 62.5 ore (contro le 63 preventivate);
- Amministratore: 86 ore (contro le 87 preventivate);
- Analista: 50.5 ore (contro le 54 preventivate);
- Progettista: 59 ore (contro le 60 preventivate);
- Programmatore: 137 ore (contro le 139 preventivate);
- Verificatore: 160 ore (contro le 167 preventivate).

Si riportano anche le ore utilizzate per ruolo da parte di ogni componente del team #team rispetto a quelle preventivate per lo svolgimento di #glossary[RTB] e #glossary[PB]:

#figure(
table(
      columns:(auto,auto,auto,auto,auto,auto,auto,auto),
      align: (x, y) => (center,center,center,center,center,center,center,center).at(x),
      fill:(_,row) =>if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Membro*],[*Re*],[*Am*],[*An*],[*Pt*],[*Pr*],[*Ve*],[*Ore totali per membro*],
      [Simone Caregnato],[9],[15],[10],[9],[23],[26],[92],
      [Riccardo Costantin],[9],[14],[8],[11],[22],[29],[93],
      [Giacomo D'Ovidio],[8],[16],[9],[10],[23],[27],[93],
      [Nancy Kalaj],[15],[13],[9],[9],[22],[25],[93],
      [Matteo Rango],[11.5],[14],[6.5],[10],[23],[27],[92],
      [Riccardo Toniolo],[10],[14],[8],[10],[24],[26],[92],
      [*Ore totali per ruolo*],[62.5],[86],[50.5],[59],[137],[160],[*555*],
),
caption: [Ore utilizzate per ruolo da ogni componente del team.]
)
