#import "functions.typ": glossary, team

#let terms = csv("terms.csv", delimiter: ";")

#for term in terms.sorted(key: term => term.first()) {
  heading(level: 3, term.first())
  term.last()
}