import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean

structure ChernCharacterPackage where
  vectorBundle : Type u
  curvatureForm : Prop
  tracePolynomial : Prop
  cohomologyClass : Prop
  integralityProperty : Prop

structure ChernCharacterEvidence (C : ChernCharacterPackage) where
  curvatureFormClosed : C.curvatureForm
  tracePolynomialClosed : C.tracePolynomial
  cohomologyClassClosed : C.cohomologyClass
  integralityPropertyClosed : C.integralityProperty

def ChernCharacterClosed (C : ChernCharacterPackage) : Prop :=
  C.curvatureForm ∧ C.tracePolynomial ∧ C.cohomologyClass ∧ C.integralityProperty

theorem chern_character_closed_from_evidence (C : ChernCharacterPackage) (E : ChernCharacterEvidence C) :
    ChernCharacterClosed C := by
  exact And.intro E.curvatureFormClosed
    (And.intro E.tracePolynomialClosed
      (And.intro E.cohomologyClassClosed E.integralityPropertyClosed))

end VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean
end HautevilleHouse