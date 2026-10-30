import Game.Metadata

World "Map"
Level 1

Title "Heim and Peters"

Introduction "
Heim's dynamic semantics and Peters's filtering connectives predict the same presuppositions: each
is stronger than the other. The statement is a conjunction, so split it with `constructor`, then
close each goal with `exact` and an edge from the inventory.
"

open Eval.Presupposition Account

/-- Heim's context change potentials and Peters's filtering connectives predict the same
presuppositions. -/
Statement : dynamic.Stronger filtering ∧ filtering.Stronger dynamic := by
  constructor
  · exact dynamic_stronger_filtering
  · exact filtering_stronger_dynamic

Conclusion "
The dynamic theory states acceptance with context change potentials, and the filtering theory with
the Middle Kleene truth tables of the last world. The definitions look nothing alike, yet they
accept the same contexts.
"

NewDefinition Eval.Presupposition.Account.Stronger
NewTheorem Eval.Presupposition.Account.dynamic_stronger_filtering
  Eval.Presupposition.Account.filtering_stronger_dynamic
TheoremTab "Map"
