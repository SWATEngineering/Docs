#import "../../const.typ": Re_cost, Am_cost, An_cost, Ve_cost, Pr_cost, Pt_cost 

== Primo sprint
=== Prospetto orario
I seguenti in tabella, sono i ruoli assunti per ogni componente del gruppo, durante questo sprint:
#table(
  columns: (170pt,auto,auto,auto,auto,auto,auto,70pt),
  align: center,
  [*Nominativo*],[*Re*],[*Am*],[*An*],[*Pt*],[*Pr*],[*Ve*],[*Ore totali*],
  [Simone Caregnato],[-],[-],[10],[-],[-],[-],[10],
  [Riccardo Alberto Costantin],[-],[-],[-],[-],[-],[10],[10],
  [Giacomo D'Ovidio],[-],[-],[-],[-],[-],[10],[10],
  [Nancy Kalaj],[-],[-],[10],[-],[-],[-],[10],
  [Matteo Rango],[-],[10],[-],[-],[-],[-],[10],
  [Riccardo Toniolo],[10],[-],[-],[-],[-],[-],[10]
)

=== Prospetto economico
In questo sprint, il costo per ogni ruolo sarà come da tabella:
#table(
  columns: (120pt,60pt,100pt),
  align: center,
  [*Ruolo*],[*Ore*],[*Costo*],
  [Responsabile],[10],[#(Re_cost * 10)€],
  [Amministratore],[10],[#(Am_cost * 10)€],
  [Analista],[20],[#(An_cost * 20)€],
  [Progettista],[-],[-],
  [Programmatore],[-],[-],
  [Verificatore],[20],[#(Ve_cost * 20)€],
  [*Totale*],[60],[1300€]
)

#figure(
  image("../../assets/AreogrammiPartizioneOre/AreogrammaPrimoSprint.png", width: 100%),
  caption: [Areogramma partizione ore preventivate per lo sprint sprint],
)