import Game.Metadata

World "TruthTables"
Level 5

Title "Excluded middle"

Introduction "
*Either the king of France is bald or he is not.* Classically every instance of *p or not p* is
true. Trivalently some instance is not, which is what the statement below says: it is not the
case (`¬`) that `a ⊔ -a = 1` for every `a`. `decide` checks negated and quantified statements over
finitely many values as well.
"

/-- Excluded middle is not a law of Strong Kleene logic. -/
Statement : ¬ ∀ a : SignType, a ⊔ -a = 1 := by
  decide

Conclusion "
The failing value is `0`, since `0 ⊔ -0 = 0 ⊔ 0 = 0`.
"
