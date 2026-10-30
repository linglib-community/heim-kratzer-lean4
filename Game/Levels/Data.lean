import Game.Levels.Data.L01_Prediction
import Game.Levels.Data.L02_Observation
import Game.Levels.Data.L03_Verdict
import Game.Levels.Data.L04_SymmetricInverse
import Game.Levels.Data.L05_PickATheory
import Game.Levels.Data.L06_NoIncrementalTheory
import Game.Levels.Data.L07_Frontier

World "Data"
Title "Theories meet data"

Introduction "
Incremental and symmetric theories part ways when a presupposition can be satisfied only by
material after its trigger. Chemla and Schlenker (2012) tested this with *too*, in French. In the
canonical order the clause that can satisfy the presupposition comes first:

> If Anne decides to study abroad, her brother too will make a reasonable decision.

In the inverse order, the contraposition, it comes last:

> If Anne's brother too does not make a reasonable decision, Anne will not decide to study abroad.

Participants rated two inferences, the unconditional *Anne will make a reasonable decision* and
the conditional *studying abroad would be reasonable of Anne*. The incremental theories predict
the conditional inference in the canonical order and the unconditional one in the inverse order;
the symmetric theories predict the conditional inference in both. In Experiment 1 the conditional
inference was rated higher for every tested sentence, in the inverse order too: for the
*if*-sentences, mean ratings of 87 against 58 in the canonical order and 73 against 49 in the
inverse order.

Linglib scores each theory cell by cell (`experiment1`). A verdict is `correct`, `wrong`, or
`silent`, the last for the canonical *unless*-sentence, which was not tested.
"
