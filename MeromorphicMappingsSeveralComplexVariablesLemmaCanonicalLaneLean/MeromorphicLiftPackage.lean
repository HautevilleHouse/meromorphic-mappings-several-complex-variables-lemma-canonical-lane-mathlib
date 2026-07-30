import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean.DomainObjects

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean

structure MeromorphicLiftPackage where
  source : DomainSpace
  target : DomainSpace
  liftMap : MeromorphicMapping source target
  coveringSpace : DomainSpace
  coveringMap : MeromorphicMapping coveringSpace source
  liftExists : Prop
  liftMeromorphic : Prop
  liftUnique : Prop
  monodromyCondition : Prop

structure MeromorphicLiftEvidence (P : MeromorphicLiftPackage) where
  liftExistsClosed : P.liftExists
  liftMeromorphicClosed : P.liftMeromorphic
  liftUniqueClosed : P.liftUnique
  monodromyConditionClosed : P.monodromyCondition

def MeromorphicLiftClosed (P : MeromorphicLiftPackage) : Prop :=
  P.liftExists ∧ P.liftMeromorphic ∧ P.liftUnique ∧ P.monodromyCondition

theorem meromorphic_lift_closed_from_evidence
    (P : MeromorphicLiftPackage) (E : MeromorphicLiftEvidence P) :
    MeromorphicLiftClosed P := by
  exact And.intro E.liftExistsClosed
    (And.intro E.liftMeromorphicClosed
      (And.intro E.liftUniqueClosed E.monodromyConditionClosed))

end MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse