#import "../../../const.typ": Re_cost, Am_cost, An_cost, Ve_cost, Pr_cost, Pt_cost 

#let ruoli_ore = (
  Re: 6,
  Am:8,
  An:16,
  Pt:0,
  Pr:4,
  Ve:13,

)

#let costo_ruoli_ore=(
   Costo_Re: Re_cost * ruoli_ore.at("Re"),
   Costo_Am: Am_cost * ruoli_ore.at("Am"),
   Costo_An: An_cost * ruoli_ore.at("An"),
   Costo_Pt: Pt_cost * ruoli_ore.at("Pt"),
   Costo_Pr: Pr_cost * ruoli_ore.at("Pr"),
   Costo_Ve: Ve_cost * ruoli_ore.at("Ve"),
)

== Primo sprint
=== Rendicontazione ore a posteriori
I seguenti in tabella, sono i ruoli assunti per ogni componente del gruppo, durante questo sprint:
#table(
  columns: (160pt,auto,auto,auto,auto,auto,auto,120pt),
  align: center,
  [*Nominativo*],[*Re*],[*Am*],[*An*],[*Pt*],[*Pr*],[*Ve*],[*Totale per persona*],
  [Simone Caregnato],[-],[3 (+3)],[6 (-4)],[-],[-],[-],[9 (-1)],
  [Riccardo Alberto Costantin],[-],[-],[3 (+3)],[-],[-],[4 (-4)],[7(-1)],
  [Giacomo D'Ovidio],[-],[-],[3 (+3)],[-],[-],[4 (-4)],[7 (-1)],
  [Nancy Kalaj],[3 (+3)],[-],[4 (-3)],[-],[-],[-],[7],
  [Matteo Rango],[-],[5 (-1)],[-],[-],[-],[5 (+5)],[10 (+4)],
  [Riccardo Toniolo],[3 (-3)],[-],[-],[-],[4 (+4)],[-],[7 (+1)],
  [*Totale per ruolo*],[#ruoli_ore.at("Re")],[#ruoli_ore.at("Am")],[#ruoli_ore.at("An")],[#ruoli_ore.at("Pt")],[#ruoli_ore.at("Pr")],[#ruoli_ore.at("Ve")],[#ruoli_ore.values().sum()]
)

#figure(
  image("../../../assets/AreogrammiPartizioneOre/Effettivo/AreogrammaOrePrimoSprint.png", width: 75%),
  caption: [Areogramma della partizione delle ore per ruolo nel primo sprint.],
)

#figure(
  image("../../../assets/IstogrammiOreMembro/Effettive/IstogrammaPrimoSprint.png", width: 75%),
  caption: [Istogramma delle ore svolte per persona nel primo sprint.],
)

=== Rendicontazione costi a posteriori
In questo sprint, il costo per ogni ruolo assunto viene riportato in tabella:
#table(
  columns: (120pt,60pt,100pt),
  align: center,
  [*Ruolo*],[*Ore*],[*Costo*],
  [Responsabile],[#ruoli_ore.at("Re")],[#costo_ruoli_ore.at("Costo_Re")€],
  [Amministratore],[#ruoli_ore.at("Am") (+2)],[#costo_ruoli_ore.at("Costo_Am")€ (+40€)],
  [Analista],[#ruoli_ore.at("An") (-1)],[#costo_ruoli_ore.at("Costo_An")€ (-25€)],
  [Progettista],[#ruoli_ore.at("Pt")],[#costo_ruoli_ore.at("Costo_Pt") €],
  [Programmatore],[#ruoli_ore.at("Pr") (+4)],[#costo_ruoli_ore.at("Costo_Pr") € (+60€)],
  [Verificatore],[#ruoli_ore.at("Ve") (-3)],[#costo_ruoli_ore.at("Costo_Ve")€ (-45€)],
  [*Totale*],[#ruoli_ore.values().sum() (+2)],[#costo_ruoli_ore.values().sum() (+30)],
  [*Rimanente*],[523],[10.075€]
)

#figure(
  image("../../../assets/AreogrammiPartizioneCosti/Effettivo/AreogrammaCostiPrimoSprint.png", width: 75%),
  caption: [Areogramma del budget speso e rimanente preventivato per il primo sprint.],
)

#figure(
  image("../../../assets/AreogrammiTotaliOre/Effettive/AreogrammaTotalePrimoSprint.png", width: 75%),
  caption: [Areogramma delle ore svolte e rimanenti nel primo sprint.],
)


=== Analisi a posteriori

Dopo l'incontro con la Proponente, il team ha identificato la necessità di impiegare delle ore da programmatore. Di conseguenza, il team ha avviato una turnazione straordinaria dei ruoli per gestire questa richiesta.
Durante lo sprint non si sono manifestati problemi, tutti gli obiettivi sono stati raggiunti con successo. 


