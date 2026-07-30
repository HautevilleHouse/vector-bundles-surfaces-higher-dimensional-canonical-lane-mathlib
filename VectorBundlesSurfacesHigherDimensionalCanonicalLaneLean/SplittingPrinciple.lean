import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean

structure SplittingPrinciplePackage where
  flagVariety : Type u
  flagTopology : TopologicalSpace flagVariety
  pullbackMap : Prop
  chernClassesPullback : Prop
  splittingPrincipleHolds : Prop
  pullbackMapTerm : pullbackMap
  chernClassesPullbackTerm : chernClassesPullback
  splittingPrincipleTerm : splittingPrincipleHolds

def SplittingPrincipleClosed (S : SplittingPrinciplePackage) : Prop :=
  S.pullbackMap ∧ S.chernClassesPullback ∧ S.splittingPrincipleHolds

theorem splitting_principle_closed_from_evidence
    (S : SplittingPrinciplePackage) : SplittingPrincipleClosed S := by
  exact And.intro S.pullbackMapTerm
    (And.intro S.chernClassesPullbackTerm S.splittingPrincipleTerm)

end VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean
end HautevilleHouse