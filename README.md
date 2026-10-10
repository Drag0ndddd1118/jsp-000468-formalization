# Formalization of JSP-000468 (Erdős Problem #578)

This repository contains the standalone Lean 4 formalization and DefEq bridge verification for **JSP-000468** (Erdős Problem #578).

## Problem Statement

> Under suitable parameters, does a random graph contain a spanning hypercube with probability tending to one?

**Mathematical Resolution:**
Resolved by Oliver Riordan (2000), confirming the conjecture of Erdős and Bollobás that for the independent random graph on $2^d$ labelled vertices with edge probability $1/2$, the probability of containing a spanning $d$-dimensional hypercube tends to $1$ as $d \to \infty$.

## Verification

To verify the formalization locally:

```bash
lake exe cache get
lake build
python3 check.py
```

### Axioms

The proof depends strictly on standard foundational Lean axioms:
- `propext`
- `Classical.choice`
- `Quot.sound`

Zero custom axioms, zero `sorry`, zero `admit`.
