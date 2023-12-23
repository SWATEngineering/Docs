#let glossary(content) = {
  emph[#content#sub("G")]
}

#let team = {
  emph[SWAT Engineering]
}

#let read_values(csv_list) = {
  return csv_list.map(m => {  //riga
    return m.map(n => {  //colonna
      return float(n)
    })
  })
}

#let create_member_row(name, preventivoRow, consuntivoRow) = {
  let row = ()
  row.push(name)
  row.push(consuntivoRow.enumerate().map(el => {
    let index = el.at(0)
    let content = str(el.at(1))

    if(preventivoRow.at(index) != consuntivoRow.at(index)) {
      let diff = consuntivoRow.at(index) - preventivoRow.at(index)
      if(diff > 0) {
        content += " (+" + str(diff) + ")"
      } else {
        content += " (" + str(diff) + ")"
      }
    }
    return content
  }))

  let totale = consuntivoRow.sum()
  if(totale != preventivoRow.sum()) {
    let diff = totale - preventivoRow.sum()
    if(diff > 0) {
      row.push(str(totale) + " (+" + str(diff) + ")")
    } else {
      row.push(str(totale) + " (" + str(diff) + ")")
    }
  } else {
    row.push(str(totale))
  }
  return row
}