#import "../../const.typ": Re_cost, Am_cost, An_cost, Ve_cost, Pr_cost, Pt_cost 

#let ruoli_ore = (
  Re: 5,
  Am:0,
  An:11,
  Pt:12,
  Pr:0,
  Ve:4,

)

#let costo_ruoli_ore=(
   Costo_Re: Re_cost * ruoli_ore.at("Re"),
   Costo_Am: Am_cost * ruoli_ore.at("Am"),
   Costo_An: An_cost * ruoli_ore.at("An"),
   Costo_Pt: Pt_cost * ruoli_ore.at("Pt"),
   Costo_Pr: Pr_cost * ruoli_ore.at("Pr"),
   Costo_Ve: Ve_cost * ruoli_ore.at("Ve"),
)

== Quinto sprint
=== Prospetto orario
I seguenti in tabella, sono i ruoli assunti per ogni componente del gruppo, durante questo sprint:
#table(
  columns: (160pt,auto,auto,auto,auto,auto,auto,120pt),
  align: center,
  [*Nominativo*],[*Re*],[*Am*],[*An*],[*Pt*],[*Pr*],[*Ve*],[*Totale per persona*],
  [Simone Caregnato],[-],[-],[-],[3],[-],[2],[3],
  [Riccardo Alberto Costantin],[-],[-],[3],[3],[-],[-],[6],
  [Giacomo D'Ovidio],[],[-],[6],[-],[-],[-],[6],
  [Nancy Kalaj],[-],[-],[-],[6],[-],[-],[6],
  [Matteo Rango],[-],[-],[2],[-],[-],[2],[4],
  [Riccardo Toniolo],[5],[-],[],[-],[-],[-],[5],
  [*Totale per ruolo*],[#ruoli_ore.at("Re")],[#ruoli_ore.at("Am")],[#ruoli_ore.at("An")],[#ruoli_ore.at("Pt")],[#ruoli_ore.at("Pr")],[#ruoli_ore.at("Ve")],[#ruoli_ore.values().sum()]
)

#figure(
  image("../../assets/AreogrammiPartizioneOre/Preventivato/AreogrammaOreQuintoSprint.png", width: 75%),
  caption: [Areogramma della partizione delle ore per ruolo nel quinto sprint.],
) 

#figure(
  image("../../assets/IstogrammiOreMembro/Preventivate/IstogrammaQuintoSprint.png", width: 75%),
  caption: [Isotgramma delle ore per membro nel quinto sprint.],
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
  [*Rimanente*],[372],[6770€]
)

 #figure(
  image("../../assets/AreogrammiPartizioneCosti/Preventivato/AreogrammaCostiQuintoSprint.png", width: 75%),
  caption: [Areogramma del budget speso e rimanente preventivato per il quinto sprint.],
) 

#figure(
  image("../../assets/AreogrammiTotaliOre/Preventive/AreogrammaTotaleQuintoSprint.png", width: 75%),
  caption: [Areogramma delle ore totali e rimanenti nel quinto sprint.],
)