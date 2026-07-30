import canonicalLaneMathlib.AdmissibleClass
import VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean.VectorBundleSurface

/-!
# Characteristic Classes Package for Vector Bundles over Surfaces
-/

namespace HautevilleHouse
namespace VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean

structure CharacteristicClassesPackage (VB : VectorBundleSurface) where
  chernClassDefined : Prop
  pontryaginClassDefined : Prop
  eulerClassDefined : Prop
  whitneySumFormula : Prop

structure CharacteristicClassesEvidence {VB : VectorBundleSurface}
    (CC : CharacteristicClassesPackage VB) where
  chernClassDefinedClosed : CC.chernClassDefined
  pontryaginClassDefinedClosed : CC.pontryaginClassDefined
  eulerClassDefinedClosed : CC.eulerClassDefined
  whitneySumFormulaClosed : CC.whitneySumFormula

def CharacteristicClassesClosed {VB : VectorBundleSurface}
    (CC : CharacteristicClassesPackage VB) : Prop :=
  CC.chernClassDefined ∧ CC.pontryaginClassDefined ∧
  CC.eulerClassDefined ∧ CC.whitneySumFormula

theorem characteristic_classes_closed_from_evidence
    {VB : VectorBundleSurface} (CC : CharacteristicClassesPackage VB)
    (E : CharacteristicClassesEvidence CC) : CharacteristicClassesClosed CC := by
  exact And.intro E.chernClassDefinedClosed
    (And.intro E.pontryaginClassDefinedClosed
      (And.intro E.eulerClassDefinedClosed E.whitneySumFormulaClosed))

end VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean
end HautevilleHouse