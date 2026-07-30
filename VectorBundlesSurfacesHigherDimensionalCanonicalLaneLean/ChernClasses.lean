import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean

structure ChernClassPackage where
  vectorBundle : Type u
  baseManifold : Type v
  chernClasses : List Nat → Prop
  totalChernClass : Prop
  chernCharacter : Prop

def ChernClassClosed (C : ChernClassPackage) : Prop :=
  C.chernCharacter ∧ (∀ k, C.chernClasses [k])

end VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean
end HautevilleHouse