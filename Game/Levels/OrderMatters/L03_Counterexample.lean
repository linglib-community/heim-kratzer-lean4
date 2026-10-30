import Game.Metadata

World "OrderMatters"
Level 3

Title "A counterexample"

Introduction "
A generalization is refuted by a counterexample, and the last two levels supply one: Middle Kleene
conjunction is not commutative. This time prove it without `decide`, in three steps.

1. `intro h` assumes the generalization, under the name `h`. The goal becomes `False`.
2. `specialize h (-1) 0` instantiates `h` at the counterexample.
3. `simp at h` computes both sides of `h`, finds that it says `-1 = 0`, and closes the goal, since
   a false assumption proves anything.
"

open SignType
set_option pp.fieldNotation.generalized false

/-- Middle Kleene conjunction is not commutative. -/
Statement : ¬ ∀ a b : SignType, meetMiddle a b = meetMiddle b a := by
  intro h
  Hint "Now `{h}` says that every pair of values commutes. Instantiate it at the counterexample:
  `specialize {h} (-1) 0`."
  specialize h (-1) 0
  Hint "`{h}` now claims `meetMiddle (-1) 0 = meetMiddle 0 (-1)`. Compute both sides with
  `simp at {h}`."
  simp at h

Conclusion "
The order of the conjuncts matters to Middle Kleene conjunction, as it matters to presupposition
filtering.
"

NewTactic intro specialize simp
DisabledTactic decide
