import Game.Metadata

World "Sentences"
Level 1

Title "Two orders"

Introduction "
Linglib's theories of projection share a small language of formulas (`Formula`), built from
atomic sentences and triggers with negation and the binary connectives. A trigger `trigger p q`
presupposes `p` and asserts `q`: it is true where both hold, false where `p` holds and `q` does
not, and undefined where `p` fails. An interpretation, here `interp`, says where each atomic
sentence is true.

This world's model has three situations: `noKing`, `hairyKing` (France has a king who is not
bald) and `baldKing`. `kingThenBald` is *France has a king and the king of France is bald*, and
`baldThenKing` is the same conjunction in the other order. `Formula.middleKleene interp F w` is the
value of the formula `F` at the situation `w` by Peters's Middle Kleene connectives.

Where France has no king, the two orders have the values `meetMiddle (-1) 0` and
`meetMiddle 0 (-1)`, which you computed in the first two levels of the last world. Split the
statement with `constructor` and compute each value with `simp`.
"

open Presupposition Kingdom

/-- Where France has no king, the first order is false and the second undefined. -/
Statement : Formula.middleKleene interp kingThenBald .noKing = -1 ∧
    Formula.middleKleene interp baldThenKing .noKing = 0 := by
  constructor
  · simp
  · simp

Conclusion "
Read from left to right, the false conjunct *France has a king* makes the first order false
before its trigger is reached. In the second order the trigger comes first, and its failed
presupposition makes the conjunction undefined.
"

NewDefinition Presupposition.Formula Presupposition.Formula.middleKleene Kingdom.interp
  Kingdom.kingThenBald Kingdom.baldThenKing
