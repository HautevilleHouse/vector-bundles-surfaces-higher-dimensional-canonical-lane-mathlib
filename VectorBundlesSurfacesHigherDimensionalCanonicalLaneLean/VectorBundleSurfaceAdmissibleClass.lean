import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean

structure VectorBundleSurfaceAdmittedObject where
  baseSurface : Type u
  baseTopology : TopologicalSpace baseSurface
  totalSpace : Type v
  projectionMap : totalSpace → baseSurface
  fiberType : Type w
  vectorBundleStructure : Prop
  rank : Nat
  transitionFunctionsSmooth : Prop
  conclusion : vectorBundleStructure ∧ transitionFunctionsSmooth

structure AdmissibleClass where
  object : VectorBundleSurfaceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  VectorBundleWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def VectorBundleWitnessClosed (O : VectorBundleSurfaceAdmittedObject) : Prop :=
  O.conclusion

end VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean
end HautevilleHouse