#import "../functions.typ": glossary, team

= Consuntivo

Si esaminano attentamente le risorse effettivamente impiegate durante ciascuno #glossary[sprint], confrontandole con le previsioni iniziali. Attraverso questa analisi, si vogliono identificare eventuali scostamenti dal piano iniziale e reagire di conseguenza, in modo tale da apportare un miglioramento continuo. 
Si riportano inoltre gli elementi positivi e negativi emersi all'interno delle retrospettive di ogni #glossary[sprint], eventuali rischi incorsi e la valutazione del relativo processo di mitigazione, in modo tale da portare eventuali miglioramenti alla sezione *Analisi dei rischi*. 


#include "ConsuntivoSprint/PrimoSprint.typ"
#include "ConsuntivoSprint/SecondoSprint.typ"
#include "ConsuntivoSprint/TerzoSprint.typ"
#include "ConsuntivoSprint/QuartoSprint.typ"
#include "ConsuntivoSprint/QuintoSprint.typ"
#include "ConsuntivoSprint/SestoSprint.typ"
#include "ConsuntivoSprint/SettimoSprint.typ"
#include "ConsuntivoSprint/OttavoSprint.typ"
#include "ConsuntivoSprint/NonoSprint.typ"
#include "ConsuntivoSprint/DecimoSprint.typ"
#include "ConsuntivoSprint/UndicesimoSprint.typ"
#include "ConsuntivoSprint/DodicesimoSprint.typ"
#include "ConsuntivoSprint/TredicesimoSprint.typ"
#include "ConsuntivoSprint/QuattordicesimoSprint.typ"
#include "ConsuntivoSprint/QuindicesimoSprint.typ"

#pagebreak()
== Consuntivo generale

Se si considera che secondo il preventivo aggiornato in occasione dell'#glossary[RTB] si dovevano avere 57 ore produttive rimanenti per lo svolgimento del periodo antecedente alla terza revisione #glossary[CA], è evidente che il team, una volta deciso di non volerla effettuare, ha accelerato il ritmo di lavoro per sfruttare anche le ore in più a disposizione in un lasso di tempo più breve, senza però riuscirci del tutto; tuttavia, bisogna sottolineare anche che, per quanto il team abbia tentato di riportare con accuratezza le ore produttive impiegate all'interno dello #glossary[spreadsheet] "Time & Resource Manager", è probabile che queste siano state sottostimate nella prima parte del progetto (prima della #glossary[PB]), dato che il rapporto ore orologio su ore produttive non era facilmente individuabile per ciascun componente e ha subito variazioni significative con l'avvento della sessione di esami (il che non si è verificato dopo l'#glossary[RTB]). Per questi motivi il team si ritiene comunque soddisfatto del proprio rendimento e, soprattutto, di essere riuscito a rispettare le scandenze temporali previste dopo l'#glossary[RTB]. 

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

Si riporta, infine, il budget utilizzato per ruolo da parte di ogni componente del team #team rispetto a quello preventivato per lo svolgimento di #glossary[RTB] e #glossary[PB]:

#figure(
table(
      columns:(auto,auto,auto,auto,auto,auto,auto,auto),
      align: (x, y) => (center,center,center,center,center,center,center,center).at(x),
      fill:(_,row) =>if row==0 {luma(150)} else if calc.odd(row) { luma(220)} else {white},
      [*Membro*],[*Re*],[*Am*],[*An*],[*Pt*],[*Pr*],[*Ve*],[*Totale per membro (€)*],
      [Simone Caregnato],[270],[300],[250],[225],[345],[390],[1780],
      [Riccardo Costantin],[270],[280],[200],[275],[330],[435],[1790],
      [Giacomo D'Ovidio],[240],[320],[225],[250],[345],[405],[1785],
      [Nancy Kalaj],[450],[260],[225],[225],[330],[375],[1865],
      [Matteo Rango],[345],[280],[162.5],[250],[345],[405],[1787.5],
      [Riccardo Toniolo],[300],[280],[200],[250],[360],[390],[1780],
      [*Costo totale per ruolo*],[1875],[1720],[1262.5],[1475],[2055],[2400],[*10,787.5*],
),
caption: [Budget utilizzato per ruolo da ogni componente del team.]
)