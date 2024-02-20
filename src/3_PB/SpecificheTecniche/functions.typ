#let glossary(content) = {
  emph[#content#sub("G")]
}

#let team = {
  emph[SWAT Engineering]
}

#let shrinkFloat(number) = {
  let strNumber = str(number)
  let str1 = strNumber.split(".")
  if(str1.len() > 1){
    let str2 = str1.at(1)
    str1 = str1.at(0)
    if(str2.len() > 2){
      str2 = str2.at(0) + str2.at(1)
    }

    return float(str1 + "." + str2)
  }
  return float(str1.at(0))
}