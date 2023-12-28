#import "../../../functions.typ" : read_values, create_members_rows, role_sum, sum_row, create_rule_rows, total_cost
#import "../../../const.typ": Re_cost, Am_cost, An_cost, Ve_cost, Pr_cost, Pt_cost

#let h_cost  = ( Re_cost,Am_cost,An_cost,Pt_cost,Pr_cost,Ve_cost )

#let csvPreventivo = csv("ore_preventivo.csv")
#let csvConsuntivo = csv("ore_consuntivo.csv")
#let trace = csv("../../../trace.csv")

#let sprint = trace.at(1)
#let hours = sprint.at(0)
#let budget = sprint.at(1)

#let names = ("Simone Caregnato","Riccardo Alberto Costantin", "Giacomo D'Ovidio", "Nancy Kalaj","Matteo Rango", "Riccardo Toniolo")
#let rules = ("Responsabile","Amministratore","Analista","Progettista","Programmatore","Verificatore")

#let valuesConsuntivo = read_values(csvConsuntivo)
#let valuesPreventivo = read_values(csvPreventivo)

#let members_rows = create_members_rows(names, valuesPreventivo, valuesConsuntivo)

#let consuntivoSumList = role_sum(valuesConsuntivo)
#let sum_row = sum_row(consuntivoSumList)

== Primo sprint

=== Rendicontazione ore a posteriori
I seguenti in tabella, sono i ruoli assunti per ogni componente del gruppo, durante questo sprint:
#table(
  columns: (130pt,40pt,40pt,40pt,40pt,40pt,40pt,80pt),
  align: center,
  [*Nominativo*],[*Re*],[*Am*],[*An*],[*Pt*],[*Pr*],[*Ve*],[*Totale per persona*],
  ..members_rows.flatten(),
  [*Totale per ruolo*],..sum_row.flatten()
)

#figure(
  image("../../../assets/AreogrammiPartizioneOre/Effettivo/AreogrammaOrePrimoSprint.png", width: 75%),
  caption: [Areogramma della partizione delle ore per ruolo nel primo sprint.],
)

#figure(
  image("../../../assets/IstogrammiOreMembro/Effettive/IstogrammaPrimoSprint.png", width: 75%),
  caption: [Istogramma delle ore svolte per persona nel primo sprint.],
)

#let preventivoSumList = role_sum(valuesPreventivo)
#let rule_rows = create_rule_rows(rules, preventivoSumList, consuntivoSumList, h_cost)

=== Rendicontazione costi a posteriori
In questo sprint, il costo per ogni ruolo assunto viene riportato in tabella:
#table(
  columns: (120pt,60pt,100pt),
  align: center,
  [*Ruolo*],[*Ore*],[*Costo*],
  ..rule_rows.flatten(),
  [*Totale*],str(consuntivoSumList.sum()), str(total_cost(consuntivoSumList, h_cost)) + "€",
  [*Rimanente*],hours, budget + "€"
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