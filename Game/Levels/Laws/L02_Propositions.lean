import Game.Metadata

World "Laws"
Level 2

Title "Propositions"

Introduction "
Propositions, as sets of worlds of some type `W`, form a lattice too: `p ⊓ q` is the set of worlds
where both are true. `decide` cannot prove that this conjunction is commutative, since it does not
know what `W` is, but the same theorem does.
"

/-- Classical conjunction of propositions is commutative. -/
Statement {W : Type} (p q : Set W) : p ⊓ q = q ⊓ p := by
  exact inf_comm p q

Conclusion "
The classical and the Strong Kleene conjunction are commutative for the same reason: each is a
meet.
"
