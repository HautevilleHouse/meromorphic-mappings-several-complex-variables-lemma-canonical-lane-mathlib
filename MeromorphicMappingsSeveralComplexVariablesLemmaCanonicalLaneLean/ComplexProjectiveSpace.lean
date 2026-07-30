import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean

structure ComplexProjectiveSpace (n : ℕ) where
  carrier : Type
  topology : TopologicalSpace carrier
  charts : Set (ℂ^n → carrier)
  projectionMap : ℂ^{n+1} \ {0} → carrier
  holomorphicStructure : Prop
  compactness : Prop

end MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse