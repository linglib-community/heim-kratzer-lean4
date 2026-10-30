import Game.Metadata

World "Map"
Level 2

Title "Transitivity"

Introduction "
`Account.Stronger.trans` chains two edges: from `a.Stronger b` and `b.Stronger c` it concludes
`a.Stronger c`. The tactic `apply` works backwards. Here
`apply Account.Stronger.trans transparencyIncremental_stronger_dynamic` supplies the first edge
and leaves the second as the goal.
"

open Eval.Presupposition Account

/-- Incremental Transparency predicts presuppositions at least as strong as filtering. -/
Statement : transparencyIncremental.Stronger filtering := by
  apply Account.Stronger.trans transparencyIncremental_stronger_dynamic
  Hint "The remaining goal is an edge from the last level."
  exact dynamic_stronger_filtering

Conclusion "
Schlenker's incremental Transparency makes no use of context change potentials, and still predicts
presuppositions at least as strong as Peters's filtering in this fragment.
"

NewTactic apply
NewTheorem Eval.Presupposition.Account.Stronger.trans
  Eval.Presupposition.Account.transparencyIncremental_stronger_dynamic
