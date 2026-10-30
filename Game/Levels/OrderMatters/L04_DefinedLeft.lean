import Game.Metadata

World "OrderMatters"
Level 4

Title "Defined left conjuncts"

Introduction "
Once the left conjunct is defined, Middle Kleene conjunction agrees with Strong Kleene. The
statement uses `≠` for *is not equal to* and `→` for *if ... then*.
"

open SignType
set_option pp.fieldNotation.generalized false

/-- With a defined left conjunct, Middle Kleene conjunction is Strong Kleene conjunction. -/
Statement : ∀ a b : SignType, a ≠ 0 → meetMiddle a b = min a b := by
  decide

Conclusion "
The asymmetry lies entirely in the left conjunct. A false left conjunct rescues an undefined right
one, but a false right conjunct does not rescue an undefined left one.
"
