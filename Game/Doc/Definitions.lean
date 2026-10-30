import GameServer
import Linglib.Logic.Trivalent.Basic
import Eval.Presupposition.ChemlaSchlenker2012
import Game.Kingdom

/-- The three truth values: `1` is true, `0` is undefined, `-1` is false, ordered
`-1 < 0 < 1`. Strong Kleene conjunction is the minimum `min`, disjunction the maximum `max`, and
negation `-` exchanges `1` and `-1` and fixes `0`. -/
DefinitionDoc SignType as "SignType"

/-- Middle Kleene conjunction (Peters 1979): an undefined left conjunct makes the conjunction
undefined, and a defined one proceeds by Strong Kleene. So `meetMiddle (-1) 0 = -1` but
`meetMiddle 0 (-1) = 0`. -/
DefinitionDoc SignType.meetMiddle as "meetMiddle"

/-- Weak Kleene conjunction: the conjunction is undefined as soon as either conjunct is. -/
DefinitionDoc SignType.meetWeak as "meetWeak"

/-- `a.Stronger b`: account `a` predicts presuppositions at least as strong as account `b`, that
is, every context that accepts a sentence by `a` accepts it by `b`. -/
DefinitionDoc Eval.Presupposition.Account.Stronger as "Account.Stronger"

/-- The symmetric Strong Kleene account: a context accepts a sentence when the sentence has a
Strong Kleene value at every world of the context, with no reference to the order of its
parts. -/
DefinitionDoc Eval.Presupposition.Account.kleeneSymmetric as "kleeneSymmetric"

/-- The formulas shared by linglib's theories of projection: atomic sentences, triggers, negation,
and the binary connectives. `trigger p q` presupposes `p` and asserts `q`. -/
DefinitionDoc Presupposition.Formula as "Formula"

/-- `Formula.middleKleene I F w`: the value of the formula `F` at the situation `w` by Peters's
Middle Kleene connectives, where the interpretation `I` says where each atomic sentence is true.
A trigger is undefined where its presupposition is false. -/
DefinitionDoc Presupposition.Formula.middleKleene as "Formula.middleKleene"

/-- `Formula.strongKleene I F w`: the value of the formula `F` at the situation `w` by the Strong
Kleene connectives. -/
DefinitionDoc Presupposition.Formula.strongKleene as "Formula.strongKleene"

/-- Where each atomic sentence of the Sentences world is true: *France has a king* at `hairyKing`
and `baldKing`, *the king of France is bald* at `baldKing`. -/
DefinitionDoc Kingdom.interp as "interp"

/-- *France has a king and the king of France is bald*. -/
DefinitionDoc Kingdom.kingThenBald as "kingThenBald"

/-- *The king of France is bald and France has a king*. -/
DefinitionDoc Kingdom.baldThenKing as "baldThenKing"

/-- The situation in which France has no king. -/
DefinitionDoc Kingdom.Situation.noKing as "noKing"

/-- Peters's filtering account: a context accepts a sentence when the sentence's Middle Kleene
value is defined at every situation of the context. -/
DefinitionDoc Eval.Presupposition.Account.filtering as "filtering"

/-- Chemla and Schlenker's (2012) Experiment 1. Its cells pair a construction with an order, and
for each it records the inference participants endorsed more and the inference each theory
predicts. -/
DefinitionDoc Eval.Presupposition.ChemlaSchlenker2012.experiment1 as "experiment1"

/-- `X.verdict T c` compares the prediction of theory `T` in cell `c` with the observation:
`correct` if they agree, `wrong` if they differ, `silent` if either is missing. -/
DefinitionDoc Eval.Experiment.verdict as "Experiment.verdict"
