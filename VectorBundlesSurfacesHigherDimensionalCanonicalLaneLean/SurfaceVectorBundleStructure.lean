import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean

structure SurfaceVectorBundleStructure where
  baseSurface : Type u
  surfaceTopology : TopologicalSpace baseSurface
  vectorRank : ℕ
  transitionFunctions : Prop
  cocycleCondition : Prop
  vectorBundleIsomorphism : Prop
  transitionFunctionsTerm : transitionFunctions
  cocycleConditionTerm : cocycleCondition
  vectorBundleIsomorphismTerm : vectorBundleIsomorphism

def SurfaceVectorBundleClosed (S : SurfaceVectorBundleStructure) : Prop :=
  S.transitionFunctions ∧ S.cocycleCondition ∧ S.vectorBundleIsomorphism

theorem surface_vector_bundle_closed_from_evidence
    (S : SurfaceVectorBundleStructure) : SurfaceVectorBundleClosed S := by
  exact And.intro S.transitionFunctionsTerm
    (And.intro S.cocycleConditionTerm S.vectorBundleIsomorphismTerm)

end VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean
end HautevilleHouse