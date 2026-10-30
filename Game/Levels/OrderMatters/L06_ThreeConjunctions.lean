import Game.Metadata

World "OrderMatters"
Level 6

Title "Three conjunctions"

Introduction "
The three conjunctions are ordered by how often they are defined. Wherever Weak Kleene conjunction
is defined so is Middle Kleene conjunction, and wherever Middle Kleene conjunction is defined so is
Strong Kleene conjunction.

The statement is a conjunction `∧` of these two facts. `constructor` splits it into two goals,
which you then prove in turn.
"

open SignType
set_option pp.fieldNotation.generalized false

/-- Weak Kleene conjunction is defined less often than Middle Kleene conjunction, which is defined
less often than Strong Kleene conjunction. -/
Statement : (∀ a b : SignType, meetWeak a b ≠ 0 → meetMiddle a b ≠ 0) ∧
    (∀ a b : SignType, meetMiddle a b ≠ 0 → min a b ≠ 0) := by
  constructor
  · Hint "This goal has finitely many cases."
    decide
  · decide

Conclusion "
A conjunction that is undefined more often projects more presuppositions. Read as theories of
projection, Weak Kleene predicts that the presupposition of either conjunct always projects,
Middle Kleene that the left conjunct can satisfy the presupposition of the right one, and Strong
Kleene that either conjunct can satisfy the presupposition of the other.

Theories of projection can be ordered in the same way, by how strong the presuppositions they
predict are. The next world does this for the theories in the literature.
"

NewTactic constructor
