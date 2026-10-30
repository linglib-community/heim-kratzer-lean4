import Game.Levels.Laws.L01_Commutativity
import Game.Levels.Laws.L02_Propositions
import Game.Levels.Laws.L03_Rewriting
import Game.Levels.Laws.L04_DoubleNegation

World "Laws"
Title "Laws, not tables"

Introduction "
`decide` works because `SignType` has three elements. A classical proposition is a set of possible
worlds, and nothing bounds how many worlds there are, so no truth table lists every proposition.
Facts about propositions are proved from laws instead.

The laws here are those of a lattice, whose meet mathlib writes `⊓`. Strong Kleene conjunction is
the meet of the order on `SignType`, which Lean displays as `min` because that order is linear.
The intersection of two propositions is the meet of the order on sets of worlds, displayed as `⊓`.
The same laws, with the same proofs, hold of both.
"
