import Game.Metadata

World "Data"
Level 6

Title "No incremental theory survives"

Introduction "
`incremental` lists the six incremental accounts. Show that each of them is wrong on some cell:
introduce an account `a` and the hypothesis `ha` that it is incremental, `use` the cell that
refutes it, rewrite the verdict, and let `simp` finish with `simp [ha]`.
"

open Eval Eval.Presupposition Account Eval.Presupposition.ChemlaSchlenker2012
  _root_.ChemlaSchlenker2012

/-- Every incremental account is wrong on some cell of Experiment 1. -/
Statement : ∀ a ∈ incremental, ∃ k o, experiment1.verdict a.theory (k, o) = .wrong := by
  intro a ha
  Hint "Which cell refutes an incremental account? Supply its construction and order, as in
  `use .ifSentence, .inverse`."
  use .ifSentence, .inverse
  rw [verdict_experiment1]
  simp [ha]

Conclusion "
The theories of the last world that coincide on this fragment, Heim's, Peters's, and incremental
Transparency among them, fail together.
"
