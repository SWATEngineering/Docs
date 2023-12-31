#let glossary(content) = {
  emph[#content#sub("G")]
}

#let team = {
  emph[SWAT Engineering]
}

#let rendicontazioneOreAPosteriori(sprintNumber: "01") = {
  let rendicontazioneOre = csv("sprintData/Sprint#" + sprintNumber + "/RendicontazioneOre.csv")
  [=== Rendicontazione ore a posteriori]
  [I seguenti in tabella, sono i ruoli assunti per ogni componente del gruppo, durante l'attuale sprint:]
  figure(
    table(
    columns: (130pt,auto,auto,auto,auto,auto,auto,130pt),
    align: center,
      ..rendicontazioneOre.flatten().map(item => {
        if item == "Nominativo" or item == "Am" or item == "An" or item == "Pr" or item == "Pt" or item == "Re" or item == "Ve" or item == "Totale per persona" or item == "Totale per ruolo" {
          return [*#item*]
        }else{
          return [#item]
        }
      })
    ),
    caption: "Ore assunte per ciascun componente del gruppo durante l'attuale sprint"
  )
  figure(
    image("sprintData/Sprint#" + sprintNumber + "/RendicontazioneRuoliTorta.png", width: 60%),
    caption: [Areogramma della partizione delle ore per ruolo nello sprint numero #sprintNumber.],
  )
  figure(
    image("sprintData/Sprint#" + sprintNumber + "/RendicontazioneRuoliIstogramma.png", width: 60%),
    caption: [Istogramma delle ore svolte per persona nello sprint #sprintNumber.],
  )
}

#let rendicontazioneCostiAPosteriori(sprintNumber: "01") = {
  let rendicontazioneCosti = csv("sprintData/Sprint#" + sprintNumber + "/RendicontazioneCosti.csv")
  [=== Rendicontazione costi a posteriori]
  [In questo sprint, il costo per ogni ruolo assunto viene riportato in tabella:]
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
          return [#item]
        }
      })
    ),
    caption: "Panoramica dei costi dell'attuale sprint in base ai ruoli impiegati."
  )
  figure(
    image("sprintData/Sprint#" + sprintNumber + "/RendicontazioneCostiCashTorta.png", width: 60%),
    caption: [Areogramma del budget speso fino alla fine dell'attuale sprint numero #sprintNumber, rispetto al totale.],
  )
  figure(
    image("sprintData/Sprint#" + sprintNumber + "/RendicontazioneCostiTimeTorta.png", width: 60%),
    caption: [Areogramma del tempo (in ore) speso fino alla fine dell'attuale sprint numero #sprintNumber, rispetto al totale.],
  )
}