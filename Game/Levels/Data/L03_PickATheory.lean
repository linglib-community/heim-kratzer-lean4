import Game.Metadata

World "Data"
Level 3

Title "Pick a theory"

Introduction "
Find a theory that is never wrong on Experiment 1. The statement is existential: `use` supplies
the witness, any account you choose, such as `use kleeneSymmetric`.

The verdict then sits under `∀`, where `rw` cannot reach it. `simp only [verdict_experiment1]`
rewrites under binders, and `decide` then checks every cell of the design.
"

open Eval Eval.Presupposition Account Eval.Presupposition.ChemlaSchlenker2012
  _root_.ChemlaSchlenker2012

/-- Some account is wrong on no cell of Experiment 1. -/
Statement : ∃ a : Account, ∀ k o, experiment1.verdict a.theory (k, o) ≠ .wrong := by
  Hint "Choose with the inverse-order cells in mind. If you choose an incremental account, such
  as `dynamic`, `decide` will report that the claim is false."
  use .kleeneSymmetric
  simp only [verdict_experiment1]
  decide

Conclusion "
Every symmetric account survives Experiment 1, and so does Limited Symmetry, which checks the
presupposition at the end of the sentence as well as after the trigger.
"

NewTactic use
