#import "../../functions.typ" : read_values, create_member_row

#let csvPreventivo = csv("../../ore_preventivo.csv")
#let csvConsuntivo = csv("../../ore_consuntivo.csv")
#let trace = csv("../../trace.csv")

#let nomi = ("Simone Caregnato","Riccardo Alberto Costantin", "Giacomo D'Ovidio", "Nancy Kalaj","Matteo Rango", "Riccardo Toniolo")

#let valuesConsultivo = read_values(csvConsuntivo)
#let valuesPreventivo = read_values(csvPreventivo)

#let members_table = ()
#for i in range(nomi.len()) {
  members_table.push(create_member_row(nomi.at(i),valuesPreventivo.at(i), valuesConsultivo.at(i)))
}

== Secondo sprint
//#oreConsuntivo
//#valuesConsultivo

=== Rendicontazione ore a posteriori
I seguenti in tabella, sono i ruoli assunti per ogni componente del gruppo, durante questo sprint:
#table(
  columns: (130pt,40pt,40pt,40pt,40pt,40pt,40pt,80pt),
  align: center,
  [*Nominativo*],[*Re*],[*Am*],[*An*],[*Pt*],[*Pr*],[*Ve*],[*Totale per persona*],
  ..members_table.flatten()
)