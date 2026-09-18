import Lake
open Lake DSL

package "jsp-000468-formalization" where

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.33.0"

lean_lib Erdos578

@[default_target]
lean_lib «JSP_000468» where
  roots := #[`JSP_000468, `Erdos578]
