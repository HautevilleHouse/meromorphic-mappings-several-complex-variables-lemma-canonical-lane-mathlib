import AnalyticContinuationPackage.lean

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean

structure ValueDistributionPackage {C : CauchyTheoryPackage}
    {R : RiemannMappingPackage C} {A : AnalyticContinuationPackage C R} where
  nevanlinnaFirstMainTheorem : Prop
  deficientValues : Prop
  picardTheoremExtension : Prop

structure ValueDistributionEvidence {C : CauchyTheoryPackage}
    {R : RiemannMappingPackage C} {A : AnalyticContinuationPackage C R}
    (V : ValueDistributionPackage C R A) where
  nevanlinnaFirstMainTheoremClosed : V.nevanlinnaFirstMainTheorem
  deficientValuesClosed : V.deficientValues
  picardTheoremExtensionClosed : V.picardTheoremExtension

def ValueDistributionClosed {C : CauchyTheoryPackage}
    {R : RiemannMappingPackage C} {A : AnalyticContinuationPackage C R}
    (V : ValueDistributionPackage C R A) : Prop :=
  V.nevanlinnaFirstMainTheorem ∧ V.deficientValues ∧ V.picardTheoremExtension

theorem value_distribution_closed_from_evidence
    {C : CauchyTheoryPackage} {R : RiemannMappingPackage C}
    {A : AnalyticContinuationPackage C R}
    (V : ValueDistributionPackage C R A)
    (E : ValueDistributionEvidence V) : ValueDistributionClosed V :=
  And.intro E.nevanlinnaFirstMainTheoremClosed
    (And.intro E.deficientValuesClosed E.picardTheoremExtensionClosed)

end MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse