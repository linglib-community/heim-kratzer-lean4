import Game.Metadata

World "Data"
Level 2

Title "A symmetric theory"

Introduction "
The symmetric Strong Kleene theory checks definedness for the sentence as a whole, so material
after the trigger can satisfy the presupposition.
"

open Eval Eval.Presupposition Account Eval.Presupposition.ChemlaSchlenker2012
  _root_.ChemlaSchlenker2012

/-- The symmetric Strong Kleene theory is right on the inverse-order *if*-sentence. -/
Statement : experiment1.verdict kleeneSymmetric.theory (.ifSentence, .inverse) = .correct := by
  rw [verdict_experiment1]
  decide

NewDefinition Eval.Presupposition.Account.kleeneSymmetric
