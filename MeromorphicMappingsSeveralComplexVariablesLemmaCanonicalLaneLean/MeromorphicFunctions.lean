import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean

structure MeromorphicFunction (U : Type) [TopologicalSpace U] where
  domain : U
  sheafSection : U → ℂ
  poles : Set U
  holomorphicOnComplement : Prop
  essentialSingularities : Set U
  isolatedPoles : Prop

end MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse