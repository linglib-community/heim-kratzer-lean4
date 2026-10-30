import Game.Metadata

World "OrderMatters"
Level 1

Title "Falsity first"

Introduction "
With a false left conjunct, Middle Kleene conjunction is false, as Strong Kleene conjunction is.
"

open SignType
set_option pp.fieldNotation.generalized false

/-- A false conjunct followed by an undefined one gives a false conjunction. -/
Statement : meetMiddle (-1) 0 = -1 := by
  rfl

NewDefinition SignType.meetMiddle
