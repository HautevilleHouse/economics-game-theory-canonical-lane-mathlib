import EconomicsGameTheoryCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace EconomicsGameTheoryCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  gameConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository
  theoremName := sourceRepository
  theoremObject := sourceDescription
  classicalBoundary := sourceTheoremBoundary.claimBoundary
  gameConstrainedStatement := "game-constrained theorem certificate internalized through Nash equilibrium, minimax theorem, bargaining solutions, mechanism design"
  certificateLane := "game_constrained"
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

end EconomicsGameTheoryCanonicalLaneLean
end HautevilleHouse
