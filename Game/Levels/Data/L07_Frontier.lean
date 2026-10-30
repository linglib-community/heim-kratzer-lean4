import Game.Metadata

World "Data"
Level 7

Title "The frontier"

Introduction "
Limited Symmetry is stated for the propositional fragment, and its extension to quantified
sentences is unpublished. Linglib keeps it in `Lab`, where theories under development are scored
by the same linking hypotheses as published ones.

Chemla (2009) asked whether a sentence with a presupposition trigger in the scope of a quantifier
over ten students suggests that every student satisfies the presupposition, and found that this
universal inference was accepted at different rates for *each* and *no* than for the numerical
quantifiers. Whether Limited Symmetry fits depends on where the presupposition is accommodated.
With every presupposition accommodated in the context it predicts no difference between the
quantifiers. With a rule that accommodates in the context only the presuppositions that
Transparency derives in one step, it predicts the difference.
`Lab.Colinguistics.verdict_chemla2009a` gives the verdict for each way of accommodating.
"

open Eval Eval.Presupposition Lab.Colinguistics

/-- Extended to quantified sentences, Limited Symmetry is wrong on Chemla's (2009) Experiment 1
with every presupposition accommodated in the context, and right with one-step accommodation. -/
Statement : Chemla2009a.experiment1.verdict (limitedSymmetry, .global) () = .wrong ∧
    Chemla2009a.experiment1.verdict (limitedSymmetry, .oneStep) () = .correct := by
  constructor
  · rw [verdict_chemla2009a]
    decide
  · rw [verdict_chemla2009a]
    decide

Conclusion "
The two verdicts differ in the accommodation rule that links the theory to the data, not in the
theory of projection. Which rule speakers follow is still open, and the scoring makes it explicit
as a separate assumption.

Apart from the three situations of the Sentences world, everything in this game comes from
linglib: the truth values and connectives from `Linglib/Logic/Trivalent`, the formulas from
`Linglib/Semantics/Presupposition`, the theories and their comparisons from
`Eval/Presupposition`, and the unpublished extension from `Lab/Colinguistics`.
"

NewTheorem Lab.Colinguistics.verdict_chemla2009a
