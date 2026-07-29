import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctorCategoriesCommaCategoriesCanonicalLaneLean

structure FunctorCategoryData (C : Type u → Type v) (D : Type u → Type w) where
  domain : Type u
  codomain : Type u
  functors : Type (max u v w)
  naturalTransformations : Type (max u v w)
  verticalComposition : Prop
  horizontalComposition : Prop
  identityNaturalTransformation : Prop
  associativity : Prop

structure FunctorCategoryEvidence (F : FunctorCategoryData C D) where
  verticalCompositionClosed : F.verticalComposition
  horizontalCompositionClosed : F.horizontalComposition
  identityNaturalTransformationClosed : F.identityNaturalTransformation
  associativityClosed : F.associativity

def FunctorCategoryClosed (F : FunctorCategoryData C D) : Prop :=
  F.verticalComposition ∧ F.horizontalComposition ∧ F.identityNaturalTransformation ∧ F.associativity

theorem functor_category_closed_from_evidence
    (F : FunctorCategoryData C D) (E : FunctorCategoryEvidence F) :
    FunctorCategoryClosed F := by
  exact And.intro E.verticalCompositionClosed
    (And.intro E.horizontalCompositionClosed
      (And.intro E.identityNaturalTransformationClosed E.associativityClosed))

end FunctorCategoriesCommaCategoriesCanonicalLaneLean
end HautevilleHouse