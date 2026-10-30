import Game.Levels.Sentences.L02_FilteringByDefinition

World "Sentences"
Level 3

Title "Filtering accepts the first order"

Introduction "
The null context, `Set.univ`, contains every situation, including the one where France has no
king. Show that it accepts *France has a king and the king of France is bald* by filtering.

1. `rw [accepts_filtering_iff]` states acceptance as definedness at every situation.
2. `intro w _` introduces a situation `w`; the `_` discards the fact that `w` is in the context,
   which is not needed.
3. `cases w` splits the goal into one goal for each situation, and `simp` proves each.
"

open Presupposition Eval.Presupposition Account Kingdom

/-- The null context accepts *France has a king and the king of France is bald* by filtering. -/
Statement : filtering.Accepts interp Set.univ kingThenBald := by
  rw [accepts_filtering_iff]
  intro w _
  Hint "Split by situation with `cases {w}`."
  cases w
  · simp
  · simp
  · simp

Conclusion "
The first order presupposes nothing: its first conjunct filters the presupposition of its second.
"

NewTactic cases
