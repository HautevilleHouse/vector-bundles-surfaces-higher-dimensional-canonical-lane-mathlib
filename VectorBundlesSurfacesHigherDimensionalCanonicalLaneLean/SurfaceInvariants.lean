import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean

structure SurfaceInvariantsPackage where
  algebraicSurface : Type u
  canonicalBundle : Prop
  kodairaDimension : Prop
  hodgeNumbers : Prop
  signature : Prop
  noetherFormula : Prop

structure SurfaceInvariantsEvidence (S : SurfaceInvariantsPackage) where
  canonicalBundleClosed : S.canonicalBundle
  kodairaDimensionClosed : S.kodairaDimension
  hodgeNumbersClosed : S.hodgeNumbers
  signatureClosed : S.signature
  noetherFormulaClosed : S.noetherFormula

def SurfaceInvariantsClosed (S : SurfaceInvariantsPackage) : Prop :=
  S.canonicalBundle ∧ S.kodairaDimension ∧ S.hodgeNumbers ∧ S.signature ∧ S.noetherFormula

theorem surface_invariants_closed_from_evidence (S : SurfaceInvariantsPackage) (E : SurfaceInvariantsEvidence S) :
    SurfaceInvariantsClosed S := by
  exact And.intro E.canonicalBundleClosed
    (And.intro E.kodairaDimensionClosed
      (And.intro E.hodgeNumbersClosed
        (And.intro E.signatureClosed E.noetherFormulaClosed)))

end VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean
end HautevilleHouse