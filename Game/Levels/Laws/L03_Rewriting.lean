import Game.Metadata

World "Laws"
Level 3

Title "Rewriting"

Introduction "
When the goal is not literally an instance of a law, rewrite it. `inf_assoc a b c` states
associativity, `a ⊓ b ⊓ c = a ⊓ (b ⊓ c)`, where Lean reads `a ⊓ b ⊓ c` as `(a ⊓ b) ⊓ c`.

The tactic `rw [inf_assoc]` finds an instance of the left-hand side in the goal and replaces it by
the right-hand side. When the two sides of the goal become identical, `rw` closes it.
"

/-- Strong Kleene conjunction is associative. -/
Statement (a b c : SignType) : a ⊓ (b ⊓ c) = a ⊓ b ⊓ c := by
  rw [inf_assoc]

NewTactic rw
NewTheorem inf_assoc
