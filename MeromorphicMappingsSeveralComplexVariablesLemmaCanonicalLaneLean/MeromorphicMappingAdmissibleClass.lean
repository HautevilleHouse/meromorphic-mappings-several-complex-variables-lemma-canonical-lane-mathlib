import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean

structure AdmissibleMeromorphicDomain where
  carrier : Type u
  complexStructure : Type v
  openDomain : Prop
  holomorphicFunctions : Type w
  meromorphicFunctions : Type x
  meromorphicExtensionProperty : Prop
  conclusion : meromorphicExtensionProperty

def MeromorphicWitnessClosed (D : AdmissibleMeromorphicDomain) : Prop :=
  D.meromorphicExtensionProperty

structure AdmissibleClass where
  object : AdmissibleMeromorphicDomain
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MeromorphicWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse