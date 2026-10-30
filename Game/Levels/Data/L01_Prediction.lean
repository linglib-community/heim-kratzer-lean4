import Game.Metadata

World "Data"
Level 1

Title "The prediction"

Introduction "
`experiment1.predicted T c` is the inference that theory `T` predicts in cell `c` of the design,
by the linking hypothesis: the unconditional inference if every context that accepts the sentence
entails it, and otherwise the conditional inference if every such context entails that one.
Linglib proves which inference each account predicts (`predicted_eq`): the incremental accounts
predict the unconditional inference in the inverse order, and every account predicts the
conditional inference otherwise.

`simp [experiment1, predicted_eq]` unfolds the experiment and applies `predicted_eq`. What
remains is a question about the account.
"

open Eval Eval.Presupposition Account Eval.Presupposition.ChemlaSchlenker2012
  _root_.ChemlaSchlenker2012

/-- `filtering_predicts_unconditional`: filtering predicts the unconditional inference from the
inverse-order *if*-sentence of Experiment 1. -/
TheoremDoc filtering_predicts_unconditional as "filtering_predicts_unconditional" in "Data"

/-- Filtering predicts the unconditional inference from the inverse-order *if*-sentence. -/
Statement filtering_predicts_unconditional :
    experiment1.predicted filtering.theory (.ifSentence, .inverse) = some .unconditional := by
  simp [experiment1, predicted_eq]
  Hint "The prediction is the unconditional inference because filtering is incremental. `decide`
  checks that `filtering` is in the list `incremental`."
  decide

Conclusion "
Filtering predicts that the inverse-order *if*-sentence suggests the unconditional inference,
*Anne will make a reasonable decision*.
"

NewTheorem Eval.Presupposition.ChemlaSchlenker2012.predicted_eq
NewDefinition Eval.Presupposition.ChemlaSchlenker2012.experiment1
TheoremTab "Data"
