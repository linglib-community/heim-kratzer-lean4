import Game.Levels.OrderMatters.L01_FalsityFirst
import Game.Levels.OrderMatters.L02_UndefinednessFirst
import Game.Levels.OrderMatters.L03_Counterexample
import Game.Levels.OrderMatters.L04_DefinedLeft
import Game.Levels.OrderMatters.L05_WeakKleene
import Game.Levels.OrderMatters.L06_ThreeConjunctions

World "OrderMatters"
Title "Order matters"

Introduction "
Strong Kleene conjunction is commutative, so a false conjunct rescues an undefined one in either
position. Presuppositions are commonly taken to be filtered from left to right instead:
*France has a king and the king of France is bald* presupposes nothing, while *the king of France
is bald and France has a king* still seems to presuppose that France has a king.

Peters (1979) gave a trivalent semantics for this asymmetry, the Middle Kleene connectives, which
read their arguments from left to right. Linglib defines Middle Kleene conjunction as
`meetMiddle`: an undefined left conjunct makes the conjunction undefined, and a defined one
proceeds as in Strong Kleene.
"
