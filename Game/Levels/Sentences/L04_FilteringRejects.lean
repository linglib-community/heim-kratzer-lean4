import Game.Levels.Sentences.L03_FilteringAccepts

World "Sentences"
Level 4

Title "Filtering rejects the second order"

Introduction "
In the other order, the null context does not accept the sentence by filtering. The proof follows
the counterexample level of the last world: `intro h` assumes that it does,
`rw [accepts_filtering_iff] at h` restates the assumption, `specialize h .noKing` applies it to
the situation without a king, and `simp at h` computes.
"

open Presupposition Eval.Presupposition Account Kingdom

/-- The null context does not accept *the king of France is bald and France has a king* by
filtering. -/
Statement : ¬ filtering.Accepts interp Set.univ baldThenKing := by
  intro h
  rw [accepts_filtering_iff] at h
  Hint "`{h}` says that the sentence is defined at every situation. Apply it to the situation
  without a king: `specialize {h} .noKing`."
  specialize h .noKing
  simp at h

Conclusion "
By filtering, *the king of France is bald and France has a king* presupposes that France has a
king, and its second conjunct comes too late to help.
"

NewDefinition Kingdom.Situation.noKing
