import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean

structure CauchyTheoryPackage where
  domain : Type
  complexStructure : ComplexStructure domain
  holomorphicFunctionsDefined : Prop
  cauchyIntegralFormula : Prop
  powerSeriesExpansion : Prop
  identityTheorem : Prop

structure CauchyTheoryEvidence (C : CauchyTheoryPackage) where
  holomorphicFunctionsDefinedClosed : C.holomorphicFunctionsDefined
  cauchyIntegralFormulaClosed : C.cauchyIntegralFormula
  powerSeriesExpansionClosed : C.powerSeriesExpansion
  identityTheoremClosed : C.identityTheorem

def CauchyTheoryClosed (C : CauchyTheoryPackage) : Prop :=
  C.holomorphicFunctionsDefined ∧ C.cauchyIntegralFormula ∧
  C.powerSeriesExpansion ∧ C.identityTheorem

theorem cauchy_theory_closed_from_evidence (C : CauchyTheoryPackage)
    (E : CauchyTheoryEvidence C) : CauchyTheoryClosed C :=
  And.intro E.holomorphicFunctionsDefinedClosed
    (And.intro E.cauchyIntegralFormulaClosed
      (And.intro E.powerSeriesExpansionClosed E.identityTheoremClosed))

end MeromorphicMappingsSeveralComplexVariablesLemmaCanonicalLaneLean
end HautevilleHouse