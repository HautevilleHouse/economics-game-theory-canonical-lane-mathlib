import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsGameTheoryCanonicalLaneLean

structure NashEquilibriumPackage (A : AdmissibleClass) where
  players : Nat
  actions : Type u
  payoffs : Type v
  strategyProfile : actions
  bestResponseCondition : Prop
  equilibriumExists : Prop
  bestResponseConditionClosed : bestResponseCondition
  equilibriumExistsClosed : equilibriumExists

structure NashEquilibriumEvidence (A : AdmissibleClass) (N : NashEquilibriumPackage A) where
  bestResponseConditionClosed : N.bestResponseCondition
  equilibriumExistsClosed : N.equilibriumExists

def NashEquilibriumClosed (A : AdmissibleClass) (N : NashEquilibriumPackage A) : Prop :=
  N.bestResponseCondition ∧ N.equilibriumExists

theorem nash_equilibrium_closed_from_evidence (A : AdmissibleClass) (N : NashEquilibriumPackage A) (E : NashEquilibriumEvidence A N) :
    NashEquilibriumClosed A N := by
  exact And.intro E.bestResponseConditionClosed E.equilibriumExistsClosed

end EconomicsGameTheoryCanonicalLaneLean
end HautevilleHouse