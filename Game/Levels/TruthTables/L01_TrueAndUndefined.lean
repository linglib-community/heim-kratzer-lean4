import Game.Metadata

World "TruthTables"
Level 1

Title "True and undefined"

Introduction "
*Paris is in France and the king of France is bald.* The first conjunct is true and the second is
undefined. In Strong Kleene logic the conjunction is undefined, since the minimum of `1` and `0`
is `0`.

The goal below is an equation that holds by computation: both sides evaluate to the same value.
The tactic `rfl` closes such a goal. Type `rfl` and press Execute.
"

/-- The conjunction of a true and an undefined sentence is undefined. -/
Statement : (1 : SignType) ⊓ 0 = 0 := by
  rfl

Conclusion "
Lean evaluated `1 ⊓ 0`, found `0`, and accepted the proof.
"

NewTactic rfl
NewDefinition SignType
