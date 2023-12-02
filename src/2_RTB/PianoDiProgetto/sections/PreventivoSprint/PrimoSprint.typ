#import "../../const.typ": Re_cost, Am_cost, An_cost, Ve_cost, Pr_cost, Pt_cost 

== Primo sprint
=== Prospetto orario
I seguenti in tabella, sono i ruoli assunti per ogni componente del gruppo, durante questo sprint:
#table(
  columns: (160pt,auto,auto,auto,auto,auto,auto,120pt),
  align: center,
  [*Nominativo*],[*Re*],[*Am*],[*An*],[*Pt*],[*Pr*],[*Ve*],[*Totale per persona*],
  [Simone Caregnato],[-],[-],[5],[-],[-],[-],[5],
  [Riccardo Alberto Costantin],[-],[-],[-],[-],[-],[7],[7],
  [Giacomo D'Ovidio],[-],[-],[-],[-],[-],[8],[8],
  [Nancy Kalaj],[-],[-],[5],[-],[-],[-],[5],
  [Matteo Rango],[-],[3],[-],[-],[-],[-],[3],
  [Riccardo Toniolo],[3],[-],[-],[-],[-],[-],[3],
  [*Totale per ruolo*],[3],[3],[10],[-],[-],[15],[31]
)

#figure(
  image("../../assets/AreogrammiPartizioneOre/Preventivato/AreogrammaOrePrimoSprint.png", width: 75%),
  caption: [Areogramma della partizione delle ore per ruolo nel primo sprint.],
)

=== Prospetto economico
In questo sprint, il costo per ogni ruolo sarà come da tabella:
#table(
  columns: (120pt,60pt,100pt),
  align: center,
  [*Ruolo*],[*Ore*],[*Costo*],
  [Responsabile],[3],[#(Re_cost * 3)€],
  [Amministratore],[3],[#(Am_cost * 3)€],
  [Analista],[10],[#(An_cost * 10)€],
  [Progettista],[-],[-],
  [Programmatore],[-],[-],
  [Verificatore],[15],[#(Ve_cost * 15)€],
  [*Totale*],[31],[625€],
  [*Rimanente*],[539],[10415€]
)

#figure(
  image("../../assets/AreogrammiPartizioneCosti/Preventivato/AreogrammaCostiPrimoSprint.png", width: 75%),
  caption: [Areogramma del budget speso e rimanente preventivato per il primo sprint.],
)
