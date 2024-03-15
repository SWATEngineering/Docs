#let glossary(content) = {
  emph[#content#sub("G")]
}

#let team = {
  emph[SWAT Engineering]
}

#let itemCleaner(item) = {
  item = str(item)
  if item == "0.0" or item == "" or item == "0.0€" or item == "0" {
    return [-]
  }else if item.split(".").len() == 2 and item.split(".").at(1) == "0" {
    return [#item.split(".").at(0)]
  }else{
    return [#item]
  }
}

#let var = itemCleaner("0.0")

#let rendicontazioneOreAPosteriori(sprintNumber: "01") = {
  let rendicontazioneOre = csv("sprintData/Sprint#" + sprintNumber + "/RendicontazioneOre.csv")
  [=== Rendicontazione ore a posteriori]
  [I seguenti in tabella, sono i ruoli assunti per ogni componente del gruppo, durante l'attuale #glossary[sprint]:]
  figure(
    table(
    columns: (130pt,auto,auto,auto,auto,auto,auto,130pt),
    align: center,
      ..rendicontazioneOre.flatten().map(item => {
        if item == "Nominativo" or item == "Am" or item == "An" or item == "Pr" or item == "Pt" or item == "Re" or item == "Ve" or item == "Totale per persona" or item == "Totale per ruolo" {
          return [*#item*]
        }else{
          return [#itemCleaner(item)]
        }
      })
    ),
    caption: "Ore assunte per ciascun componente del gruppo durante l'attuale " + glossary[sprint]
  )
  figure(
    image("sprintData/Sprint#" + sprintNumber + "/RendicontazioneRuoliTorta.png", width: 60%),
    caption: [Areogramma della partizione delle ore per ruolo nello #glossary[sprint] numero #sprintNumber.],
  )
  figure(
    image("sprintData/Sprint#" + sprintNumber + "/RendicontazioneRuoliIstogramma.png", width: 60%),
    caption: [Istogramma delle ore svolte per persona nello #glossary[sprint] #sprintNumber.],
  )
}

#let rendicontazioneCostiAPosteriori(sprintNumber: "01") = {
  let rendicontazioneCosti = csv("sprintData/Sprint#" + sprintNumber + "/RendicontazioneCosti.csv")
  [=== Rendicontazione costi a posteriori]
  [In questo #glossary[sprint], il costo per ogni ruolo assunto viene riportato in tabella:]
  figure(
    table(
    columns: (120pt,60pt,100pt),
    align: center,
      ..rendicontazioneCosti.flatten().map(item => {
        if item == "Ruolo" or item == "Ore" or item == "Totale" or item == "Rimanente" {
          return [*#item*]
        }else if item == "Costo"{
          return [*#item* (in €)]
        }else{
          return [#itemCleaner(item)]
        }
      })
    ),
    caption: "Panoramica dei costi dell'attuale " + glossary[sprint] + " in base ai ruoli impiegati."
  )
  figure(
    image("sprintData/Sprint#" + sprintNumber + "/RendicontazioneCostiCashTorta.png", width: 60%),
    caption: [Areogramma del budget speso fino alla fine dell'attuale #glossary[sprint] numero #sprintNumber, rispetto al totale.],
  )
  figure(
    image("sprintData/Sprint#" + sprintNumber + "/RendicontazioneCostiTimeTorta.png", width: 60%),
    caption: [Areogramma del tempo (in ore) speso fino alla fine dell'attuale #glossary[sprint] numero #sprintNumber, rispetto al totale.],
  )
}

#let prospettoOrario(sprintNumber: "1") = {
  let table_time = csv("preventivi/assets/tables/tableProspettoOrario" + sprintNumber + ".csv")
  [=== Prospetto orario]
  [I seguenti in tabella, sono i ruoli assunti per ogni componente del gruppo, durante questo #glossary[sprint]:]
  figure(
    table(
    columns: (130pt,auto,auto,auto,auto,auto,auto,130pt),
    align: center,
      ..table_time.flatten().map(item => {
        if item == "Nominativo" or item == "Am" or item == "An" or item == "Pr" or item == "Pt" or item == "Re" or item == "Ve" or item == "Totale per persona" or item == "Totale per ruolo" {
          return [*#item*]
        }else{
          return [#itemCleaner(item)]
        }
      })
    )
  )
  figure(
    image("preventivi/assets/rolesPie/areogramma" + sprintNumber + ".png", width: 60%),
    caption: [Areogramma della partizione delle ore per ruolo nello #glossary[sprint] numero #sprintNumber.],
  )
  figure(
    image("preventivi/assets/barChart/istogramma" + sprintNumber + ".png", width: 60%),
    caption: [Istogramma delle ore svolte per persona nello #glossary[sprint] #sprintNumber.],
  )
}

#let prospettoEconomico(sprintNumber: "1") = {
  let table_cost = csv("preventivi/assets/tables/tableProspettoEconomico" + sprintNumber + ".csv")
  [=== Prospetto economico]
  [In questo #glossary[sprint], il costo per ogni ruolo assunto viene riportato in tabella:]
  figure(
    table(
    columns: (120pt,60pt,100pt),
    align: center,
      ..table_cost.flatten().map(item => {
        if item == "Ruolo" or item == "Ore" or item == "Totale" or item == "Rimanente" {
          return [*#item*]
        }else if item == "Costo"{
          return [*#item* (in €)]
        }else{
          return [#itemCleaner(item)]
        }
      })
    )
  )
  figure(
    image("preventivi/assets/cashPie/areogramma" + sprintNumber + ".png", width: 60%),
    caption: [Areogramma del budget speso preventivato per lo #glossary[sprint] numero #sprintNumber, rispetto al totale.],
  )
  figure(
    image("preventivi/assets/timePie/areogramma" + sprintNumber + ".png", width: 60%),
    caption: [Areogramma del tempo (in ore) speso preventivato per lo #glossary[sprint] numero #sprintNumber, rispetto al totale.],
  )
}
