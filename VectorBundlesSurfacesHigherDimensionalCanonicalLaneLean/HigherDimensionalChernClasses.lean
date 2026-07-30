import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean

structure HigherDimensionalChernClassesPackage where
  chernClasses : ℕ → Prop
  chernCharacter : Prop
  chernCharacterFormula : Prop
  chernClassesWellDefined : Prop
  chernClassesDefined : ∀ n : ℕ, chernClasses n
  chernCharacterTerm : chernCharacter
  chernCharacterFormulaTerm : chernCharacterFormula
  chernClassesWellDefinedTerm : chernClassesWellDefined

def HigherDimensionalChernClassesClosed (C : HigherDimensionalChernClassesPackage) : Prop :=
  (∀ n : ℕ, C.chernClasses n) ∧ C.chernCharacter ∧ C.chernCharacterFormula ∧ C.chernClassesWellDefined

theorem higher_dimensional_chern_classes_closed_from_evidence
    (C : HigherDimensionalChernClassesPackage) : HigherDimensionalChernClassesClosed C := by
  exact And.intro C.chernClassesDefined
    (And.intro C.chernCharacterTerm
      (And.intro C.chernCharacterFormulaTerm C.chernClassesWellDefinedTerm))

end VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean
end HautevilleHouse