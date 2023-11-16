#import "../../const.typ": Re_cost, Am_cost, An_cost, Ve_cost, Pr_cost, Pt_cost 

== Primo incremento
=== Prospetto orario
I seguenti in tabella, sono i ruoli assunti per ogni componente del gruppo, durante questo incremento:
#table(
  columns: (170pt,auto,auto,auto,auto,auto,auto,70pt),
  align: center,
  [*Nominativo*],[*Re*],[*Am*],[*An*],[*Pt*],[*Pr*],[*Ve*],[*Ore totali*],
  [Simone Caregnato],[-],[-],[5],[-],[-],[-],[5],
  [Riccardo Alberto Costantin],[-],[-],[-],[-],[-],[5],[5],
  [Giacomo D'Ovidio],[-],[-],[-],[-],[-],[5],[5],
  [Nancy Kalaj],[-],[-],[5],[-],[-],[-],[5],
  [Matteo Rango],[-],[5],[-],[-],[-],[-],[5],
  [Riccardo Toniolo],[5],[-],[-],[-],[-],[-],[5]
)
=== Prospetto economico
In questo incremento, il costo per ogni ruolo sarà come da tabella:
#table(
  columns: (120pt,60pt,100pt),
  align: center,
  [*Ruolo*],[*Ore*],[*Costo*],
  [Responsabile],[5],[#(Re_cost * 5)€],
  [Amministratore],[5],[#(Am_cost * 5)€],
  [Analista],[10],[#(An_cost * 10)€],
  [Progettista],[-],[-],
  [Programmatore],[-],[-],
  [Verificatore],[10],[#(Ve_cost * 10)€],
  [*Totale*],[30],[650€]
)