
#let c = counter("questionNumber")
#c.update(1)

#let p = counter("questionPart")
#p.update(1)
#let reset() = {
  context [
    #c.update(0)
  ]
}

#let question() = {
  p.update(1)
  c.step()
  [*Question   #context [#c.display()]* \ ]
}

#let questionPart(questionText, ..answerText) = {
  [*Part*]

  context [#p.step()
   *(#p.display("a"))* \
  ]

  questionText

  rect(width: 100%, stroke: 0.5pt, height: 18%, ..answerText)
}