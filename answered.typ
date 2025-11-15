#import "lib.typ": *
#align(center)[
  #set text(size: 30pt)
  INFS7410 - Oral Practice Exam \
  #set text(size: 12pt)
  By T & J

  #emph("Realistic Oral-Exam Style Questions + Follow-Ups")
]

#set page(numbering: "1")

#let data = json("questionAnswers.json")

#pagebreak()

#for (questionParts) in data [
  #question()
  #for part in questionParts.parts [
    #questionPart(part.question, part.answer)
  ]
]