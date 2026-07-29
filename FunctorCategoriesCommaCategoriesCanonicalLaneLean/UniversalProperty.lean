import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctorCategoriesCommaCategoriesCanonicalLaneLean

structure UniversalPropertyData where
  limitObject : Type
  coneMorphisms : Type
  universalMorphism : Prop
  uniqueness : Prop
  existence : Prop

structure UniversalPropertyEvidence (U : UniversalPropertyData) where
  universalMorphismClosed : U.universalMorphism
  uniquenessClosed : U.uniqueness
  existenceClosed : U.existence

def UniversalPropertyClosed (U : UniversalPropertyData) : Prop :=
  U.universalMorphism ∧ U.uniqueness ∧ U.existence

theorem universal_property_closed_from_evidence
    (U : UniversalPropertyData) (E : UniversalPropertyEvidence U) :
    UniversalPropertyClosed U := by
  exact And.intro E.universalMorphismClosed (And.intro E.uniquenessClosed E.existenceClosed)

end FunctorCategoriesCommaCategoriesCanonicalLaneLean
end HautevilleHouse