import Game.Metadata

World "Data"
Level 1

Title "Filtering in the inverse order"

Introduction "
`verdict_experiment1` rewrites the verdict on a cell into a condition on the account and the cell.
After `rw [verdict_experiment1]` that condition can be checked with `decide`.
"

open Eval.Presupposition Account Eval.Presupposition.ChemlaSchlenker2012

/-- Peters's filtering is wrong on the inverse-order *if*-sentence. -/
Statement : experiment1.verdict filtering.theory (.ifSentence, .inverse) = .wrong := by
  rw [verdict_experiment1]
  decide

Conclusion "
Filtering predicts the unconditional inference here, and participants preferred the conditional
one.
"

NewTheorem Eval.Presupposition.ChemlaSchlenker2012.verdict_experiment1
TheoremTab "Data"
