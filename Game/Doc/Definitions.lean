import GameServer
import Linglib.Logic.Trivalent.Basic
import Eval.Presupposition.Account

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
