import Game.Metadata

World "TruthTables"
Level 6

Title "False conjunctions"

Introduction "
A Strong Kleene conjunction is false exactly when one of its conjuncts is false. The statement
uses `↔` for *if and only if* and `∨` for *or*.
"

/-- A conjunction is false iff one of its conjuncts is false. -/
Statement : ∀ a b : SignType, a ⊓ b = -1 ↔ a = -1 ∨ b = -1 := by
  decide

Conclusion "
This is the falsity condition of Strong Kleene conjunction, and its truth condition is that both
conjuncts are true. The other trivalent conjunctions you will meet keep these conditions wherever
they are defined, and differ only in when they are undefined.
"
