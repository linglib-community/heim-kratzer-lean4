# What belongs in linglib

The game proves things about linglib's objects, so every declaration a level uses either comes
from linglib or is the game's own. This file records which, for each declaration on the boundary.

## The rule

A declaration belongs in linglib when a linglib study or theory file states it, or would cite it,
without the game: the objects of a theory, theorems about them, recorded data, and a source's own
predictions. It stays in the game when it exists for play or display: notation and printing,
models built for a level, restatements that put a linglib result in the form a level's inventory
needs, and level statements that instantiate a linglib lemma.

The game does not prove what linglib should state. When a level needs a result that linglib lacks,
the result goes into linglib first, and the game then moves its pinned commit (see the README).

Status: **pinned** means in linglib at the commit pinned in `lakefile.lean`; **linglib #N** means
in an open or merged linglib PR after the pin; **PR** and **branch** mean in the game but not yet on
`main`.

## Needed from linglib

| Result | In linglib | Status | Used for |
| --- | --- | --- | --- |
| Weak Kleene projection: a formula evaluated by the Weak Kleene connectives is defined exactly where the presupposition of each of its triggers holds | `Presupposition.Formula.weakKleene_ne_zero_iff` in `Semantics/Presupposition/SyntacticEnvironment.lean` | linglib #6045 | Coppock and Champollion's claim that the Weak Kleene connectives predict that presuppositions always project |
| Under the Weak Kleene connectives a formula is undefined exactly when one of its atoms is, so they do not define Strong Kleene conjunction | `Trivalent.Formula.eval_weakKleene_eq_zero_iff`, `Trivalent.Formula.not_exists_eval_weakKleene_eq_inf` in `Logic/Trivalent/Propositional.lean` | linglib #6045 | their claim that Weak Kleene is definable from Strong Kleene "but not vice versa" |
| The Strong Kleene connectives define the Weak Kleene ones | `Trivalent.Formula.exists_eval_strongKleene_eq_meetWeak` and `…_joinWeak` in `Logic/Trivalent/Propositional.lean`; the identities `meetWeak_eq`, `joinWeak_eq` in `Studies/BeaverKrahmer2001.lean` | linglib #6045; pinned | the other direction of the same claim |
| The partial definite article, and presupposition failure as distinct from uninterpretability | `Semantics/Composition/Partial.lean`; `the_pizza`, `the_student_fails`, `the_john_uninterpretable` in `Studies/HeimKratzer1998.lean` | pinned | undefined values of types other than `t` |

## Stays in the game

| Declaration | File | Status | Why it stays |
| --- | --- | --- | --- |
| `Kingdom`: three situations, two atomic sentences, `interp`, `kingThenBald`, `baldThenKing` | `Game/Kingdom.lean` | PR #2 | A model built for the Sentences world. |
| `accepts_kleeneSymmetric_iff` | `Game/Kingdom.lean` | PR #2 | Restates `Schlenker2009.strongKleeneAcceptable_symmetric_iff` at `Account.kleeneSymmetric` so that one rewrite in the inventory reaches it. |
| `accepts_filtering_iff` | Sentences, level 2 | PR #2 | `filtering.Accepts` unfolded by `rfl`, stated as definedness at every situation of the context. |
| `filtering_predicts_unconditional`, `participants_prefer_conditional` | Data, levels 1 and 2 | PR #2 | Single cells of `predicted_eq` and `observed_experiment1` in `Eval/Presupposition/ChemlaSchlenker2012.lean`, posed as exercises. |
| Coppock and Champollion's notation: `T`, `F`, `♯`, `∂(φ)`, `𝐀(φ)`, `[φ ∧ ψ]` and its variants, `¬φ`, and the printers that display linglib's terms in it | `Game/Notation.lean` | branch `book-notation` | It is one textbook's display convention. Its printers act on every `SignType`, which linglib also uses for the signs of numbers (`Core/Basic/Sign.lean`, `Core/Probability`, `Logic/ComparativeProbability`); `T` and `F` would block names linglib uses; and the bracketed forms overload list literals and the connectives on `Prop`. `Logic/Trivalent/Basic.lean` leaves these operations unnamed by design. |

## Open questions

| Item | Question | Notes |
| --- | --- | --- |
| The assertion operator 𝐀 | Should linglib name it, as notation scoped to `Trivalent`? | `ofProp (a = 1)` occurs about 50 times in 18 files of linglib. Naming it changes the policy of `Logic/Trivalent/Basic.lean` and is decided there; the game works without it. |
| Coppock and Champollion's entry for *every*, (21) in the draft of September 2, 2026 | A linglib study of the textbook, or a game level only? | With a bivalent restrictor and scope, its value is the same under Weak and Strong Kleene conjunction, and under both it is undefined exactly when the restrictor is empty, although the text says the prediction depends on Weak Kleene. Raise this with the authors before it appears in either place. |
