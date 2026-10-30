import Game.Metadata

World "Laws"
Level 1

Title "Commutativity"

Introduction "
Mathlib proves `inf_comm a b : a ⊓ b = b ⊓ a` once, for every lattice; on `SignType` it says
`min a b = min b a`. The tactic `exact` closes a goal with a proof of exactly that goal. Type
`exact inf_comm a b`.
"

/-- Strong Kleene conjunction is commutative. -/
Statement (a b : SignType) : min a b = min b a := by
  exact inf_comm a b

Conclusion "
This is the law that `decide` checked in the previous world, now taken from the theory of lattices
instead of a truth table.
"

NewTactic exact
NewTheorem inf_comm
TheoremTab "Lattice"
