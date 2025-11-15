#import "@preview/quick-cards:0.1.1": *
#set text(6pt)
#quick-cards-layout(
  columns: 4,
  rows:7,
  cards: csv("cards.csv")
    .map(x=> flashcard-modern(
      question: x.at(0),
      answer: x.at(1),
      category: x.at(2)
    ))
)
