#let changelog = csv("changelog.csv")
#table(
  columns: (1fr, 2fr, 4fr, 2fr, 2fr),
  [*Versione*], [*Data*], [*Descrizione*], [*Autore*], [*Ruolo*], [*Verificatore*],
  ..changelog.rev().flatten()
)