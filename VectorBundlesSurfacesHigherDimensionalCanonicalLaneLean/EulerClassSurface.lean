import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean.SmoothVectorBundleSurface
import HautevilleHouse.VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean.ChernClassCharacteristicForms

namespace HautevilleHouse
namespace VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean

structure EulerClassPackage {B : SmoothVectorBundleSurface} {C : ChernCharacteristicPackage B} where
  orientedBundle : Prop
  eulerClassDefined : Prop
  pfaffianConstructed : Prop
  eulerClassIntegral : Prop
  gaussBonnetChern : Prop

def EulerClassPackageClosed {B : SmoothVectorBundleSurface} {C : ChernCharacteristicPackage B} (E : EulerClassPackage C) : Prop :=
  E.orientedBundle ∧ E.eulerClassDefined ∧ E.pfaffianConstructed ∧ E.eulerClassIntegral ∧ E.gaussBonnetChern

end VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean
end HautevilleHouse
