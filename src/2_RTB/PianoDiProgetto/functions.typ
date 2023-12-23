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

//#let create_tabe_row(name, list) = {
//  return list.enumerate
//}
