import Game.Metadata

World "TruthTables"
Level 4

Title "Every row"

Introduction "
A law of conjunction holds for every combination of values. With three values a law in two
variables has nine rows in its truth table, few enough for Lean to check them all. The tactic
`decide` does this: it evaluates a statement about finitely many cases and closes the goal when
every case comes out true.

The law below is commutativity: `a ⊓ b` and `b ⊓ a` agree for every pair of values. `rfl` cannot
prove it, since with `a` and `b` unknown there is nothing to compute.
"

/-- Strong Kleene conjunction is commutative. -/
Statement : ∀ a b : SignType, a ⊓ b = b ⊓ a := by
  decide

Conclusion "
`decide` checked all nine rows.
"

NewTactic decide
