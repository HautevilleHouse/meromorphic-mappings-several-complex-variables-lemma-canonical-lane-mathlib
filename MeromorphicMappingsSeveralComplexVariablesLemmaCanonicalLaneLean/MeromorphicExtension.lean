import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean

structure MeromorphicExtensionPackage where
  analyticSet : Prop
  meromorphicFunctionOnComplement : Prop
  extensionAcrossAnalyticSet : Prop
  uniquenessOfExtension : Prop

structure MeromorphicExtensionEvidence (M : MeromorphicExtensionPackage) where
  analyticSetClosed : M.analyticSet
  meromorphicFunctionOnComplementClosed : M.meromorphicFunctionOnComplement
  extensionAcrossAnalyticSetClosed : M.extensionAcrossAnalyticSet
  uniquenessOfExtensionClosed : M.uniquenessOfExtension

def MeromorphicExtensionClosed (M : MeromorphicExtensionPackage) : Prop :=
  M.analyticSet ∧ M.meromorphicFunctionOnComplement ∧ M.extensionAcrossAnalyticSet ∧ M.uniquenessOfExtension

theorem meromorphic_extension_closed_from_evidence (M : MeromorphicExtensionPackage)
    (E : MeromorphicExtensionEvidence M) : MeromorphicExtensionClosed M := by
  exact And.intro E.analyticSetClosed
    (And.intro E.meromorphicFunctionOnComplementClosed
      (And.intro E.extensionAcrossAnalyticSetClosed E.uniquenessOfExtensionClosed))

end MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse