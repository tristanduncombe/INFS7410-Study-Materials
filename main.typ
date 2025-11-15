#outline() 
#show heading: it => block(width: 100%)[
  #set text(weight: "regular")
  #(it.body)
]
// Interested in helping out?
// Click the button on the sidebar called "Files"
// and take a look at cards.csv and use the comments feature in Typst (on the bar with Bold, Italics, it is the last element (on hover says add comment)) or use Edstem
// This document isn't finished, so input would be appreciated!

= Flashcards
See next page
#include "cards.typ"
#pagebreak()
#include "unanswered.typ"
#pagebreak()
#include "answered.typ"