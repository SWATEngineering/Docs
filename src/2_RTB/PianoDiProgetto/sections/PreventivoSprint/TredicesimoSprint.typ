#import "../../const.typ": Re_cost, Am_cost, An_cost, Ve_cost, Pr_cost, Pt_cost 

#let ruoli_ore = (
  Re: 2,
  Am:1,
  An:7,
  Pt:1,
  Pr:8,
  Ve:15,

)

#let costo_ruoli_ore=(
   Costo_Re: Re_cost * ruoli_ore.at("Re"),
   Costo_Am: Am_cost * ruoli_ore.at("Am"),
   Costo_An: An_cost * ruoli_ore.at("An"),
   Costo_Pt: Pt_cost * ruoli_ore.at("Pt"),
   Costo_Pr: Pr_cost * ruoli_ore.at("Pr"),
   Costo_Ve: Ve_cost * ruoli_ore.at("Ve"),
)

== Tredicesimo sprint
=== Prospetto orario
I seguenti in tabella, sono i ruoli assunti per ogni componente del gruppo, durante questo sprint:
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

#figure(
  image("../../assets/AreogrammiPartizioneOre/Preventivato/AreogrammaOreTredicesimoSprint.png", width: 75%),
  caption: [Areogramma della partizione delle ore per ruolo nel tredicesimo sprint.],
) 
#figure(
  image("../../assets/IstogrammiOreMembro/Preventivate/IstogrammaTredicesimoSprint.png", width: 75%),
  caption: [Isotgramma delle ore per membro nel tredicesimo sprint.],
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
  [*Rimanente*],[104],[1650€]
)

#figure(
  image("../../assets/AreogrammiPartizioneCosti/Preventivato/AreogrammaCostiTredicesimoSprint.png", width: 75%),
  caption: [Areogramma del budget speso e rimanente preventivato per il tredicesimo sprint.],
) 

#figure(
  image("../../assets/AreogrammiTotaliOre/Preventive/AreogrammaTotaleTredicesimoSprint.png", width: 75%),
  caption: [Areogramma delle ore totali e rimanenti nel tredicesimo sprint.],
)