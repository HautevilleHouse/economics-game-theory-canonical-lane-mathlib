import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsGameTheoryCanonicalLaneLean

structure EvolutionaryGamePackage where
  populationState : Type u
  replicatorDynamics : Type v
  evolutionaryStableStrategy : Prop
  convergenceProof : Prop

structure EvolutionaryGameEvidence (E : EvolutionaryGamePackage) where
  evolutionaryStableStrategyClosed : E.evolutionaryStableStrategy
  convergenceProofClosed : E.convergenceProof

def EvolutionaryGameClosed (E : EvolutionaryGamePackage) : Prop :=
  E.evolutionaryStableStrategy ∧ E.convergenceProof

theorem evolutionary_game_closed_from_evidence (E : EvolutionaryGamePackage) (Ev : EvolutionaryGameEvidence E) :
    EvolutionaryGameClosed E := by
  exact And.intro Ev.evolutionaryStableStrategyClosed Ev.convergenceProofClosed

end EconomicsGameTheoryCanonicalLaneLean
end HautevilleHouse