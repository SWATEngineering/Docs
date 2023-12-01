#import "../../const.typ": Re_cost, Am_cost, An_cost, Ve_cost, Pr_cost, Pt_cost 

== Primo sprint

=== Rendicontazione ore a posteriori
I seguenti in tabella, sono i ruoli assunti per ogni componente del gruppo, durante questo sprint:
#table(
  columns: (170pt,auto,auto,auto,auto,auto,auto,70pt),
  align: center,
  [*Nominativo*],[*Re*],[*Am*],[*An*],[*Pt*],[*Pr*],[*Ve*],[*Ore totali*],
  [Simone Caregnato],[-],[5],[5],[-],[-],[-],[10],
  [Riccardo Alberto Costantin],[-],[-],[5],[-],[-],[5],[10],
  [Giacomo D'Ovidio],[-],[-],[5],[-],[-],[5],[10],
  [Nancy Kalaj],[5],[-],[5],[-],[-],[-],[10],
  [Matteo Rango],[-],[5],[-],[-],[-],[5],[10],
  [Riccardo Toniolo],[5],[-],[-],[-],[5],[-],[10]
)

=== Rendicontazione costi a posteriori 
In questo sprint, il costo per ogni ruolo sarà come da tabella:
#table(
  columns: (120pt,60pt,100pt),
  align: center,
  [*Ruolo*],[*Ore*],[*Costo*],
  [Responsabile],[10],[#(Re_cost * 10)€],
  [Amministratore],[10],[#(Am_cost * 10)€],
  [Analista],[20],[#(An_cost * 20)€],
  [Progettista],[-],[-],
  [Programmatore],[5],[#(Pr_cost * 5)€],
  [Verificatore],[15],[#(Ve_cost * 15)€],
  [*Totale*],[60],[1300€]
)

#figure(
  image("../../assets/AreogrammiPartizioneOre/AreogrammaConsuntivoPrimoSprint.png", width: 80%),
  caption: [Areogramma partizione ore effettive per lo sprint],
)


=== Note a posteriori

Il team a seguito dell'incontro con la proponente si è accorto che sarebbero state necessarie delle ore da programmatore, per affrontarla il team ha avviato una turnazione dei ruoli straordinaria. 
Durante lo sprint non si sono manifestati problemi, tutti gli obiettivi sono stati raggiunti con successo. 
Il costo totale dello sprint nonostante il cambio di ruoli rimane il medesimo. 


