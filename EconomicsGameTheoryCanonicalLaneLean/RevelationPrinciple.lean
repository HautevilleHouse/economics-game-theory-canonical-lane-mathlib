import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsGameTheoryCanonicalLaneLean

structure RevelationPrinciplePackage where
  mechanismDesign : Type u
  directMechanism : Type v
  incentiveCompatibility : Prop
  equivalenceProof : Prop

structure RevelationPrincipleEvidence (R : RevelationPrinciplePackage) where
  incentiveCompatibilityClosed : R.incentiveCompatibility
  equivalenceProofClosed : R.equivalenceProof

def RevelationPrincipleClosed (R : RevelationPrinciplePackage) : Prop :=
  R.incentiveCompatibility ∧ R.equivalenceProof

theorem revelation_principle_closed_from_evidence (R : RevelationPrinciplePackage) (E : RevelationPrincipleEvidence R) :
    RevelationPrincipleClosed R := by
  exact And.intro E.incentiveCompatibilityClosed E.equivalenceProofClosed

end EconomicsGameTheoryCanonicalLaneLean
end HautevilleHouse