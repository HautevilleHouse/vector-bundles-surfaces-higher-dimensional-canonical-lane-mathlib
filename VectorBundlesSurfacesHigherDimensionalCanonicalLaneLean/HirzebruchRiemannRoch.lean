import canonicalLaneMathlib.AdmissibleClass
import VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean.CharacteristicClasses

/-!
# Hirzebruch–Riemann–Roch Package
-/

namespace HautevilleHouse
namespace VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean

structure HirzebruchRiemannRochPackage {VB : VectorBundleSurface}
    (CC : CharacteristicClassesPackage VB) where
  indexTheorem : Prop
  eulerCharacteristicComputed : Prop
  signatureTheorem : Prop

structure HirzebruchRiemannRochEvidence {VB : VectorBundleSurface}
    {CC : CharacteristicClassesPackage VB} (HR : HirzebruchRiemannRochPackage CC) where
  indexTheoremClosed : HR.indexTheorem
  eulerCharacteristicComputedClosed : HR.eulerCharacteristicComputed
  signatureTheoremClosed : HR.signatureTheorem

def HirzebruchRiemannRochClosed {VB : VectorBundleSurface}
    {CC : CharacteristicClassesPackage VB} (HR : HirzebruchRiemannRochPackage CC) : Prop :=
  HR.indexTheorem ∧ HR.eulerCharacteristicComputed ∧ HR.signatureTheorem

theorem hirzebruch_riemann_roch_closed_from_evidence
    {VB : VectorBundleSurface} {CC : CharacteristicClassesPackage VB}
    (HR : HirzebruchRiemannRochPackage CC) (E : HirzebruchRiemannRochEvidence HR) :
    HirzebruchRiemannRochClosed HR := by
  exact And.intro E.indexTheoremClosed
    (And.intro E.eulerCharacteristicComputedClosed E.signatureTheoremClosed)

end VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean
end HautevilleHouse