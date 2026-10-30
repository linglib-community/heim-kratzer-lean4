import GameServer

/-- `rfl` closes a goal `a = b` when both sides compute to the same value, and a goal `P ↔ Q`
when its two sides are the same by definition. -/
TacticDoc rfl

/-- `decide` closes a goal about finitely many cases by checking every case. It works for
`SignType`, which has three values, and for statements built from such values with `=`, `¬`,
`∧`, `∨`, `↔`, `→` and quantifiers over finite types. It fails when the statement mentions an
object it cannot enumerate, such as a variable in the context or a set of worlds. -/
TacticDoc decide

/-- `exact e` closes the goal when `e` is a proof of exactly that goal. For example,
`exact inf_comm a b` proves `min a b = min b a`. -/
TacticDoc exact

/-- `rw [h]` rewrites the goal with an equation `h : x = y`, replacing instances of `x` by `y`,
and closes the goal if the result is an identity. `rw [h₁, h₂]` rewrites with each in turn, and
`rw [h] at h'` rewrites the hypothesis `h'`. `rw` cannot rewrite under a binder such as `∀`; use
`simp only [h]` there. -/
TacticDoc rw

/-- `intro h` moves the hypothesis of a goal `P → Q` into the context under the name `h`, leaving
`Q`. A negation `¬ P` means `P → False`, so `intro h` on it assumes `P` and leaves `False`. On a
goal `∀ x, P x`, `intro x` introduces an arbitrary `x`. -/
TacticDoc intro

/-- `specialize h a b` replaces a hypothesis `h : ∀ x y, P x y` by its instance `P a b`. -/
TacticDoc specialize

/-- `simp` simplifies the goal with the lemmas marked for simplification, and closes it if it
reduces to `True`. `simp at h` simplifies the hypothesis `h`, and closes the goal if `h` reduces to
`False`. `simp only [h₁, h₂]` simplifies with the listed lemmas alone, and unlike `rw` it rewrites
under binders. -/
TacticDoc simp

/-- `constructor` splits a goal `P ∧ Q` into the goals `P` and `Q`, which are then proved in
turn. Write `·` before a tactic to focus on the first remaining goal. -/
TacticDoc constructor

/-- `apply e` reasons backwards: when `e` proves the goal from some premises, `apply e` replaces
the goal by those premises. -/
TacticDoc apply

/-- `use x` proves a goal `∃ y, P y` by supplying the witness `x`, leaving `P x`. `use x, y`
supplies two witnesses. -/
TacticDoc use

/-- `cases w` splits the goal into one goal for each way of building `w`. For a situation of the
Sentences world, that is one goal each for `noKing`, `hairyKing` and `baldKing`. -/
TacticDoc cases
