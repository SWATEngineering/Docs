#import "../../const.typ": Re_cost, Am_cost, An_cost, Ve_cost, Pr_cost, Pt_cost 


// per il verificatore guarda il commento in basso contiene una miglioria della tabella
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

/*
ho pompato le ore da responsabile e amministratore perché all'inizio sono quelli che dovrebbero avviare i lavori e automatizzare le cose 
#let ruoli_ore = (
  Re: 6,
  Am:6,
  An:17,
  Pt:0,
  Pr:0,
  Ve:16,

)

#let costo_ruoli_ore=(
   Costo_Re: Re_cost * ruoli_ore.at("Re"),
   Costo_Am: Am_cost * ruoli_ore.at("Am"),
   Costo_An: An_cost * ruoli_ore.at("An"),
   Costo_Pt: Pt_cost * ruoli_ore.at("Pt"),
   Costo_Pr: Pr_cost * ruoli_ore.at("Pr"),
   Costo_Ve: Ve_cost * ruoli_ore.at("Ve"),
)

#table(
  columns: (160pt,auto,auto,auto,auto,auto,auto,120pt),
  align: center,
  [*Nominativo*],[*Re*],[*Am*],[*An*],[*Pt*],[*Pr*],[*Ve*],[*Totale per persona*],
  [Simone Caregnato],[-],[-],[-],[-],[-],[-],[-],
  [Riccardo Alberto Costantin],[-],[-],[-],[-],[-],[-],[],
  [Giacomo D'Ovidio],[],[-],[-],[-],[-],[-],[],
  [Nancy Kalaj],[-],[-],[-],[-],[-],[],[],
  [Matteo Rango],[-],[-],[-],[-],[],[-],[],
  [Riccardo Toniolo],[-],[-],[],[-],[-],[-],[],
  [*Totale per ruolo*],[#ruoli_ore.at("Re")],[#ruoli_ore.at("Am")],[#ruoli_ore.at("An")],[#ruoli_ore.at("Pt")],[#ruoli_ore.at("Pr")],[#ruoli_ore.at("Ve")],[#ruoli_ore.values().sum()]
)

#table(
  columns: (120pt,60pt,100pt),
  align: center,
  [*Ruolo*],[*Ore*],[*Costo*],
  [Responsabile],[#ruoli_ore.at("Re")],[#costo_ruoli_ore.at("Costo_Re")€],
  [Amministratore],[#ruoli_ore.at("Am")],[#costo_ruoli_ore.at("Costo_Am")€],
  [Analista],[#ruoli_ore.at("An")],[#costo_ruoli_ore.at("Costo_An")€],
  [Progettista],[#ruoli_ore.at("Pt")],[#costo_ruoli_ore.at("Costo_Pt") €],
  [Programmatore],[#ruoli_ore.at("Pr")],[#costo_ruoli_ore.at("Costo_Pr") €],
  [Verificatore],[#ruoli_ore.at("Ve")],[#costo_ruoli_ore.at("Costo_Ve")€],
  [*Totale*],[#ruoli_ore.values().sum()],[#costo_ruoli_ore.values().sum()],
  [*Rimanente*],[],[]
)
*/