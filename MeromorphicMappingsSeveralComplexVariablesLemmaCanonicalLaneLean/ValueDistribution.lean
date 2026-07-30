import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean

structure ValueDistributionPackage where
  nevanlinnaCharacteristic : Prop
  firstMainTheorem : Prop
  secondMainTheorem : Prop
  defectRelation : Prop

structure ValueDistributionEvidence (V : ValueDistributionPackage) where
  nevanlinnaCharacteristicClosed : V.nevanlinnaCharacteristic
  firstMainTheoremClosed : V.firstMainTheorem
  secondMainTheoremClosed : V.secondMainTheorem
  defectRelationClosed : V.defectRelation

def ValueDistributionClosed (V : ValueDistributionPackage) : Prop :=
  V.nevanlinnaCharacteristic ∧ V.firstMainTheorem ∧ V.secondMainTheorem ∧ V.defectRelation

theorem value_distribution_closed_from_evidence (V : ValueDistributionPackage)
    (E : ValueDistributionEvidence V) : ValueDistributionClosed V := by
  exact And.intro E.nevanlinnaCharacteristicClosed
    (And.intro E.firstMainTheoremClosed
      (And.intro E.secondMainTheoremClosed E.defectRelationClosed))

end MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse