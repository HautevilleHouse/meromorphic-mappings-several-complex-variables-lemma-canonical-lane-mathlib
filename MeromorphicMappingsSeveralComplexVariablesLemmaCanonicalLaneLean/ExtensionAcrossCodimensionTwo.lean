import MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean.CauchyIntegralEstimates

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean

structure ExtensionPackage where
  analyticSetDefined : Prop
  boundednessInNeighborhood : Prop
  extensionExists : Prop
  mappingContinuesMeromorphically : Prop

structure ExtensionEvidence (P : ExtensionPackage) where
  analyticSetDefinedClosed : P.analyticSetDefined
  boundednessInNeighborhoodClosed : P.boundednessInNeighborhood
  extensionExistsClosed : P.extensionExists
  mappingContinuesMeromorphicallyClosed : P.mappingContinuesMeromorphically

def ExtensionClosed (P : ExtensionPackage) : Prop :=
  P.analyticSetDefined ∧ P.boundednessInNeighborhood ∧ P.extensionExists ∧ P.mappingContinuesMeromorphically

theorem extension_closed_from_evidence (P : ExtensionPackage) (E : ExtensionEvidence P) :
    ExtensionClosed P := by
  exact And.intro E.analyticSetDefinedClosed (And.intro E.boundednessInNeighborhoodClosed (And.intro E.extensionExistsClosed E.mappingContinuesMeromorphicallyClosed))

end MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse
