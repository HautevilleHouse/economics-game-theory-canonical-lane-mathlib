import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsGameTheoryCanonicalLaneLean

structure MinimaxTheoremPackage (A : AdmissibleClass) where
  zeroSum : Prop
  mixedStrategies : Type u
  valueOfGame : Prop
  minimaxEquality : Prop
  zeroSumClosed : zeroSum
  valueOfGameClosed : valueOfGame
  minimaxEqualityClosed : minimaxEquality

structure MinimaxTheoremEvidence (A : AdmissibleClass) (M : MinimaxTheoremPackage A) where
  zeroSumClosed : M.zeroSum
  valueOfGameClosed : M.valueOfGame
  minimaxEqualityClosed : M.minimaxEquality

def MinimaxTheoremClosed (A : AdmissibleClass) (M : MinimaxTheoremPackage A) : Prop :=
  M.zeroSum ∧ M.valueOfGame ∧ M.minimaxEquality

theorem minimax_theorem_closed_from_evidence (A : AdmissibleClass) (M : MinimaxTheoremPackage A) (E : MinimaxTheoremEvidence A M) :
    MinimaxTheoremClosed A M := by
  exact And.intro E.zeroSumClosed (And.intro E.valueOfGameClosed E.minimaxEqualityClosed)

end EconomicsGameTheoryCanonicalLaneLean
end HautevilleHouse