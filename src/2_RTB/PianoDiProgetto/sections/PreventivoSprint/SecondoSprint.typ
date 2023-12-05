#import "../../const.typ": Re_cost, Am_cost, An_cost, Ve_cost, Pr_cost, Pt_cost 

//per il verificatore guardare commento in basso 
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


/*
stesso discorso del preventivoprimo

#let ruoli_ore = (
  Re: 9,
  Am:8,
  An:8,
  Pt:0,
  Pr:20,
  Ve:8,

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