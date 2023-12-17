#import "../../const.typ": Re_cost, Am_cost, An_cost, Ve_cost, Pr_cost, Pt_cost 

#let ruoli_ore = (
  Re: 2,
  Am:3,
  An:0,
  Pt:0,
  Pr:1,
  Ve:28,

)

#let costo_ruoli_ore=(
   Costo_Re: Re_cost * ruoli_ore.at("Re"),
   Costo_Am: Am_cost * ruoli_ore.at("Am"),
   Costo_An: An_cost * ruoli_ore.at("An"),
   Costo_Pt: Pt_cost * ruoli_ore.at("Pt"),
   Costo_Pr: Pr_cost * ruoli_ore.at("Pr"),
   Costo_Ve: Ve_cost * ruoli_ore.at("Ve"),
)

== Quattordicesimo sprint
=== Prospetto orario
I seguenti in tabella, sono i ruoli assunti per ogni componente del gruppo, durante questo sprint:
#table(
  columns: (160pt,auto,auto,auto,auto,auto,auto,120pt),
  align: center,
  [*Nominativo*],[*Re*],[*Am*],[*An*],[*Pt*],[*Pr*],[*Ve*],[*Totale per persona*],
  [Simone Caregnato],[-],[-],[-],[-],[-],[-],[-],
  [Riccardo Alberto Costantin],[2],[-],[-],[-],[-],[2],[4],
  [Giacomo D'Ovidio],[],[-],[-],[-],[-],[6],[6],
  [Nancy Kalaj],[-],[-],[-],[-],[1],[5],[6],
  [Matteo Rango],[-],[-],[-],[-],[],[6],[6],
  [Riccardo Toniolo],[-],[3],[-],[-],[-],[3],[6],
  [*Totale per ruolo*],[#ruoli_ore.at("Re")],[#ruoli_ore.at("Am")],[#ruoli_ore.at("An")],[#ruoli_ore.at("Pt")],[#ruoli_ore.at("Pr")],[#ruoli_ore.at("Ve")],[#ruoli_ore.values().sum()]
)

#figure(
  image("../../assets/AreogrammiPartizioneOre/Preventivato/AreogrammaOreQuattordicesimoSprint.png", width: 75%),
  caption: [Areogramma della partizione delle ore per ruolo nel quattordicesimo sprint.],
) 

#figure(
  image("../../assets/IstogrammiOreMembro/Preventivate/IstogrammaQuattordicesimoSprint.png", width: 75%),
  caption: [Isotgramma delle ore per membro nel quattordicesimo sprint.],
)


=== Prospetto economico
In questo sprint, il costo per ogni ruolo sarà come da tabella:
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
  [*Rimanente*],[70],[1095€]
)

#figure(
  image("../../assets/AreogrammiPartizioneCosti/Preventivato/AreogrammaCostiQuattordicesimoSprint.png", width: 75%),
  caption: [Areogramma del budget speso e rimanente preventivato per il quattordicesimo sprint.],
) 

#figure(
  image("../../assets/AreogrammiTotaliOre/Preventive/AreogrammaTotaleQuattordicesimoSprint.png", width: 75%),
  caption: [Areogramma delle ore totali e rimanenti nel quattordicesimo sprint.],
)