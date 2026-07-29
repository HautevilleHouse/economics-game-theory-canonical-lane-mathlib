import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsGameTheoryCanonicalLaneLean

structure RepeatedGamesPackage where
  stageGame : NashEquilibriumPackage
  horizon : ℕ ∪ ∞
  discountFactor : ℝ
  folkTheorem : Prop
  subgamePerfectEquilibrium : Prop

structure RepeatedGamesEvidence (R : RepeatedGamesPackage) where
  stageGameDefined : NashEquilibriumClosed R.stageGame
  folkTheoremClosed : R.folkTheorem
  subgamePerfectEquilibriumClosed : R.subgamePerfectEquilibrium

def RepeatedGamesClosed (R : RepeatedGamesPackage) : Prop :=
  (NashEquilibriumClosed R.stageGame) ∧ R.folkTheorem ∧ R.subgamePerfectEquilibrium

theorem repeated_games_closed_from_evidence (R : RepeatedGamesPackage)
    (Ev : RepeatedGamesEvidence R) : RepeatedGamesClosed R := by
  exact And.intro Ev.stageGameDefined (And.intro Ev.folkTheoremClosed Ev.subgamePerfectEquilibriumClosed)

end EconomicsGameTheoryCanonicalLaneLean
end HautevilleHouse
