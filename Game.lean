import Game.Levels.TruthTables
import Game.Levels.Laws
import Game.Levels.OrderMatters
import Game.Levels.Map
import Game.Levels.Data

Title "Three-Valued Semantics"

Introduction "
A sentence whose presupposition fails, such as *the king of France is bald*, is neither true nor
false in a trivalent semantics. This game introduces the proof assistant Lean through that idea.
The first three worlds work with three truth values and the conjunctions that combine them; the
last two compare theories of presupposition projection with each other and with an experiment.

Every definition and theorem in the game comes from linglib, a Lean library of formal
linguistics, so the objects you prove things about are the ones its analyses use.

Click on a world to start.
"

Info "
Built on [linglib](https://github.com/linglib-community/linglib) with
[lean4game](https://github.com/leanprover-community/lean4game).

Sources: Kleene (1952), Bochvar (1938), Peters (1979), Heim (1983), Schlenker (2009), Chemla
(2009), Chemla and Schlenker (2012), Kalomoiros (2023).
"

Languages "en"
CaptionShort "Presupposition, truth values and proof"
CaptionLong "Learn Lean through trivalent semantics, then compare theories of presupposition
projection with each other and score them against experimental data."

Dependency TruthTables → Laws → OrderMatters → Map → Data

MakeGame
