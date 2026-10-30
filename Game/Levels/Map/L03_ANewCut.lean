import Game.Metadata

World "Map"
Level 3

Title "A new cut"

Introduction "
A cut is a comparison that fails, `¬ a.Stronger b`: some context accepts a sentence by `a` and
rejects it by `b`. The library proves that incremental Transparency is stronger than Limited
Symmetry, and that symmetric Transparency is not. From these, show that symmetric Transparency is
not stronger than incremental Transparency.

Begin with `intro h`. If `h : transparencySymmetric.Stronger transparencyIncremental` held,
chaining it with the edge would give a comparison that the cut rules out.
"

open Eval.Presupposition Account

/-- Symmetric Transparency does not predict presuppositions as strong as incremental
Transparency. -/
Statement : ¬ transparencySymmetric.Stronger transparencyIncremental := by
  intro h
  Hint "The goal is `False`. The cut `not_transparencySymmetric_stronger_limitedSymmetry` proves
  `False` from a comparison: `apply` it."
  apply not_transparencySymmetric_stronger_limitedSymmetry
  Hint "Chain `{h}` with the edge `transparencyIncremental_stronger_limitedSymmetry`."
  exact Account.Stronger.trans h transparencyIncremental_stronger_limitedSymmetry

Conclusion "
Some sentence, in some context, is accepted by symmetric Transparency and rejected by incremental
Transparency. The next world asks which of the two speakers side with.
"

NewTheorem Eval.Presupposition.Account.transparencyIncremental_stronger_limitedSymmetry
  Eval.Presupposition.Account.not_transparencySymmetric_stronger_limitedSymmetry
