import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean

structure SmoothVectorBundleSurface where
  baseSurface : Type u
  baseTopology : TopologicalSpace baseSurface
  baseSmoothStructure : baseSurface → Prop
  totalSpace : Type v
  projection : totalSpace → baseSurface
  fiberTy : baseSurface → Type w
  localTrivialization : Prop
  structureGroupReduction : Prop
  higherDimensionalFiberDimension : Nat
  higherDimensionalFiberDimensionPositive : higherDimensionalFiberDimension > 0

def SmoothVectorBundleSurfaceClosed (B : SmoothVectorBundleSurface) : Prop :=
  B.localTrivialization ∧ B.structureGroupReduction

end VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean
end HautevilleHouse
