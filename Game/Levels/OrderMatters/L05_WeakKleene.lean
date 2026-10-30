import Game.Metadata

World "OrderMatters"
Level 5

Title "Weak Kleene"

Introduction "
Bochvar's internal logic, which is also Kleene's weak logic, treats the third value as infectious:
a conjunction is undefined as soon as either conjunct is. Linglib defines this conjunction as
`meetWeak`. A false conjunct no longer rescues an undefined one in either position.
"

open SignType

/-- In Weak Kleene logic, a false conjunct followed by an undefined one gives an undefined
conjunction. -/
Statement : meetWeak (-1) 0 = 0 := by
  rfl

NewDefinition SignType.meetWeak
