import GameServer
import Eval.Presupposition.ChemlaSchlenker2012
import Lab.Colinguistics.QuantifiedLimitedSymmetry
import Game.Kingdom

/-- `inf_comm a b : a ⊓ b = b ⊓ a`, in every lattice. On a linear order such as `SignType`, Lean
displays `a ⊓ b` as `min a b`. -/
TheoremDoc inf_comm as "inf_comm" in "Lattice"

/-- `inf_assoc a b c : a ⊓ b ⊓ c = a ⊓ (b ⊓ c)`, in every lattice, where `a ⊓ b ⊓ c` means
`(a ⊓ b) ⊓ c`. On `SignType` this reads `min (min a b) c = min a (min b c)`. -/
TheoremDoc inf_assoc as "inf_assoc" in "Lattice"

/-- `neg_neg a : -(-a) = a`: double negation, for every involutive negation. -/
TheoremDoc neg_neg as "neg_neg" in "Lattice"

/-- `accepts_kleeneSymmetric_iff : kleeneSymmetric.Accepts I C F ↔
∀ w ∈ C, Formula.strongKleene I F w ≠ 0`: a context accepts a formula by the symmetric Strong
Kleene account when its Strong Kleene value is defined at every situation of the context. Linglib
proves this as `Schlenker2009.strongKleeneAcceptable_symmetric_iff`. -/
TheoremDoc accepts_kleeneSymmetric_iff as "accepts_kleeneSymmetric_iff" in "Sentences"

/-- Heim's context change potentials predict presuppositions at least as strong as Peters's
filtering connectives. -/
TheoremDoc Eval.Presupposition.Account.dynamic_stronger_filtering as
  "dynamic_stronger_filtering" in "Map"

/-- Peters's filtering connectives predict presuppositions at least as strong as Heim's context
change potentials. -/
TheoremDoc Eval.Presupposition.Account.filtering_stronger_dynamic as
  "filtering_stronger_dynamic" in "Map"

/-- `Account.Stronger.trans : a.Stronger b → b.Stronger c → a.Stronger c`. -/
TheoremDoc Eval.Presupposition.Account.Stronger.trans as "Account.Stronger.trans" in "Map"

/-- Schlenker's incremental Transparency predicts presuppositions at least as strong as Heim's
context change potentials. -/
TheoremDoc Eval.Presupposition.Account.transparencyIncremental_stronger_dynamic as
  "transparencyIncremental_stronger_dynamic" in "Map"

/-- Incremental Transparency predicts presuppositions at least as strong as Kalomoiros's Limited
Symmetry. -/
TheoremDoc Eval.Presupposition.Account.transparencyIncremental_stronger_limitedSymmetry as
  "transparencyIncremental_stronger_limitedSymmetry" in "Map"

/-- Symmetric Transparency is not stronger than Limited Symmetry: some context accepts a sentence
by the first and rejects it by the second. -/
TheoremDoc Eval.Presupposition.Account.not_transparencySymmetric_stronger_limitedSymmetry as
  "not_transparencySymmetric_stronger_limitedSymmetry" in "Map"

/-- `predicted_eq a k o`: in Experiment 1, an incremental account predicts the unconditional
inference from an inverse-order sentence, and every account predicts the conditional inference
otherwise. -/
TheoremDoc Eval.Presupposition.ChemlaSchlenker2012.predicted_eq as "predicted_eq" in "Data"

/-- `observed_experiment1 k o`: in Experiment 1, participants endorsed the conditional inference
more in every tested cell. The canonical *unless*-sentence was not tested. -/
TheoremDoc Eval.Presupposition.ChemlaSchlenker2012.observed_experiment1 as
  "observed_experiment1" in "Data"

/-- The verdict of an account on a cell of Chemla and Schlenker's Experiment 1: silent on the
untested canonical *unless*-sentence, wrong for an incremental account on an inverse-order
sentence, and correct otherwise. -/
TheoremDoc Eval.Presupposition.ChemlaSchlenker2012.verdict_experiment1 as
  "verdict_experiment1" in "Data"

/-- The verdict on Limited Symmetry, extended to quantified sentences, in Chemla's (2009)
Experiment 1: wrong when every presupposition is accommodated in the context, and correct
otherwise. -/
TheoremDoc Lab.Colinguistics.verdict_chemla2009a as "verdict_chemla2009a" in "Data"
