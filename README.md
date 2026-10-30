# Three-Valued Semantics

A [lean4game](https://github.com/leanprover-community/lean4game) that teaches Lean through trivalent
semantics and presupposition projection. Apart from a three-situation model for its examples,
every definition and theorem it uses comes from
[linglib](https://github.com/linglib-community/linglib).

| World | Content | Tactics |
| --- | --- | --- |
| Truth tables | Strong Kleene values on `SignType` | `rfl`, `decide` |
| Laws, not tables | lattice laws for Strong Kleene and classical conjunction | `exact`, `rw` |
| Order matters | Middle Kleene (Peters 1979) and Weak Kleene conjunction | `intro`, `specialize`, `simp`, `constructor` |
| From connectives to sentences | Peters's filtering and the symmetric Strong Kleene account on *France has a king and the king of France is bald*, in both orders | `cases` |
| A map of theories | comparisons between linglib's eleven projection accounts | `apply` |
| Theories meet data | predictions, observations and verdicts on Chemla and Schlenker (2012), and the unpublished extension of Limited Symmetry in `Lab` | `use` |

## Building

The game requires linglib at a pinned commit (see `lakefile.lean`), and mathlib comes with it.

```bash
lake update -R
lake exe cache get   # mathlib's compiled files
lake build
```

To play locally, clone `lean4game` next to this folder and run `npm install && npm start` in it, then
open http://localhost:3000/#/g/local/heim-kratzer-lean4. See lean4game's
[running locally](https://github.com/leanprover-community/lean4game/blob/main/doc/running_locally.md).

## Publishing

A push to `main` runs `.github/workflows/build.yml`, which builds the game and uploads it as an
artifact. Then open https://adam.math.hhu.de/import/trigger/linglib-community/heim-kratzer-lean4 to
import it into the game server; it is then playable at
https://adam.math.hhu.de/#/g/linglib-community/heim-kratzer-lean4.

To move to a newer linglib, update the commit in `lakefile.lean` and run `lake update linglib`. The
game's toolchain must match linglib's and have a matching `lean4game` tag.
