#let glossary(content) = {
  emph[#content#sub("G")]
}

#let team = {
  emph[SWAT Engineering]
}

#let modulo(value, modulo) = {
  int(value / modulo) == value / 4
}

#let requirements_table(code, list) = {
  table(
    columns: (auto, auto, 2fr,auto),
    inset: 10pt,
    align: horizon,
    [*Codice*], [*Importanza*], [*Descrizione*],[*Fonti*],
    ..list.enumerate(start: 1).map(enum_row => {
      let index = enum_row.at(0);
      let content = enum_row.at(1);
      content.insert(0, code+str(index))
      return content
    }).flatten().flatten().enumerate().map(content => {
      if (modulo(content.at(0), 4)) {
        return [*#content.at(1)*]
      } else {
        return [#content.at(1)]
      }
    })
  )
}