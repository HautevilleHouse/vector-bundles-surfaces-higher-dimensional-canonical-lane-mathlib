import canonicalLaneMathlib.AdmissibleClass

/-!
# Vector Bundle Over a Surface Package
-/

namespace HautevilleHouse
namespace VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean

structure VectorBundleSurface where
  baseSurface : Type u
  fiberType : Type v
  projection : baseSurface × fiberType → baseSurface
  localTrivialization : Prop
  transitionFunctionsSmooth : Prop
  baseSurfaceSmoothClosed : Prop
  fiberTypeFiniteDim : Prop

structure VectorBundleSurfaceEvidence (VB : VectorBundleSurface) where
  localTrivializationClosed : VB.localTrivialization
  transitionFunctionsSmoothClosed : VB.transitionFunctionsSmooth
  baseSurfaceSmoothClosedClosed : VB.baseSurfaceSmoothClosed
  fiberTypeFiniteDimClosed : VB.fiberTypeFiniteDim

def VectorBundleSurfaceClosed (VB : VectorBundleSurface) : Prop :=
  VB.localTrivialization ∧ VB.transitionFunctionsSmooth ∧
  VB.baseSurfaceSmoothClosed ∧ VB.fiberTypeFiniteDim

theorem vector_bundle_surface_closed_from_evidence
    (VB : VectorBundleSurface) (E : VectorBundleSurfaceEvidence VB) :
    VectorBundleSurfaceClosed VB := by
  exact And.intro E.localTrivializationClosed
    (And.intro E.transitionFunctionsSmoothClosed
      (And.intro E.baseSurfaceSmoothClosedClosed E.fiberTypeFiniteDimClosed))

end VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean
end HautevilleHouse