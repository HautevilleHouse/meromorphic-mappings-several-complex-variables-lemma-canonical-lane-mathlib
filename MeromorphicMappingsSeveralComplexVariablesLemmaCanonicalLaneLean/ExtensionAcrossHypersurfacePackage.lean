import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean

structure ExtensionAcrossHypersurfacePackage where
  hypersurface : Type
  mappingDefinedOutside : Prop
  essentialSingularityAvoided : Prop
  meromorphicExtensionExists : Prop
  extensionUnique : Prop

structure ExtensionAcrossHypersurfaceEvidence (E : ExtensionAcrossHypersurfacePackage) where
  mappingDefinedOutsideClosed : E.mappingDefinedOutside
  essentialSingularityAvoidedClosed : E.essentialSingularityAvoided
  meromorphicExtensionExistsClosed : E.meromorphicExtensionExists
  extensionUniqueClosed : E.extensionUnique

def ExtensionAcrossHypersurfaceClosed (E : ExtensionAcrossHypersurfacePackage) : Prop :=
  E.mappingDefinedOutside ∧ E.essentialSingularityAvoided ∧
  E.meromorphicExtensionExists ∧ E.extensionUnique

theorem extension_across_hypersurface_closed_from_evidence
    (E : ExtensionAcrossHypersurfacePackage) (Ev : ExtensionAcrossHypersurfaceEvidence E) :
    ExtensionAcrossHypersurfaceClosed E := by
  exact And.intro Ev.mappingDefinedOutsideClosed
    (And.intro Ev.essentialSingularityAvoidedClosed
      (And.intro Ev.meromorphicExtensionExistsClosed Ev.extensionUniqueClosed))

end MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse