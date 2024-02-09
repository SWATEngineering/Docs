#import "functions.typ": glossary, team

#set text(font: "IBM Plex Sans")

#set ref(supplement: "Sezione")

/*******************/
/*    COPERTINA    */ 
/*******************/

// Margini pagina di copertina
#set page(
  margin: (
    right: 2.5cm,
    bottom: 1.5cm,
    top: 1.5cm,
  ),
)

// Inserimento logo SWAT intero
#place(
  top + right,
  [#image("assets/swat_logo.png", width: 40%)],
)

// Inserimento dettaglio giallo
#place(
  bottom + right,
  [
    #move(
      dx: 180pt,
      dy: 100pt,
      [
        #rotate(
          -30deg, 
          [
            #rect(width: 1000pt, height: 300pt, fill: rgb("#FFE600"), stroke: none)
          ]
        )
      ]
    )
  ],
)

// Inserimento logo UniPD
#place(
  bottom + right,
  [#image("assets/unipd_logo.png", width: 30%)],
)

/****************/
/*    TITOLO    */ 
/****************/

#v(30%)

#set text(30pt)
#set heading(outlined: false)

= Lettera di Presentazione RTB 09/02/2024

#v(10%)

#set text(16pt)

Contatti: swateng.team\@gmail.com


/********************************/
/*    HEADER E FOOTER PAGINE    */ 
/********************************/

#set page(
  margin: (auto),
  header: [
    #set line(length: 100%)
    #stack(
      spacing: 5pt,
      [
        #set text(10pt)
        #grid(
          columns: (1fr, 1fr),
          smallcaps[Lettera di Presentazione RTB],
          align(right, image("assets/swat_logo_short.png", width: 30%)),
        )
      ],
      line()
    )
  ],
  footer: [
    #set align(center)
    #set text(13pt)
    #counter(page).display(
      "1 of 1",
      both: true,
    )
  ]
)


/*******************/
/*    CONTENUTO    */ 
/*******************/

#pagebreak()
#set par(
  justify: true,
)
#include "content.typ"
