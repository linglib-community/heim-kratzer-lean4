import Game.Levels.Map.L01_HeimAndPeters
import Game.Levels.Map.L02_Transitivity
import Game.Levels.Map.L03_ANewCut

World "Map"
Title "A map of theories"

Introduction "
Linglib registers eleven theories of presupposition projection over a shared propositional
fragment: Heim's (1983) context change potentials (`dynamic`), Peters's (1979) Middle Kleene
filtering (`filtering`), Schlenker's (2009) Transparency and local satisfaction together with the
Strong Kleene and supervaluationist theories he considers, each of these four checked
incrementally or symmetrically, and Kalomoiros's (2023) Limited Symmetry. Each theory says when a context accepts a
sentence.

`a.Stronger b` says that account `a` predicts presuppositions at least as strong as account `b`:
every context that accepts a sentence by `a` also accepts it by `b`. The library proves some of
these comparisons from the theories' own definitions, and these proofs are in your inventory. Call
a comparison that holds an *edge* and one that fails a *cut*.
"
