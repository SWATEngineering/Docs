#import "functions.typ": glossary, team

#let terms = csv("terms.csv", delimiter: ";")

#for letter in "ABCDEFGHIJKLMNOPQRSTUVWXYZ" {
  let words_to_consider = terms.sorted(key: term => term.first()).filter(term => upper((term.first().at(0))) == letter);
  if( words_to_consider.len() > 0){
    heading(level: 1, letter)
    for term in words_to_consider {
      linebreak()
      text(weight: "bold",size: 15pt)[#term.first().trim()]
      linebreak()
      term.last().trim()
      linebreak()
    }
  }
}
