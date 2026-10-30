import Game.Metadata

World "TruthTables"
Level 2

Title "False and undefined"

Introduction "
*Paris is in Spain and the king of France is bald.* Now the first conjunct is false, and Strong
Kleene makes the conjunction false whatever the value of the second: the minimum of `-1` and any
value is `-1`.
"

/-- The conjunction of a false and an undefined sentence is false. -/
Statement : (-1 : SignType) ⊓ 0 = -1 := by
  rfl

Conclusion "
A false conjunct settles a conjunction, so the failed presupposition of the other conjunct does not
make it undefined. In Strong Kleene logic this holds with the false conjunct in either position.
"
