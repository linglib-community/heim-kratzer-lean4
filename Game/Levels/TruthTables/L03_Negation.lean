import Game.Metadata

World "TruthTables"
Level 3

Title "Negation"

Introduction "
*The king of France is not bald.* Negating an undefined sentence leaves it undefined. This is the
familiar observation that presuppositions survive negation.
"

/-- The negation of an undefined sentence is undefined. -/
Statement : -(0 : SignType) = 0 := by
  rfl
