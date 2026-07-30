import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean.SmoothVectorBundleSurface

namespace HautevilleHouse
namespace VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean

structure ChernCharacteristicPackage {B : SmoothVectorBundleSurface} where
  chernClasses : Type u
  chernWeilRepresentative : Prop
  curvatureSatisfiesBianchi : Prop
  chernClassClosedUnderPullback : Prop

def ChernCharacteristicPackageClosed {B : SmoothVectorBundleSurface} (C : ChernCharacteristicPackage B) : Prop :=
  C.chernWeilRepresentative ∧ C.curvatureSatisfiesBianchi ∧ C.chernClassClosedUnderPullback

end VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean
end HautevilleHouse
