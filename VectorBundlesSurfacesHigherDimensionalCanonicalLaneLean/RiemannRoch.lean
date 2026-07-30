import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean

structure RiemannRochPackage where
  compactSurface : Type u
  complexStructure : Prop
  eulerCharacteristic : Prop
  riemannRochFormula : Prop

def RiemannRochClosed (R : RiemannRochPackage) : Prop :=
  R.eulerCharacteristic ∧ R.riemannRochFormula

end VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean
end HautevilleHouse