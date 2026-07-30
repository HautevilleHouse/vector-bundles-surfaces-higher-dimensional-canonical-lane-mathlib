import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean

structure VectorBundleAdmittedObject where
  base : Type
  total : Type
  projection : total → base
  rank : Nat
  smoothStructure : Prop
  conclusion : smoothStructure

def VectorBundleWitnessClosed (O : VectorBundleAdmittedObject) : Prop :=
  O.smoothStructure

end VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean
end HautevilleHouse