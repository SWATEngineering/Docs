#let glossary(content) = {
  emph[#content#sub("G")]
}

#let team = {
  emph[SWAT Engineering]
}

#let modulo(value, modulo) = {
  int(value / modulo) == value / 4
}

#let calculate_letter_code_from_importance(importance) = {
  if importance == "Obbligatorio" {
    return "O"
  } else if importance == "Desiderabile" {
    return "D"
  } else if importance == "Opzionale" {
    return "P"
  }

  return "?";
}

#let generate_requirements_array(code, list) = {
    return list.enumerate(start: 1).map(enum_row => {
      let index = enum_row.at(0);
      let content = enum_row.at(1);

      let calculated_code = "R" + calculate_letter_code_from_importance(content.at(0)) + code
      
      content.insert(0, calculated_code+str(index))
      return content
    });
}

#let requirements_table(coded_list) = {
  table(
    columns: (auto, auto, 2fr,auto),
    inset: 10pt,
    align: horizon,
    [*Codice*], [*Importanza*], [*Descrizione*],[*Fonti*],
    ..coded_list.flatten().flatten().enumerate().map(content => {
      if (modulo(content.at(0), 4)) {
        return [*#content.at(1)*]
      } else {
        return [#content.at(1)]
      }
    })
  )
}
