import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean

structure DomainSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  complexStructure : Prop
  dimension : Nat
  dimensionIsCorrect : dimension = 2 ∨ dimension ≥ 2

structure SingleFunctionSheaf where
  domain : DomainSpace
  stalkType : Type v
  holomorphicCondition : Prop
  meromorphicCondition : Prop
  stalkMeromorphic : stalkType → Prop
  sheafProperty : Prop

structure RicardAnalyticSet where
  domain : DomainSpace
  definingFunctions : List (SingleFunctionSheaf → Prop)
  analyticVarietyCondition : Prop
  pureDimension : Prop
  irreducibleComponents : Prop

structure MeromorphicMapping where
  domain : DomainSpace
  codomain : DomainSpace
  graph : Set (DomainSpace.carrier × DomainSpace.carrier)
  graphAnalytic : RicardAnalyticSet
  projectionProper : Prop
  mappingMeromorphic : Prop
  indeterminacySet : Set (DomainSpace.carrier)
  indeterminacyAnalytic : Prop
  extensionProperty : Prop

end MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse