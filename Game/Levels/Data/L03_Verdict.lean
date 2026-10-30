import Game.Levels.Data.L02_Observation

World "Data"
Level 3

Title "The verdict"

Introduction "
A verdict compares a prediction with an observation (`Experiment.verdict`): `correct` if they
agree, `wrong` if they differ, and `silent` if either is missing. Unfold the definition with
`rw [Experiment.verdict]`, then rewrite with the results of the last two levels, which are now in
your inventory.
"

open Eval Eval.Presupposition Account Eval.Presupposition.ChemlaSchlenker2012
  _root_.ChemlaSchlenker2012

/-- Peters's filtering is wrong on the inverse-order *if*-sentence. -/
Statement : experiment1.verdict filtering.theory (.ifSentence, .inverse) = .wrong := by
  rw [Experiment.verdict]
  Hint "Rewrite the prediction and the observation:
  `rw [filtering_predicts_unconditional, participants_prefer_conditional]`."
  rw [filtering_predicts_unconditional, participants_prefer_conditional]
  Hint "The prediction and the observation differ. `rfl` computes the verdict."
  rfl

Conclusion "
Filtering is wrong on this cell. In the next level, `verdict_experiment1` does the work of these
three levels for every account and every cell at once.
"

NewDefinition Eval.Experiment.verdict
