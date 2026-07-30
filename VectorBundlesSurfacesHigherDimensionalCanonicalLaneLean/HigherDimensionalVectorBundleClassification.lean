import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean.SplittingPrinciple
import HautevilleHouse.VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean.EulerClassSurface

namespace HautevilleHouse
namespace VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean

structure HigherDimensionalClassificationPackage {B : SmoothVectorBundleSurface} {C : ChernCharacteristicPackage B} {S : SplittingPrinciplePackage C} (E : EulerClassPackage C) where
  stableClassificationViaChern : Prop
  unstableClassificationViaSplitting : Prop
  obstructionTheoryApplied : Prop
  higherDimensionalInvariants : Prop

def HigherDimensionalClassificationPackageClosed {B : SmoothVectorBundleSurface} {C : ChernCharacteristicPackage B} {S : SplittingPrinciplePackage C} {E : EulerClassPackage C} (H : HigherDimensionalClassificationPackage E) : Prop :=
  H.stableClassificationViaChern ∧ H.unstableClassificationViaSplitting ∧ H.obstructionTheoryApplied ∧ H.higherDimensionalInvariants

end VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean
end HautevilleHouse
