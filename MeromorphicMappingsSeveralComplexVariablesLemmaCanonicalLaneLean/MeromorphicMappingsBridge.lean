import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MeromorphicFunction.HolomorphicOnComplement A.object ∧
  (∃ (f : MeromorphicFunction ℂ^n), f.isolatedPoles)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse