import Game.Metadata

World "Sentences"
Level 2

Title "Filtering, by definition"

Introduction "
A theory of projection says when a context, a set of situations, accepts a sentence. Linglib
defines Peters's account, `filtering`, in one line: a context accepts a sentence when the
sentence's Middle Kleene value is defined at every situation of the context.

The statement below says exactly this, so `rfl` proves it: like `=`, an `↔` holds by `rfl` when
its two sides are the same by definition. The statement has a name, `accepts_filtering_iff`, and
once it is proved it joins your inventory.
"

open Presupposition Eval.Presupposition Account

/-- `accepts_filtering_iff : filtering.Accepts I C F ↔ ∀ w ∈ C, Formula.middleKleene I F w ≠ 0`: a
context `C` accepts a formula `F` by Peters's filtering when the Middle Kleene value of `F` is
defined at every situation of `C`. -/
TheoremDoc accepts_filtering_iff as "accepts_filtering_iff" in "Sentences"

/-- A context accepts a sentence by filtering when its Middle Kleene value is defined throughout
the context. -/
Statement accepts_filtering_iff {Atom W : Type} {I : Atom → Set W} {C : Set W}
    {F : Formula Atom} : filtering.Accepts I C F ↔ ∀ w ∈ C, Formula.middleKleene I F w ≠ 0 := by
  rfl

Conclusion "
Peters's theory of projection is the Middle Kleene conjunction of the last world, applied to
sentences.
"

NewDefinition Eval.Presupposition.Account.filtering
