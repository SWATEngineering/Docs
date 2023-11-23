#let changelog = csv("changelog.csv")
#table(
  columns: (1.5fr, 2fr, 4fr, 2fr, 2fr),
  [*Versione*], [*Data*], [*Descrizione*], [*Autore*], [*Ruolo*],
  ..changelog.rev().flatten()
)