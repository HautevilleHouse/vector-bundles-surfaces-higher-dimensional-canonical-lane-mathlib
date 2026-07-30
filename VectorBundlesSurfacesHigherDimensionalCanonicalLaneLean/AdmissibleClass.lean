import canonicalLaneMathlib.AdmissibleClass

/-!
# Admissible Class and Closure for Vector Bundles Surfaces Higher Dimensional
-/

namespace HautevilleHouse
namespace VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean

structure VectorBundleAdmittedObject where
  baseSurface : Type u
  bundle : Type v
  smoothStructure : Prop
  conclusion : smoothStructure

structure AdmissibleClass where
  object : VectorBundleAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean
end HautevilleHouse