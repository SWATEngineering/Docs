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
    if(content == "0") {
      content = "-"
    }

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
//viene passata una lista di liste di valori
#let role_sum(role_list) = {
  //vengono sommati i valori in colonna, per ruolo
  let sum_list = ()
  for i in range(role_list.at(0).len()) {  //scorre colonne
    sum_list.push(0)
    for m in role_list.enumerate() {  //scorre righe
      let content = m.at(1)
      sum_list.at(i)+=content.at(i)
    }
  }
  return sum_list
}

#let sum_row(sum_list) = {
  let row = ()
  row.push(sum_list.map(el => {
    if(el == 0) {
      return "-"
    } else {
      return str(el)
    }
  }))
  row.push(str(sum_list.sum()))
  return row
}