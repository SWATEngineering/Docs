#import "../../functions.typ" : read_values, create_member_row, role_sum, sum_row

#let csvPreventivo = csv("../../ore_preventivo.csv")
#let csvConsuntivo = csv("../../ore_consuntivo.csv")
#let trace = csv("../../trace.csv")

#let nomi = ("Simone Caregnato","Riccardo Alberto Costantin", "Giacomo D'Ovidio", "Nancy Kalaj","Matteo Rango", "Riccardo Toniolo")

#let valuesConsuntivo = read_values(csvConsuntivo)
#let valuesPreventivo = read_values(csvPreventivo)

#let members_table = ()
#for i in range(nomi.len()) {
  members_table.push(create_member_row(nomi.at(i),valuesPreventivo.at(i), valuesConsuntivo.at(i)))
}

#let sum_list = role_sum(valuesConsuntivo)
#let sum_row = sum_row(sum_list)

== Secondo sprint
//#oreConsuntivo
//#valuesConsuntivo

=== Rendicontazione ore a posteriori
I seguenti in tabella, sono i ruoli assunti per ogni componente del gruppo, durante questo sprint:
#table(
  columns: (130pt,40pt,40pt,40pt,40pt,40pt,40pt,80pt),
  align: center,
  [*Nominativo*],[*Re*],[*Am*],[*An*],[*Pt*],[*Pr*],[*Ve*],[*Totale per persona*],
  ..members_table.flatten(),
  [*Totale per ruolo*],..sum_row.flatten()
)

#figure(
  image("../../assets/AreogrammiPartizioneOre/Effettivo/AreogrammaOreSecondoSprint.svg", width: 75%),
  caption: [Areogramma della partizione delle ore per ruolo nel secondo sprint.],
)

#figure(
  image("../../assets/IstogrammiOreMembro/Effettive/IstogrammaSecondoSprint.svg", width: 75%),
  caption: [Istogramma delle ore svolte per persona nel secondo sprint.],
)

=== Rendicontazione costi a posteriori
In questo sprint, il costo per ogni ruolo assunto viene riportato in tabella: