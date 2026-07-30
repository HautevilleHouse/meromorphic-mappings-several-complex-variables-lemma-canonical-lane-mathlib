import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean

structure HartogsContinuationPackage where
  hartogsFigure : Prop
  analyticContinuationAcrossCompact : Prop
  meromorphicExtensionTheorem : Prop

structure HartogsContinuationEvidence (H : HartogsContinuationPackage) where
  hartogsFigureClosed : H.hartogsFigure
  analyticContinuationAcrossCompactClosed : H.analyticContinuationAcrossCompact
  meromorphicExtensionTheoremClosed : H.meromorphicExtensionTheorem

def HartogsContinuationClosed (H : HartogsContinuationPackage) : Prop :=
  H.hartogsFigure ∧ H.analyticContinuationAcrossCompact ∧ H.meromorphicExtensionTheorem

theorem hartogs_continuation_closed_from_evidence (H : HartogsContinuationPackage)
    (E : HartogsContinuationEvidence H) : HartogsContinuationClosed H := by
  exact And.intro E.hartogsFigureClosed
    (And.intro E.analyticContinuationAcrossCompactClosed E.meromorphicExtensionTheoremClosed)

end MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse