import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean

structure VectorBundleAtlasPackage where
  baseManifold : Type u
  fiberType : Type v
  trivializationAtlas : Prop
  cocycleCondition : Prop
  smoothTransition : Prop
  baseManifoldSmooth : Prop

structure VectorBundleAtlasEvidence (P : VectorBundleAtlasPackage) where
  trivializationAtlasClosed : P.trivializationAtlas
  cocycleConditionClosed : P.cocycleCondition
  smoothTransitionClosed : P.smoothTransition
  baseManifoldSmoothClosed : P.baseManifoldSmooth

def VectorBundleAtlasClosed (P : VectorBundleAtlasPackage) : Prop :=
  P.trivializationAtlas ∧ P.cocycleCondition ∧ P.smoothTransition ∧ P.baseManifoldSmooth

theorem vector_bundle_atlas_closed_from_evidence (P : VectorBundleAtlasPackage) (E : VectorBundleAtlasEvidence P) :
    VectorBundleAtlasClosed P := by
  exact And.intro E.trivializationAtlasClosed
    (And.intro E.cocycleConditionClosed
      (And.intro E.smoothTransitionClosed E.baseManifoldSmoothClosed))

end VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean
end HautevilleHouse