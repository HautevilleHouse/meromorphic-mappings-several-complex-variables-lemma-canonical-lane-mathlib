import CauchyTheoryPackage.lean

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean

structure RiemannMappingPackage {C : CauchyTheoryPackage} where
  simplyConnectedDomain : Prop
  biholomorphicMapping : Prop
  mappingUniqueUpToAutomorphism : Prop

structure RiemannMappingEvidence {C : CauchyTheoryPackage}
    (R : RiemannMappingPackage C) where
  simplyConnectedDomainClosed : R.simplyConnectedDomain
  biholomorphicMappingClosed : R.biholomorphicMapping
  mappingUniqueUpToAutomorphismClosed : R.mappingUniqueUpToAutomorphism

def RiemannMappingClosed {C : CauchyTheoryPackage}
    (R : RiemannMappingPackage C) : Prop :=
  R.simplyConnectedDomain ∧ R.biholomorphicMapping ∧
  R.mappingUniqueUpToAutomorphism

theorem riemann_mapping_closed_from_evidence {C : CauchyTheoryPackage}
    (R : RiemannMappingPackage C) (E : RiemannMappingEvidence R) :
    RiemannMappingClosed R :=
  And.intro E.simplyConnectedDomainClosed
    (And.intro E.biholomorphicMappingClosed E.mappingUniqueUpToAutomorphismClosed)

end MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse