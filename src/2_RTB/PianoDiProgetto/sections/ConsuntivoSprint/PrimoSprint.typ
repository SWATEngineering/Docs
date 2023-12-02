#import "../../const.typ": Re_cost, Am_cost, An_cost, Ve_cost, Pr_cost, Pt_cost 

== Primo sprint
=== Rendicontazione ore a posteriori
I seguenti in tabella, sono i ruoli assunti per ogni componente del gruppo, durante questo sprint:
#table(
  columns: (160pt,auto,auto,auto,auto,auto,auto,120pt),
  align: center,
  [*Nominativo*],[*Re*],[*Am*],[*An*],[*Pt*],[*Pr*],[*Ve*],[*Totale per persona*],
  [Simone Caregnato],[-],[3 (+3)],[6 (+1)],[-],[-],[-],[9 (+4)],
  [Riccardo Alberto Costantin],[-],[-],[3 (+3)],[-],[-],[4 (-3)],[7],
  [Giacomo D'Ovidio],[-],[-],[3 (+3)],[-],[-],[4 (-4)],[7 (-1)],
  [Nancy Kalaj],[3 (+3)],[-],[4 (-1)],[-],[-],[-],[7 (+2)],
  [Matteo Rango],[-],[5 (+2)],[-],[-],[-],[5 (+5)],[10 (+7)],
  [Riccardo Toniolo],[3],[-],[-],[-],[4 (+4)],[-],[7 (+4)],
  [*Totale per ruolo*],[6 (+3)],[8 (+5)],[16 (+6)],[-],[4 (+4)],[13 (-2)],[47 (+16)]
)

#figure(
  image("../../assets/AreogrammiPartizioneOre/Effettivo/AreogrammaOrePrimoSprint.png", width: 75%),
  caption: [Areogramma della partizione delle ore per ruolo nel primo sprint.],
)

=== Rendicontazione costi a posteriori
In questo sprint, il costo per ogni ruolo assunto viene riportato in tabella:
#table(
  columns: (120pt,60pt,100pt),
  align: center,
  [*Ruolo*],[*Ore*],[*Costo [€]*],
  [Responsabile],[6 (+3)],[#(Re_cost * 6) (+90)],
  [Amministratore],[8 (+5)],[#(Am_cost * 8) (+100)],
  [Analista],[16 (+6)],[#(An_cost * 16) (+150)],
  [Progettista],[-],[-],
  [Programmatore],[4 (+4)],[#(Pr_cost * 4) (+60)],
  [Verificatore],[13 (-2)],[#(Ve_cost * 13) (-30)],
  [*Totale*],[47 (+16)],[995 (+370)],
  [*Rimanente*],[523],[10075]
)

#figure(
  image("../../assets/AreogrammiPartizioneCosti/Effettivo/AreogrammaCostiPrimoSprint.png", width: 75%),
  caption: [Areogramma del budget speso e rimanente preventivato per il primo sprint.],
)


=== Analisi a posteriori

Il team a seguito dell'incontro con la proponente si è accorto che sarebbero state necessarie delle ore da programmatore, per affrontarla il team ha avviato una turnazione dei ruoli straordinaria. 
Durante lo sprint non si sono manifestati problemi, tutti gli obiettivi sono stati raggiunti con successo. 


