import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctorCategoriesCommaCategoriesCanonicalLaneLean

structure CommaCategoryData (A : Type u → Type v) (B : Type u → Type w) (C : Type u → Type x) where
  source : Type u
  target : Type u
  sourceFunctor : A source → C source
  targetFunctor : B target → C target
  objects : Type (max u v w x)
  morphisms : Type (max u v w x)
  composition : Prop
  identity : Prop
  functoriality : Prop

structure CommaCategoryEvidence {A B C : Type u → Type v} (D : CommaCategoryData A B C) where
  compositionClosed : D.composition
  identityClosed : D.identity
  functorialityClosed : D.functoriality

def CommaCategoryClosed {A B C : Type u → Type v} (D : CommaCategoryData A B C) : Prop :=
  D.composition ∧ D.identity ∧ D.functoriality

theorem comma_category_closed_from_evidence
    {A B C : Type u → Type v} (D : CommaCategoryData A B C) (E : CommaCategoryEvidence D) :
    CommaCategoryClosed D := by
  exact And.intro E.compositionClosed (And.intro E.identityClosed E.functorialityClosed)

end FunctorCategoriesCommaCategoriesCanonicalLaneLean
end HautevilleHouse