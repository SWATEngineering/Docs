#import "../../const.typ": Re_cost, Am_cost, An_cost, Ve_cost, Pr_cost, Pt_cost 

== Secondo sprint
=== Prospetto orario
I seguenti in tabella, sono i ruoli assunti per ogni componente del gruppo, durante questo sprint:
#table(
  columns: (160pt,auto,auto,auto,auto,auto,auto,120pt),
  align: center,
  [*Nominativo*],[*Re*],[*Am*],[*An*],[*Pt*],[*Pr*],[*Ve*],[*Totale per persona*],
  [Simone Caregnato],[-],[-],[-],[-],[6],[-],[6],
  [Riccardo Alberto Costantin],[-],[3],[-],[-],[-],[-],[3],
  [Giacomo D'Ovidio],[3],[-],[-],[-],[-],[-],[3],
  [Nancy Kalaj],[-],[-],[-],[-],[-],[5],[5],
  [Matteo Rango],[-],[-],[-],[-],[6],[-],[6],
  [Riccardo Toniolo],[-],[-],[4],[-],[-],[-],[4],
  [*Totale per ruolo*],[3],[3],[4],[-],[12],[5],[27]
)

#figure(
  image("../../assets/AreogrammiPartizioneOre/Preventivato/AreogrammaOreSecondoSprint.png", width: 75%),
  caption: [Areogramma della partizione delle ore per ruolo nel secondo sprint.],
)

=== Prospetto economico
In questo sprint, il costo per ogni ruolo sarà come da tabella:
#table(
  columns: (120pt,60pt,100pt),
  align: center,
  [*Ruolo*],[*Ore*],[*Costo*],
  [Responsabile],[3],[#(Re_cost * 3)€],
  [Amministratore],[3],[#(Am_cost * 3)€],
  [Analista],[4],[#(An_cost * 4)€],
  [Progettista],[-],[-],
  [Programmatore],[12],[#(Pr_cost * 12)€],
  [Verificatore],[5],[#(Ve_cost * 5)€],
  [*Totale*],[27],[505€],
  [*Rimanente*],[512],[9940€]
)

#figure(
  image("../../assets/AreogrammiPartizioneCosti/Preventivato/AreogrammaCostiSecondoSprint.png", width: 75%),
  caption: [Areogramma del budget speso e rimanente preventivato per il secondo sprint.],
)
