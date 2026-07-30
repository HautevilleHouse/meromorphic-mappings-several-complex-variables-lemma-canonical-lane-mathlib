import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean

structure MeromorphicObject where
  domain : Type
  complexStructure : Type
  sheaves : Type
  meromorphicFunctionDefined : Prop
  targetSpace : Type
  mappingWellDefined : Prop
  conclusion : mappingWellDefined

structure AdmissibleClass where
  object : MeromorphicObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MeromorphicWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse
