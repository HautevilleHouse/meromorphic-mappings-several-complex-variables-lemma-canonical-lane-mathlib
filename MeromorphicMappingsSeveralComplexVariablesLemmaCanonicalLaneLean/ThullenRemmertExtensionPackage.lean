import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean.DomainObjects

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean

structure ThullenRemmertExtensionPackage where
  domain : DomainSpace
  codomain : DomainSpace
  mapping : MeromorphicMapping domain codomain
  extensionAcross : Prop
  extensionHolomorphic : Prop
  extensionUnique : Prop
  codimensionThreshold : Nat
  codimensionCondition : codimensionThreshold ≥ 2

structure ThullenRemmertExtensionEvidence (P : ThullenRemmertExtensionPackage) where
  extensionAcrossClosed : P.extensionAcross
  extensionHolomorphicClosed : P.extensionHolomorphic
  extensionUniqueClosed : P.extensionUnique

def ThullenRemmertExtensionClosed (P : ThullenRemmertExtensionPackage) : Prop :=
  P.extensionAcross ∧ P.extensionHolomorphic ∧ P.extensionUnique

theorem thullen_remmert_extension_closed_from_evidence
    (P : ThullenRemmertExtensionPackage) (E : ThullenRemmertExtensionEvidence P) :
    ThullenRemmertExtensionClosed P := by
  exact And.intro E.extensionAcrossClosed
    (And.intro E.extensionHolomorphicClosed E.extensionUniqueClosed)

end MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse