import Game.Metadata

World "Data"
Level 4

Title "A symmetric theory"

Introduction "
The symmetric Strong Kleene theory checks definedness for the sentence as a whole, so material
after the trigger can satisfy the presupposition.

`verdict_experiment1`, now in your inventory, does the work of the last three levels for every
account and cell: it states each verdict as a condition on the account and the cell. After
`rw [verdict_experiment1]`, `decide` checks that condition.
"

open Eval Eval.Presupposition Account Eval.Presupposition.ChemlaSchlenker2012
  _root_.ChemlaSchlenker2012

/-- The symmetric Strong Kleene theory is right on the inverse-order *if*-sentence. -/
Statement : experiment1.verdict kleeneSymmetric.theory (.ifSentence, .inverse) = .correct := by
  rw [verdict_experiment1]
  decide

NewTheorem Eval.Presupposition.ChemlaSchlenker2012.verdict_experiment1
