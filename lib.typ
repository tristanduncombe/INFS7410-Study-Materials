
#let c = counter("questionNumber")
#c.update(1)

#let p = counter("questionPart")
#p.update(1)

#let question() = {
  p.update(1)
  [*Question*]
}

#let questionPart(questionText, ..answerText) = {
  [*Part*]

  context [#p.step()
   *(#p.display("a"))* \
  ]

  questionText

  rect(width: 100%, stroke: 0.5pt, height: 25%, ..answerText)
}