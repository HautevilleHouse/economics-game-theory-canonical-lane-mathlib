import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsGameTheoryCanonicalLaneLean

structure BargainingSolutionPackage (A : AdmissibleClass) where
  utilitySet : Type u
  disagreementPoint : Type v
  nashBargainingSolution : Prop
  efficiency : Prop
  symmetry : Prop
  independenceOfIrrelevantAlternatives : Prop
  nashBargainingSolutionClosed : nashBargainingSolution
  efficiencyClosed : efficiency
  symmetryClosed : symmetry
  independenceClosed : independenceOfIrrelevantAlternatives

structure BargainingSolutionEvidence (A : AdmissibleClass) (B : BargainingSolutionPackage A) where
  nashBargainingSolutionClosed : B.nashBargainingSolution
  efficiencyClosed : B.efficiency
  symmetryClosed : B.symmetry
  independenceClosed : B.independenceOfIrrelevantAlternatives

def BargainingSolutionClosed (A : AdmissibleClass) (B : BargainingSolutionPackage A) : Prop :=
  B.nashBargainingSolution ∧ B.efficiency ∧ B.symmetry ∧ B.independenceOfIrrelevantAlternatives

theorem bargaining_solution_closed_from_evidence (A : AdmissibleClass) (B : BargainingSolutionPackage A) (E : BargainingSolutionEvidence A B) :
    BargainingSolutionClosed A B := by
  exact And.intro E.nashBargainingSolutionClosed (And.intro E.efficiencyClosed (And.intro E.symmetryClosed E.independenceClosed))

end EconomicsGameTheoryCanonicalLaneLean
end HautevilleHouse