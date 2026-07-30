import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean.DomainObjects

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean

structure GriffithsKingStollPackage where
  domain : DomainSpace
  divisor : Set (DomainSpace.carrier)
  divisorAnalytic : Prop
  principalDivisorCondition : Prop
  currentRepresentation : Prop
  poincareLelongEquation : Prop
  mongeAmpereEquation : Prop
  residueCurrents : Prop

structure GriffithsKingStollEvidence (P : GriffithsKingStollPackage) where
  divisorAnalyticClosed : P.divisorAnalytic
  principalDivisorConditionClosed : P.principalDivisorCondition
  currentRepresentationClosed : P.currentRepresentation
  poincareLelongEquationClosed : P.poincareLelongEquation
  mongeAmpereEquationClosed : P.mongeAmpereEquation
  residueCurrentsClosed : P.residueCurrents

def GriffithsKingStollClosed (P : GriffithsKingStollPackage) : Prop :=
  P.divisorAnalytic ∧ P.principalDivisorCondition ∧
  P.currentRepresentation ∧ P.poincareLelongEquation ∧
  P.mongeAmpereEquation ∧ P.residueCurrents

theorem griffiths_king_stoll_closed_from_evidence
    (P : GriffithsKingStollPackage) (E : GriffithsKingStollEvidence P) :
    GriffithsKingStollClosed P := by
  exact And.intro E.divisorAnalyticClosed
    (And.intro E.principalDivisorConditionClosed
      (And.intro E.currentRepresentationClosed
        (And.intro E.poincareLelongEquationClosed
          (And.intro E.mongeAmpereEquationClosed E.residueCurrentsClosed))))

end MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse