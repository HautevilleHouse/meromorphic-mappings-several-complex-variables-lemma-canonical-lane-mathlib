import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean

structure LeviProblem where
  domain : ℂ^n
  plurisubharmonicFunction : ℂ^n → ℝ
  exhaustionFunction : Prop
  existenceSolution : Prop
  smoothSolution : Prop
  boundaryRegularity : Prop

end MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse