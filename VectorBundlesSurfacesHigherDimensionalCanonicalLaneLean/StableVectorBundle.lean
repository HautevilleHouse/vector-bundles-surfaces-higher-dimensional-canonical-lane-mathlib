import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean

structure StableVectorBundlePackage where
  projectiveVariety : Type u
  vectorBundle : Type v
  slope : Prop
  stabilityCondition : Prop
  hodgeIndexCondition : Prop
  geometricInvariantTheory : Prop

structure StableVectorBundleEvidence (S : StableVectorBundlePackage) where
  slopeClosed : S.slope
  stabilityConditionClosed : S.stabilityCondition
  hodgeIndexConditionClosed : S.hodgeIndexCondition
  geometricInvariantTheoryClosed : S.geometricInvariantTheory

def StableVectorBundleClosed (S : StableVectorBundlePackage) : Prop :=
  S.slope ∧ S.stabilityCondition ∧ S.hodgeIndexCondition ∧ S.geometricInvariantTheory

theorem stable_vector_bundle_closed_from_evidence (S : StableVectorBundlePackage) (E : StableVectorBundleEvidence S) :
    StableVectorBundleClosed S := by
  exact And.intro E.slopeClosed
    (And.intro E.stabilityConditionClosed
      (And.intro E.hodgeIndexConditionClosed E.geometricInvariantTheoryClosed))

end VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean
end HautevilleHouse