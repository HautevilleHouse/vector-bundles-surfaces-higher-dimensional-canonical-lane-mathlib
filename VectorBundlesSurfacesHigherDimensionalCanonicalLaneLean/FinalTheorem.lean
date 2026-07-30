import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean

def ConstrainedVectorBundleClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_vector_bundle_endgame (A : AdmissibleClass) :
    ConstrainedVectorBundleClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean
end HautevilleHouse