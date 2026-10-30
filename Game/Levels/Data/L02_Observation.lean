import Game.Levels.Data.L01_Prediction

World "Data"
Level 2

Title "The observation"

Introduction "
`experiment1.observed c` is the inference that participants endorsed more in cell `c`, computed
from the mean ratings, which linglib stores as data. For the inverse-order *if*-sentence the
conditional inference had a mean rating of 73 and the unconditional one 49.
`observed_experiment1` gives the outcome of every cell. Rewrite with it, and `decide` the rest.
"

open Eval Eval.Presupposition Account Eval.Presupposition.ChemlaSchlenker2012
  _root_.ChemlaSchlenker2012

/-- `participants_prefer_conditional`: in Experiment 1, participants endorsed the conditional
inference more than the unconditional one for the inverse-order *if*-sentence. -/
TheoremDoc participants_prefer_conditional as "participants_prefer_conditional" in "Data"

/-- Participants endorsed the conditional inference more for the inverse-order *if*-sentence. -/
Statement participants_prefer_conditional :
    experiment1.observed (.ifSentence, .inverse) = some .conditional := by
  rw [observed_experiment1]
  Hint "Only the canonical *unless*-sentence, which was not tested, has no outcome. `decide`
  checks that this cell is a different one."
  decide

Conclusion "
Participants preferred the conditional inference, *studying abroad would be reasonable of Anne*.
"

NewTheorem Eval.Presupposition.ChemlaSchlenker2012.observed_experiment1
