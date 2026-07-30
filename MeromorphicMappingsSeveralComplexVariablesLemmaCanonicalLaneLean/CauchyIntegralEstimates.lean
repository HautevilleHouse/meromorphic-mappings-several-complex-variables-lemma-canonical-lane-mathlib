import MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean

structure CauchyEstimatesPackage where
  polydiskEnlarged : Prop
  integralEstimateDerived : Prop
  uniformBoundContinuous : Prop
  derivativeBoundLocal : Prop

structure CauchyEstimatesEvidence (P : CauchyEstimatesPackage) where
  polydiskEnlargedClosed : P.polydiskEnlarged
  integralEstimateDerivedClosed : P.integralEstimateDerived
  uniformBoundContinuousClosed : P.uniformBoundContinuous
  derivativeBoundLocalClosed : P.derivativeBoundLocal

def CauchyEstimatesClosed (P : CauchyEstimatesPackage) : Prop :=
  P.polydiskEnlarged ∧ P.integralEstimateDerived ∧ P.uniformBoundContinuous ∧ P.derivativeBoundLocal

theorem cauchy_estimates_closed_from_evidence (P : CauchyEstimatesPackage) (E : CauchyEstimatesEvidence P) :
    CauchyEstimatesClosed P := by
  exact And.intro E.polydiskEnlargedClosed (And.intro E.integralEstimateDerivedClosed (And.intro E.uniformBoundContinuousClosed E.derivativeBoundLocalClosed))

end MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse
