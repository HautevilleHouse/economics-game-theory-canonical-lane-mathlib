import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsGameTheoryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure Player where
  id : Nat
  strategySet : Type

definition payoffFunction : Type := Type

structure Game where
  players : List Player
  strategyProfiles : Type
  payoffs : strategyProfiles -> List payoffFunction

definition NashEquilibriumCondition (g : Game) (profile : g.strategyProfiles) : Prop :=
  ∀ (i : Nat) (h : i < g.players.length),
    let player := g.players.get ⟨i, h⟩ in
    ∀ (deviation : player.strategySet),
      (g.payoffs profile).get ⟨i, h⟩ ≥ (g.payoffs (updateProfile g profile i deviation)).get ⟨i, h⟩

structure GameAdmittedObject where
  game : Game
  equilibriumExists : Prop
  conclusion : equilibriumExists

definition GameWitnessClosed (O : GameAdmittedObject) : Prop :=
  O.equilibriumExists

end EconomicsGameTheoryCanonicalLaneLean
end HautevilleHouse