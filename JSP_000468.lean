import Erdos578

open Filter

/-- Formal Lean 4 bridge theorem for JSP-000468 (Erdős Problem #578).
Oliver Riordan (2000) resolved this conjecture of Erdős and Bollobás,
proving that for an independent random graph on 2^d vertices with edge probability 1/2,
the probability of containing a spanning d-dimensional hypercube tends to 1 as d → ∞. -/
theorem jsp_000468_solved :
    Tendsto Erdos578.successProbability atTop (nhds 1) :=
  Erdos578.erdos_578

#print axioms jsp_000468_solved
-- 'jsp_000468_solved' depends on axioms: [propext, Classical.choice, Quot.sound]
