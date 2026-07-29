import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsGameTheoryCanonicalLaneLean

structure MechanismDesignPackage (A : AdmissibleClass) where
  agents : Nat
  types : Type u
  outcomes : Type v
  allocationRule : Type w
  transferRule : Type x
  incentiveCompatibility : Prop
  individualRationality : Prop
  efficiency : Prop
  incentiveCompatibilityClosed : incentiveCompatibility
  individualRationalityClosed : individualRationality
  efficiencyClosed : efficiency

structure MechanismDesignEvidence (A : AdmissibleClass) (M : MechanismDesignPackage A) where
  incentiveCompatibilityClosed : M.incentiveCompatibility
  individualRationalityClosed : M.individualRationality
  efficiencyClosed : M.efficiency

def MechanismDesignClosed (A : AdmissibleClass) (M : MechanismDesignPackage A) : Prop :=
  M.incentiveCompatibility ∧ M.individualRationality ∧ M.efficiency

theorem mechanism_design_closed_from_evidence (A : AdmissibleClass) (M : MechanismDesignPackage A) (E : MechanismDesignEvidence A M) :
    MechanismDesignClosed A M := by
  exact And.intro E.incentiveCompatibilityClosed (And.intro E.individualRationalityClosed E.efficiencyClosed)

end EconomicsGameTheoryCanonicalLaneLean
end HautevilleHouse