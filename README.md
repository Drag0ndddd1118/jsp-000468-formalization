# Formalization of JSP-000468 (Erdős Problem #578)

## Problem Overview

**Catalog ID:** [JSP-000468](https://github.com/TheJustinSunPrize/awards/blob/main/problems/catalog-0401-0500.md#JSP-000468)  
**Erdős Problem:** [#578](https://www.erdosproblems.com/578)  
**Mathematical Area:** Graph theory  

### Problem Statement
Under suitable parameters, does a random graph contain a spanning hypercube with probability tending to one?

Specifically, Erdős and Bollobás conjectured that if $G$ is an independent random graph on $2^d$ vertices with edge probability $1/2$, then $G$ almost surely contains a spanning copy of $Q_d$ (the $d$-dimensional hypercube with $2^d$ vertices and $d 2^{d-1}$ edges) as $d \to \infty$.

### Resolution
Resolved affirmatively by Oliver Riordan (2000):
- **Reference:** O. Riordan, *Spanning subgraphs of random graphs*, Combin. Probab. Comput. 9 (2000), 125–148. [doi:10.1017/s0963548399004150](https://doi.org/10.1017/s0963548399004150).

Riordan proved that for any edge-probability $p > 1/4$, a random graph on $2^d$ vertices contains a spanning copy of $Q_d$ with probability tending to $1$ as $d \to \infty$.

## Formalization Details

- **Target File:** `JSP_000468.lean`
- **Underlying Formalization:** `Erdos578.lean`
- **Main Theorem:**
  ```lean
  theorem jsp_000468_solved :
      Filter.Tendsto Erdos578.successProbability Filter.atTop (nhds 1) :=
    Erdos578.erdos_578
  ```
- **Axioms Check:**
  `#print axioms jsp_000468_solved` depends strictly on standard foundational Lean axioms:
  ```lean
  [propext, Classical.choice, Quot.sound]
  ```
  Zero `sorry`, zero `admit`, zero custom axioms.

## Build & Verification Instructions

### Toolchain
- **Lean:** `leanprover/lean4:v4.33.0`
- **Mathlib:** `v4.33.0`

### Build
```bash
lake exe cache get
lake build
```

## Attribution & Provenance
- **Mathematical Solution:** Oliver Riordan (2000).
- **Formal Authors:** OpenAI Codex, GPT-5.6 Sol, with upstream formalization in `plby/lean-proofs` (`src/latest/ErdosProblems/Erdos578.lean`).
- **Packaging & Verification:** Maintained and verified by 赵钦 (Qin Zhao, GitHub: [@Drag0ndddd1118](https://github.com/Drag0ndddd1118)).
- **Submission Type:** Record-only catalog citation; no award claim is pending for this entry.
