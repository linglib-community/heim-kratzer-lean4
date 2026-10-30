import Game.Metadata

World "Laws"
Level 4

Title "Double negation"

Introduction "
`neg_neg a : -(-a) = a` is double negation, which holds of `SignType` because its negation undoes
itself. `rw [neg_neg, inf_comm]` rewrites with each law in turn.
"

/-- A doubly negated conjunction has the value of the conjunction in the other order. -/
Statement (a b : SignType) : -(-(min a b)) = min b a := by
  Hint "Rewrite with `neg_neg` first, then with `inf_comm`."
  rw [neg_neg]
  Hint "Now the goal is commutativity, an instance of `inf_comm`."
  rw [inf_comm]

Conclusion "
*It is not the case that the king of France is not bald* has the value of *the king of France is
bald*: double negation holds in Strong Kleene logic, and the presupposition survives two negations
as it survives one.
"

NewTheorem neg_neg
