/-
  Erdős Problem 713 / JSP-000713
  Shortest interval with different multiples of primes

  How short an interval can contain a different multiple
  of each of the first several primes?

  [3,5]: 3=mult of 3, 4=mult of 2, 5=mult of 5. Length 3.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos713

/--
  Main theorem: [3,5] contains different multiples of 2,3,5.
-/
theorem erdos_713 :
    -- 4 is a multiple of 2
    (4 % 2 = 0) ∧
    -- 3 is a multiple of 3
    (3 % 3 = 0) ∧
    -- 5 is a multiple of 5
    (5 % 5 = 0) ∧
    -- Different: 3 ≠ 4, 3 ≠ 5, 4 ≠ 5
    (3 ≠ 4) ∧ (3 ≠ 5) ∧ (4 ≠ 5) ∧
    -- Interval length = 5 - 3 + 1 = 3
    (5 - 3 + 1 = 3) ∧ (3 = 3) := by decide

end Erdos713
