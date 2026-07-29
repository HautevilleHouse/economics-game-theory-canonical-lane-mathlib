import EconomicsGameTheoryCanonicalLaneLean.GameTheoryObjects

namespace HautevilleHouse
namespace EconomicsGameTheoryCanonicalLaneLean

definition bridgeClosed (A : AdmissibleClass) : Prop :=
  GameWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EconomicsGameTheoryCanonicalLaneLean
end HautevilleHouse