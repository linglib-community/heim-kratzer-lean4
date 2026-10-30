import Game.Levels.Sentences.L04_FilteringRejects

World "Sentences"
Level 5

Title "Strong Kleene accepts both orders"

Introduction "
Schlenker's symmetric Strong Kleene account (`kleeneSymmetric`) also asks whether the sentence is
defined throughout the context, but by the Strong Kleene connectives, which do not care about the
order of the conjuncts. `accepts_kleeneSymmetric_iff`, now in your inventory, states this; linglib
proves it as `Schlenker2009.strongKleeneAcceptable_symmetric_iff`.

Show that the null context accepts the second order by this account. The proof has the shape of
the one two levels ago.
"

open Presupposition Eval.Presupposition Account Kingdom

/-- The null context accepts *the king of France is bald and France has a king* by the symmetric
Strong Kleene account. -/
Statement : kleeneSymmetric.Accepts interp Set.univ baldThenKing := by
  rw [accepts_kleeneSymmetric_iff]
  intro w _
  cases w
  · simp
  · simp
  · simp

Conclusion "
The two accounts disagree about this sentence. Filtering predicts that it presupposes that France
has a king, and the symmetric account predicts no presupposition, since a false second conjunct
already makes the sentence false. Whether material after a trigger can satisfy its presupposition
is the question the last two worlds put to the theories and to the data.
"

NewTheorem accepts_kleeneSymmetric_iff
NewDefinition Eval.Presupposition.Account.kleeneSymmetric Presupposition.Formula.strongKleene
