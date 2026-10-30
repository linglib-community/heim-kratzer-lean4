import Game.Levels.TruthTables.L01_TrueAndUndefined
import Game.Levels.TruthTables.L02_FalseAndUndefined
import Game.Levels.TruthTables.L03_Negation
import Game.Levels.TruthTables.L04_EveryRow
import Game.Levels.TruthTables.L05_ExcludedMiddle
import Game.Levels.TruthTables.L06_FalseConjunctions

World "TruthTables"
Title "Truth tables"

Introduction "
When a presupposition fails, as in *the king of France is bald*, a trivalent semantics gives the
sentence a third value besides truth and falsity.

Linglib represents the three values with `SignType`, a type from Lean's mathematics library
mathlib: `1` is true, `-1` is false, and `0` is undefined. They are ordered `-1 < 0 < 1`, falsity
below undefinedness below truth. In this order Kleene's strong conjunction is the minimum of its
arguments, written `⊓`, and his strong disjunction is the maximum, written `⊔`. Negation, written
`-`, exchanges `1` and `-1` and leaves `0` where it is.
"
