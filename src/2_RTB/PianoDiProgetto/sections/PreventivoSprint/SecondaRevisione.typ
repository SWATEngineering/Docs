#import "../../const.typ": Re_cost, Am_cost, An_cost, Ve_cost, Pr_cost, Pt_cost 
#import "PrimaRevisione.typ": rimanente_ore, rimanente_soldi
#import "../../functions.typ": glossary

#let ruoli_ore = (
  Re: 17,
  Am: 20,
  An: 12,
  Pt: 60,
  Pr: 92,
  Ve: 78,
)

#let costo_ruoli_ore=(
   Costo_Re: Re_cost * ruoli_ore.at("Re"),
   Costo_Am: Am_cost * ruoli_ore.at("Am"),
   Costo_An: An_cost * ruoli_ore.at("An"),
   Costo_Pt: Pt_cost * ruoli_ore.at("Pt"),
   Costo_Pr: Pr_cost * ruoli_ore.at("Pr"),
   Costo_Ve: Ve_cost * ruoli_ore.at("Ve"),
)

#let rimanente_ore = rimanente_ore - ruoli_ore.values().sum();
#let rimanente_soldi = rimanente_soldi - costo_ruoli_ore.values().sum();

== Seconda Revisione (Product Baseline #glossary[PB])

=== Prospetto economico
In questa #glossary[milestone], il costo per ogni ruolo sarà come da tabella:
#table(
  columns: (120pt,60pt,100pt),
  align: center,
  [*Ruolo*],[*Ore*],[*Costo*],
  [Responsabile],[#ruoli_ore.at("Re")],[#costo_ruoli_ore.at("Costo_Re")€],
  [Amministratore],[#ruoli_ore.at("Am")],[#costo_ruoli_ore.at("Costo_Am")€],
  [Analista],[#ruoli_ore.at("An")],[#costo_ruoli_ore.at("Costo_An")€],
  [Progettista],[#ruoli_ore.at("Pt")],[#costo_ruoli_ore.at("Costo_Pt") €],
  [Programmatore],[#ruoli_ore.at("Pr")],[#costo_ruoli_ore.at("Costo_Pr") €],
  [Verificatore],[#ruoli_ore.at("Ve")],[#costo_ruoli_ore.at("Costo_Ve")€],
  [*Totale*],[#ruoli_ore.values().sum()],[#costo_ruoli_ore.values().sum()€],
  [*Rimanente*],[#rimanente_ore],[#rimanente_soldi€]
)