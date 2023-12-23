#import "../../functions.typ" : read_values, create_members_rows, role_sum, sum_row, create_rule_rows, total_cost
#import "../../const.typ": Re_cost, Am_cost, An_cost, Ve_cost, Pr_cost, Pt_cost

#let h_cost  = ( Re_cost,Am_cost,An_cost,Pt_cost,Pr_cost,Ve_cost )

#let csvPreventivo = csv("../../ore_preventivo.csv")
#let csvConsuntivo = csv("../../ore_consuntivo.csv")
#let trace = csv("../../trace.csv")

#let sprint = trace.at(2)
#let hours = sprint.at(0)
#let budget = sprint.at(1)

#let names = ("Simone Caregnato","Riccardo Alberto Costantin", "Giacomo D'Ovidio", "Nancy Kalaj","Matteo Rango", "Riccardo Toniolo")
#let rules = ("Responsabile","Amministratore","Analista","Progettista","Programmatore","Verificatore")

#let valuesConsuntivo = read_values(csvConsuntivo)
#let valuesPreventivo = read_values(csvPreventivo)

#let members_rows = create_members_rows(names, valuesPreventivo, valuesConsuntivo)

#let consuntivoSumList = role_sum(valuesConsuntivo)
#let sum_row = sum_row(consuntivoSumList)

== Secondo sprint

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
  image("../../assets/AreogrammiPartizioneOre/Effettivo/AreogrammaOreSecondoSprint.svg", width: 75%),
  caption: [Areogramma della partizione delle ore per ruolo nel secondo sprint.],
)

#figure(
  image("../../assets/IstogrammiOreMembro/Effettive/IstogrammaSecondoSprint.svg", width: 75%),
  caption: [Istogramma delle ore svolte per persona nel secondo sprint.],
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
  image("../../assets/AreogrammiPartizioneCosti/Effettivo/AreogrammaCostiSecondoSprint.svg", width: 75%),
  caption: [Areogramma del budget speso e rimanente preventivato per il secondo sprint.],
)

#figure(
  image("../../assets/AreogrammiTotaliOre/Effettive/AreogrammaTotaleSecondoSprint.svg", width: 75%),
  caption: [Areogramma delle ore svolte e rimanenti nel secondo sprint.],
)

=== Analisi a posteriori
Il consuntivo, relativo allo sprint corrente, evidenzia significative disparità rispetto al preventivo, soprattutto in merito alla distribuzione dei ruoli. Tale deviazione è imputabile al cambiamento dei ruoli assegnati, avvenuto a metà sprint, circostanza non prevista durante la fase di pianificazione iniziale. Inoltre, va sottolineato che la conclusione delle attività pendenti dallo sprint precedente, ha determinato brevi periodi di tempo in cui i membri del team hanno mantenuto i ruoli assegnati nella fase precedente. Dato il considerevole aumento complessivo delle ore rispetto a quanto inizialmente previsto nel preventivo, diventa essenziale adottare un approccio più attento nella fase di pianificazione e apportare gli adeguamenti necessari ai futuri preventivi. In particolare, emerge una sovrastima delle ore necessarie per il ruolo di Programmatore e una sottostima del tempo richiesto al ruolo di Analista. Ciò è dovuto al fatto che il team, nel corso di questo sprint, si è dedicato alla stesura dell'_Analisi dei Requisiti_ e, dopo il colloquio con il Professor Cardin e la discussione con la Proponente, si è focalizzato sulla sua ristrutturazione, che ha richiesto un notevole sforzo aggiuntivo. Queste considerazioni verranno utilizzate come base per ottimizzare la pianificazione degli sprint futuri.