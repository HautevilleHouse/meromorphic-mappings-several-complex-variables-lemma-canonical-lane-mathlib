import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean.DomainObjects

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean

structure SiuExtensionPackage where
  domain : DomainSpace
  codomain : DomainSpace
  mapping : MeromorphicMapping domain codomain
  lineBundleCondition : Prop
  negativeLineBundleExtension : Prop
  extensionAcrossAnalyticSet : Prop
  extensionMeromorphic : Prop
  extensionUnique : Prop

structure SiuExtensionEvidence (P : SiuExtensionPackage) where
  lineBundleConditionClosed : P.lineBundleCondition
  negativeLineBundleExtensionClosed : P.negativeLineBundleExtension
  extensionAcrossAnalyticSetClosed : P.extensionAcrossAnalyticSet
  extensionMeromorphicClosed : P.extensionMeromorphic
  extensionUniqueClosed : P.extensionUnique

def SiuExtensionClosed (P : SiuExtensionPackage) : Prop :=
  P.lineBundleCondition ∧ P.negativeLineBundleExtension ∧
  P.extensionAcrossAnalyticSet ∧ P.extensionMeromorphic ∧ P.extensionUnique

theorem siu_extension_closed_from_evidence
    (P : SiuExtensionPackage) (E : SiuExtensionEvidence P) : SiuExtensionClosed P := by
  exact And.intro E.lineBundleConditionClosed
    (And.intro E.negativeLineBundleExtensionClosed
      (And.intro E.extensionAcrossAnalyticSetClosed
        (And.intro E.extensionMeromorphicClosed E.extensionUniqueClosed)))

end MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse