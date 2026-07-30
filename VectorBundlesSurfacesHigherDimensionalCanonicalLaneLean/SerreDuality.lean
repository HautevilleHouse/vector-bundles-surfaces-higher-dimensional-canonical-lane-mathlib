import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean

structure SerreDualityPackage where
  complexManifold : Type u
  canonicalBundle : Type v
  serreDualityIsomorphism : Prop
  sheafCohomology : Prop

def SerreDualityClosed (S : SerreDualityPackage) : Prop :=
  S.serreDualityIsomorphism ∧ S.sheafCohomology

end VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean
end HautevilleHouse