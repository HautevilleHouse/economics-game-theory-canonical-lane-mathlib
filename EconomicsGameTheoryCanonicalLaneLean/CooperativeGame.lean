import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsGameTheoryCanonicalLaneLean

structure CooperativeGamePackage where
  playerSet : Type u
  characteristicFunction : Type v
  coreNonempty : Prop
  shapleyValue : Prop
  nucleolus : Prop

structure CooperativeGameEvidence (C : CooperativeGamePackage) where
  coreNonemptyClosed : C.coreNonempty
  shapleyValueClosed : C.shapleyValue
  nucleolusClosed : C.nucleolus

def CooperativeGameClosed (C : CooperativeGamePackage) : Prop :=
  C.coreNonempty ∧ C.shapleyValue ∧ C.nucleolus

theorem cooperative_game_closed_from_evidence (C : CooperativeGamePackage) (E : CooperativeGameEvidence C) :
    CooperativeGameClosed C := by
  exact And.intro E.coreNonemptyClosed (And.intro E.shapleyValueClosed E.nucleolusClosed)

end EconomicsGameTheoryCanonicalLaneLean
end HautevilleHouse