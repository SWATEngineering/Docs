#import "../../const.typ": Re_cost, Am_cost, An_cost, Ve_cost, Pr_cost, Pt_cost

//residuo
#let trace = csv("../../trace.csv")
#let residuo_ore = trace.at(1).at(0)
#let residuo_costi = trace.at(1).at(1)

#let costo_ora = ( Re: Re_cost, Am: Am_cost, An: An_cost, Pt: Pt_cost, Pr: Pr_cost, Ve: Ve_cost )

//IMMETTERE DATI
#let ore_preventivo = (
  Simone: (0, 0, 0, 0, 10, 0),
  RiccardoC: (0, 8, 0, 0, 0, 0),
  Giacomo: (9, 0, 0, 0, 0, 0),
  Nancy: (0, 0, 0, 0, 0, 8),
  Matteo: (0, 0, 0, 0, 10, 0),
  RiccardoT: (0, 0, 8, 0, 0, 0)
)

//IMMETTERE DATI
//ore effettive
#let membri_ore = (
  Simone: (0, 0.5, 0, 0, 5.5, 4),
  RiccardoC: (5.5, 5.5, 0.5, 0, 0, 0),
  Giacomo: (4.5, 0, 6, 0, 5, 0),
  Nancy: (0.5, 4.5, 0, 0, 0, 5),
  Matteo: (0, 0, 5, 0, 5, 0.5),
  RiccardoT: (0, 2, 8, 0, 0.5, 2.5)
)

#let membri_ore_extra = (
  Simone: (0, 0, 0, 0, 0, 0),
  RiccardoC: (0, 0, 0, 0, 0, 0),
  Giacomo: (0, 0, 0, 0, 0, 0),
  Nancy: (0, 0, 0, 0, 0, 0),
  Matteo: (0, 0, 0, 0, 0, 0),
  RiccardoT: (0, 0, 0, 0, 0, 0)
)

//calcolo ore extra
#for m in membri_ore.keys() {
  for r in (0, 1, 2, 3, 4, 5) {
    membri_ore_extra.at(m).at(r) = membri_ore.at(m).at(r) - ore_preventivo.at(m).at(r)
  }
}

//ore totali previste per membro
#let membri_tot_prev = ( Simone:0, RiccardoC:0, Giacomo:0, Nancy:0, Matteo:0, RiccardoT:0 )
#for m in membri_ore.keys() {
  membri_tot_prev.at(m) = ore_preventivo.at(m).sum()
}

//ore totali effettive per membro
#let membri_tot = ( Simone:0, RiccardoC:0, Giacomo:0, Nancy:0, Matteo:0, RiccardoT:0 )
#for m in membri_ore.keys() {
  membri_tot.at(m) = membri_ore.at(m).sum()
}

//ore non previste per membro
#let membri_tot_extra = ( Simone:0, RiccardoC:0, Giacomo:0, Nancy:0, Matteo:0, RiccardoT:0 )
#for m in membri_ore.keys() {
  membri_tot_extra.at(m) = membri_ore_extra.at(m).sum()
}

#let ruoli_ore_prev = ( Re: 0, Am:0, An:0, Pt:0, Pr:0, Ve:0 )
#let ruoli_ore = ( Re: 0, Am:0, An:0, Pt:0, Pr:0, Ve:0 )
#let ruoli_ore_extra = ( Re: 0, Am:0, An:0, Pt:0, Pr:0, Ve:0 )

#for i in ore_preventivo.keys() {
  ruoli_ore_prev.at("Re") += ore_preventivo.at(i).at(0)
  ruoli_ore_prev.at("Am") += ore_preventivo.at(i).at(1)
  ruoli_ore_prev.at("An") += ore_preventivo.at(i).at(2)
  ruoli_ore_prev.at("Pt") += ore_preventivo.at(i).at(3)
  ruoli_ore_prev.at("Pr") += ore_preventivo.at(i).at(4)
  ruoli_ore_prev.at("Ve") += ore_preventivo.at(i).at(5)
}

#for i in membri_ore.keys() {
  ruoli_ore.at("Re") += membri_ore.at(i).at(0)
  ruoli_ore.at("Am") += membri_ore.at(i).at(1)
  ruoli_ore.at("An") += membri_ore.at(i).at(2)
  ruoli_ore.at("Pt") += membri_ore.at(i).at(3)
  ruoli_ore.at("Pr") += membri_ore.at(i).at(4)
  ruoli_ore.at("Ve") += membri_ore.at(i).at(5)
}

#for i in membri_ore_extra.keys() {
  ruoli_ore_extra.at("Re") += membri_ore_extra.at(i).at(0)
  ruoli_ore_extra.at("Am") += membri_ore_extra.at(i).at(1)
  ruoli_ore_extra.at("An") += membri_ore_extra.at(i).at(2)
  ruoli_ore_extra.at("Pt") += membri_ore_extra.at(i).at(3)
  ruoli_ore_extra.at("Pr") += membri_ore_extra.at(i).at(4)
  ruoli_ore_extra.at("Ve") += membri_ore_extra.at(i).at(5)
}

#let costo_ruoli_ore=(
   Costo_Re: Re_cost * ruoli_ore.at("Re"),
   Costo_Am: Am_cost * ruoli_ore.at("Am"),
   Costo_An: An_cost * ruoli_ore.at("An"),
   Costo_Pt: Pt_cost * ruoli_ore.at("Pt"),
   Costo_Pr: Pr_cost * ruoli_ore.at("Pr"),
   Costo_Ve: Ve_cost * ruoli_ore.at("Ve"),
)

//tabella delle ore
#let tab_content = (
  Simone: ("", "", "", "", "", "", ""),
  RiccardoC: ("", "", "", "", "", "", ""),
  Giacomo: ("", "", "", "", "", "", ""),
  Nancy: ("", "", "", "", "", "", ""),
  Matteo: ("", "", "", "", "", "", ""),
  RiccardoT: ("", "", "", "", "", "", "")
)

//tabella dei costi
#let tab_costi = (
  Re: ("", ""),
  Am: ("", ""),
  An: ("", ""),
  Pt: ("", ""),
  Pr: ("", ""),
  Ve: ("", "")
)

//contenuto tabella ore
#for m in tab_content.keys() {
  //r scorre le colonne coi dati
    for r in (0, 1, 2, 3, 4, 5) {
    if membri_ore.at(m).at(r) == 0 {
      tab_content.at(m).at(r) = "-"
    } else {
      tab_content.at(m).at(r) = str(membri_ore.at(m).at(r))
    }
    if membri_ore_extra.at(m).at(r) != 0 {
      if membri_ore_extra.at(m).at(r) > 0 {
        tab_content.at(m).at(r) += " (" + "+" + str(membri_ore_extra.at(m).at(r)) + ")"
      } else {
        tab_content.at(m).at(r) += " (" + str(membri_ore_extra.at(m).at(r)) + ")"
      }
    }
    //totali: ore previste (+extra)
    tab_content.at(m).at(6) = str(membri_tot.at(m))
    if membri_tot_extra.at(m) != 0 {
      if membri_tot_extra.at(m) > 0 {
        tab_content.at(m).at(6) += " (" + "+" + str(membri_tot_extra.at(m)) + ")"
      } else {
        tab_content.at(m).at(6) += " (" + str(membri_tot_extra.at(m)) + ")"
      }
    }
  }
}

//contenuto tabella costi
#for r in tab_costi.keys() {
  //ore
  if ruoli_ore_extra.at(r) != 0 {
    if ruoli_ore_extra.at(r) > 0 {
      tab_costi.at(r).at(0) = str(ruoli_ore.at(r)) + " (" + "+" + str(ruoli_ore_extra.at(r)) + ")"
    } else {
      tab_costi.at(r).at(0) = str(ruoli_ore.at(r)) + " (" + str(ruoli_ore_extra.at(r)) + ")"
    }
  } else {
    tab_costi.at(r).at(0) = ruoli_ore.at(r)
  }
  //costo
  if ruoli_ore_extra.at(r) != 0 {
    if ruoli_ore_extra.at(r) > 0 {
      tab_costi.at(r).at(1) = str(costo_ruoli_ore.at("Costo_"+r)) + "€" + " (" + "+" + str(costo_ora.at(r)*ruoli_ore_extra.at(r)) + "€)"
    } else {
      tab_costi.at(r).at(1) = str(costo_ruoli_ore.at("Costo_"+r)) + "€" + " (" + str(costo_ora.at(r)*ruoli_ore_extra.at(r)) + "€)"
    }
  } else { 
    tab_costi.at(r).at(1) = str(costo_ruoli_ore.at("Costo_"+r)) + "€"
  }
}

#let ore_totali = ruoli_ore.values().sum()
#let costi_totali = costo_ruoli_ore.values().sum()

#let ore_rimanenti = float(residuo_ore) - ore_totali
#let costi_rimanenti = str(float(residuo_costi) - costi_totali) + " €"

== Secondo sprint
=== Rendicontazione ore a posteriori
I seguenti in tabella, sono i ruoli assunti per ogni componente del gruppo, durante questo sprint:
#table(
  columns: (130pt,40pt,40pt,40pt,40pt,40pt,40pt,80pt),
  align: center,
  [*Nominativo*],[*Re*],[*Am*],[*An*],[*Pt*],[*Pr*],[*Ve*],[*Totale per persona*],

  [Simone Caregnato],[#tab_content.at("Simone").at(0)],[#tab_content.at("Simone").at(1)],[#tab_content.at("Simone").at(2)],[#tab_content.at("Simone").at(3)],[#tab_content.at("Simone").at(4)], [#tab_content.at("Simone").at(5)], [#tab_content.at("Simone").at(6)],
  [Riccardo Alberto Costantin],[#tab_content.at("RiccardoC").at(0)],[#tab_content.at("RiccardoC").at(1)],[#tab_content.at("RiccardoC").at(2)],[#tab_content.at("RiccardoC").at(3)],[#tab_content.at("RiccardoC").at(4)], [#tab_content.at("RiccardoC").at(5)], [#tab_content.at("RiccardoC").at(6)],
  [Giacomo D'Ovidio],[#tab_content.at("Giacomo").at(0)],[#tab_content.at("Giacomo").at(1)],[#tab_content.at("Giacomo").at(2)],[#tab_content.at("Giacomo").at(3)],[#tab_content.at("Giacomo").at(4)], [#tab_content.at("Giacomo").at(5)], [#tab_content.at("Giacomo").at(6)],
  [Nancy Kalaj],[#tab_content.at("Nancy").at(0)],[#tab_content.at("Nancy").at(1)],[#tab_content.at("Nancy").at(2)],[#tab_content.at("Nancy").at(3)],[#tab_content.at("Nancy").at(4)], [#tab_content.at("Nancy").at(5)], [#tab_content.at("Nancy").at(6)],
  [Matteo Rango],[#tab_content.at("Matteo").at(0)],[#tab_content.at("Matteo").at(1)],[#tab_content.at("Matteo").at(2)],[#tab_content.at("Matteo").at(3)],[#tab_content.at("Matteo").at(4)], [#tab_content.at("Matteo").at(5)], [#tab_content.at("Matteo").at(6)],
  [Riccardo Toniolo],[#tab_content.at("RiccardoT").at(0)],[#tab_content.at("RiccardoT").at(1)],[#tab_content.at("RiccardoT").at(2)],[#tab_content.at("RiccardoT").at(3)],[#tab_content.at("RiccardoT").at(4)], [#tab_content.at("RiccardoT").at(5)], [#tab_content.at("RiccardoT").at(6)],
  [*Totale per ruolo*],[#ruoli_ore.at("Re")],[#ruoli_ore.at("Am")],[#ruoli_ore.at("An")],[#ruoli_ore.at("Pt")],[#ruoli_ore.at("Pr")],[#ruoli_ore.at("Ve")],[#ruoli_ore.values().sum()]
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
#table(
  columns: (120pt,60pt,100pt),
  align: center,
  [*Ruolo*],[*Ore*],[*Costo*],
  [Responsabile],[#tab_costi.at("Re").at(0)],[#tab_costi.at("Re").at(1)],
  [Amministratore],[#tab_costi.at("Am").at(0)],[#tab_costi.at("Am").at(1)],
  [Analista],[#tab_costi.at("An").at(0)],[#tab_costi.at("An").at(1)],
  [Progettista],[#tab_costi.at("Pt").at(0)],[#tab_costi.at("Pt").at(1)],
  [Programmatore],[#tab_costi.at("Pr").at(0)],[#tab_costi.at("Pr").at(1)],
  [Verificatore],[#tab_costi.at("Ve").at(0)],[#tab_costi.at("Ve").at(1)],
  [*Totale*],[#ore_totali],[#costi_totali],
  [*Rimanente*],[#ore_rimanenti],[#costi_rimanenti]
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
Il consuntivo, relativo allo sprint corrente, evidenzia significative disparità rispetto al preventivo, soprattutto in merito alla distribuzione dei ruoli. Tale deviazione è imputabile al cambiamento dei ruoli assegnati, avvenuto a metà sprint, circostanza non prevista durante la fase di pianificazione iniziale. Inoltre, va sottolineato che la conclusione delle attività pendenti dallo sprint precedente, ha determinato brevi periodi di tempo in cui i membri del team hanno mantenuto i ruoli assegnati nella fase precedente. Dato il considerevole aumento complessivo delle ore rispetto a quanto inizialmente previsto nel preventivo, diventa essenziale adottare un approccio più attento nella fase di pianificazione e apportare gli adeguamenti necessari ai futuri preventivi. In particolare, emerge una sottostima delle ore necessarie per il ruolo di Analista. Ciò è dovuto al fatto che il team, nel corso di questo sprint, si è dedicato alla stesura dell'_Analisi dei Requisiti_ e, dopo il colloquio con il Professor Cardin e la discussione con la Proponente, si è focalizzato sulla sua ristrutturazione, che ha richiesto un notevole sforzo aggiuntivo. Queste considerazioni verranno utilizzate come base per ottimizzare la pianificazione degli sprint futuri.