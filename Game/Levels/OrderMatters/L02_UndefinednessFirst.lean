import Game.Metadata

World "OrderMatters"
Level 2

Title "Undefinedness first"

Introduction "
With an undefined left conjunct, Middle Kleene conjunction is undefined, even though the right
conjunct is false. Strong Kleene conjunction gives `min 0 (-1) = -1` here.
"

open SignType
set_option pp.fieldNotation.generalized false

/-- An undefined conjunct followed by a false one gives an undefined conjunction. -/
Statement : meetMiddle 0 (-1) = 0 := by
  rfl
