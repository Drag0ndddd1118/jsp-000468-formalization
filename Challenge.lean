import Erdos578

open Filter

namespace JSP000468

/--
Formal statement for JSP-000468 (Erdős Problem #578).
Oliver Riordan (2000) resolved this conjecture of Erdős and Bollobás,
proving that for an independent random graph on 2^d vertices with edge probability 1/2,
the probability of containing a spanning d-dimensional hypercube tends to 1 as d → ∞.
-/
def jsp000468Statement : Prop :=
  Tendsto Erdos578.successProbability atTop (nhds 1)

end JSP000468
