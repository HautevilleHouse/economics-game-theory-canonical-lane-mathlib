import EconomicsGameTheoryCanonicalLaneLean.GateLemmas
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsGameTheoryCanonicalLaneLean

def ConstrainedGameTheoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_game_theory_endgame (A : AdmissibleClass) :
    ConstrainedGameTheoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EconomicsGameTheoryCanonicalLaneLean
end HautevilleHouse
