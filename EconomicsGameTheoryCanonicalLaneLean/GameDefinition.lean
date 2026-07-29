import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsGameTheoryCanonicalLaneLean

structure GameType where
  playerSet : Type u
  strategySets : playerSet → Type v
  utilityFunctions : (playerSet → (s : playerSet) → strategySets s) → ℝ

structure NashEquilibrium where
  game : GameType
  strategyProfile : (p : game.playerSet) → game.strategySets p
  bestResponseCondition : ∀ (p : game.playerSet) (deviation : game.strategySets p),
    game.utilityFunctions (fun (q : game.playerSet) =>
      if q = p then deviation else strategyProfile q) ≤
    game.utilityFunctions strategyProfile

end EconomicsGameTheoryCanonicalLaneLean
end HautevilleHouse
