import HautevilleHouse.MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean

structure MeromorphicSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  complexStructure : Prop
  meromorphicFunctionSheaf : Prop

structure MeromorphicAdmittedObject where
  space : MeromorphicSpace
  domainIsStein : Prop
  complexDimensionN : Prop
  targetProjectiveSpace : Type
  meromorphicExtensionResult : Prop
  conclusion : meromorphicExtensionResult

structure MeromorphicEndgameState where
  object : MeromorphicAdmittedObject

def MeromorphicWitnessClosed (O : MeromorphicAdmittedObject) : Prop :=
  O.meromorphicExtensionResult

end MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse