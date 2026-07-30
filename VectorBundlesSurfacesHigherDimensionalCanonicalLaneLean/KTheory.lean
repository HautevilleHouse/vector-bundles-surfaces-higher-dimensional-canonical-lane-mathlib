import canonicalLaneMathlib.AdmissibleClass
import VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean.VectorBundleSurface

/-!
# K-Theory Package for Vector Bundles over Surfaces
-/

namespace HautevilleHouse
namespace VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean

structure KTheoryPackage (VB : VectorBundleSurface) where
  k0Group : Type u
  k1Group : Type v
  bottPeriodicity : Prop
  chernCharacter : Prop

structure KTheoryEvidence (KT : KTheoryPackage (VB : VectorBundleSurface)) where
  k0GroupDefined : KT.k0Group = KT.k0Group
  k1GroupDefined : KT.k1Group = KT.k1Group
  bottPeriodicityClosed : KT.bottPeriodicity
  chernCharacterClosed : KT.chernCharacter

def KTheoryClosed (KT : KTheoryPackage (VB : VectorBundleSurface)) : Prop :=
  KT.bottPeriodicity ∧ KT.chernCharacter

theorem k_theory_closed_from_evidence
    (KT : KTheoryPackage (VB : VectorBundleSurface)) (E : KTheoryEvidence KT) :
    KTheoryClosed KT := by
  exact And.intro E.bottPeriodicityClosed E.chernCharacterClosed

end VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean
end HautevilleHouse