import RiemannMappingPackage.lean

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean

structure AnalyticContinuationPackage {C : CauchyTheoryPackage}
    {R : RiemannMappingPackage C} where
  continuationExists : Prop
  monodromyTheorem : Prop
  continuationUnique : Prop

structure AnalyticContinuationEvidence {C : CauchyTheoryPackage}
    {R : RiemannMappingPackage C}
    (A : AnalyticContinuationPackage C R) where
  continuationExistsClosed : A.continuationExists
  monodromyTheoremClosed : A.monodromyTheorem
  continuationUniqueClosed : A.continuationUnique

def AnalyticContinuationClosed {C : CauchyTheoryPackage}
    {R : RiemannMappingPackage C}
    (A : AnalyticContinuationPackage C R) : Prop :=
  A.continuationExists ∧ A.monodromyTheorem ∧ A.continuationUnique

theorem analytic_continuation_closed_from_evidence
    {C : CauchyTheoryPackage} {R : RiemannMappingPackage C}
    (A : AnalyticContinuationPackage C R)
    (E : AnalyticContinuationEvidence A) : AnalyticContinuationClosed A :=
  And.intro E.continuationExistsClosed
    (And.intro E.monodromyTheoremClosed E.continuationUniqueClosed)

end MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse