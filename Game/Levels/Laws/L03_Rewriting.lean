import Game.Metadata

World "Laws"
Level 3

Title "Rewriting"

Introduction "
When the goal is not literally an instance of a law, rewrite it. `inf_assoc a b c` states
associativity, which on `SignType` reads `min (min a b) c = min a (min b c)`.

The tactic `rw [inf_assoc]` finds an instance of the left-hand side in the goal and replaces it by
the right-hand side. When the two sides of the goal become identical, `rw` closes it.
"

/-- Strong Kleene conjunction is associative. -/
Statement (a b c : SignType) : min a (min b c) = min (min a b) c := by
  rw [inf_assoc]

NewTactic rw
NewTheorem inf_assoc
