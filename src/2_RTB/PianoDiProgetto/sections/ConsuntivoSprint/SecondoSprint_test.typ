#import "../../functions.typ" : read_values

#let orePreventivo = csv("../../ore_preventivo.csv")
#let oreConsuntivo = csv("../../ore_consuntivo.csv")
#let trace = csv("../../trace.csv")
#let n_ruoli = 6

#let valuesConsultivo = read_values(oreConsuntivo)

#let visualConsuntivo = (
("Simone Caregnato", "", "", "", "", "", "", ""),
  ("Riccardo Alberto Costantin", "", "", "", "", "", "", ""),
  ("Giacomo D'Ovidio", "", "", "", "", "", "", ""),
  ("Nancy Kalaj", "", "", "", "", "", "", ""),
  ("Matteo Rango", "", "", "", "", "", "", ""),
  ("Riccardo Toniolo", "", "", "", "", "", "", "")
)

//per ogni membro
#for m in range(oreConsuntivo.len()) {
  //trovo il totale delle sue ore per ognuno
  let tot = 0
  for n in range(n_ruoli) { //scorre le colonne coi ruoli
    //inserisco le ore nelle apposte colonne
    visualConsuntivo.at(m).insert(n+1,oreConsuntivo.at(m).at(n))
    tot += float(oreConsuntivo.at(m).at(n))
  }
  //aggiungo il totale alla fine della riga
  visualConsuntivo.at(m).push(str(tot))
}

== Secondo sprint
//#oreConsuntivo
#valuesConsultivo

=== Rendicontazione ore a posteriori
I seguenti in tabella, sono i ruoli assunti per ogni componente del gruppo, durante questo sprint:
#table(
  columns: (130pt,40pt,40pt,40pt,40pt,40pt,40pt,80pt),
  align: center,
  [*Nominativo*],[*Re*],[*Am*],[*An*],[*Pt*],[*Pr*],[*Ve*],[*Totale per persona*],
)