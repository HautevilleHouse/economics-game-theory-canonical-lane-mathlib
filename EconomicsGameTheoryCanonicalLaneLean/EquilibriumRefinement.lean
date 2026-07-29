import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsGameTheoryCanonicalLaneLean

structure EquilibriumRefinementPackage where
  gameForm : Type
  tremblingHandEquilibrium : Prop
  sequentialEquilibrium : Prop
  properEquilibrium : Prop
  stableEquilibrium : Prop

structure EquilibriumRefinementEvidence (E : EquilibriumRefinementPackage) where
  tremblingHandEquilibriumClosed : E.tremblingHandEquilibrium
  sequentialEquilibriumClosed : E.sequentialEquilibrium
  properEquilibriumClosed : E.properEquilibrium
  stableEquilibriumClosed : E.stableEquilibrium

def EquilibriumRefinementClosed (E : EquilibriumRefinementPackage) : Prop :=
  E.tremblingHandEquilibrium ∧ E.sequentialEquilibrium ∧ E.properEquilibrium ∧ E.stableEquilibrium

theorem equilibrium_refinement_closed_from_evidence (E : EquilibriumRefinementPackage) (Ev : EquilibriumRefinementEvidence E) :
    EquilibriumRefinementClosed E := by
  exact And.intro Ev.tremblingHandEquilibriumClosed
    (And.intro Ev.sequentialEquilibriumClosed
      (And.intro Ev.properEquilibriumClosed Ev.stableEquilibriumClosed))

end EconomicsGameTheoryCanonicalLaneLean
end HautevilleHouse