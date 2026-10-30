import Eval.Presupposition.Account

/-!
# The model of the Sentences world

Three situations, the two atomic sentences *France has a king* and *the king of France is bald*,
and the two orders of their conjunction. The formulas, connectives and theories are linglib's.
-/

open Presupposition Eval.Presupposition

namespace Kingdom

/-- The situations: France has no king, a king who is not bald, or a bald king. -/
inductive Situation where
  | noKing
  | hairyKing
  | baldKing
  deriving DecidableEq

/-- The atomic sentences *France has a king* and *the king of France is bald*. -/
inductive Atom where
  | king
  | bald

/-- The situations at which each atomic sentence is true. -/
@[simp] def interp : Atom → Set Situation
  | .king => {.hairyKing, .baldKing}
  | .bald => {.baldKing}

/-- *France has a king and the king of France is bald*, the definite description a trigger that
presupposes *France has a king*. -/
@[simp] def kingThenBald : Formula Atom := .bin .conj (.atom .king) (.trigger .king .bald)

/-- *The king of France is bald and France has a king*. -/
@[simp] def baldThenKing : Formula Atom := .bin .conj (.trigger .king .bald) (.atom .king)

end Kingdom

attribute [simp] Presupposition.Formula.eval

/-- Schlenker's symmetric Strong Kleene account accepts a sentence in a context when its Strong
Kleene value is defined at every situation of the context. This restates linglib's
`Schlenker2009.strongKleeneAcceptable_symmetric_iff` for the account. -/
theorem accepts_kleeneSymmetric_iff {Atom W : Type*} {I : Atom → Set W} {C : Set W}
    {F : Formula Atom} :
    Account.kleeneSymmetric.Accepts I C F ↔ ∀ w ∈ C, Formula.strongKleene I F w ≠ 0 :=
  Schlenker2009.strongKleeneAcceptable_symmetric_iff I C F
