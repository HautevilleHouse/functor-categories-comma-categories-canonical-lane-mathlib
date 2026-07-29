import FunctorCategoriesCommaCategoriesCanonicalLaneLean.BridgeLemmas
import FunctorCategoriesCommaCategoriesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace FunctorCategoriesCommaCategoriesCanonicalLaneLean

def ConstrainedFunctorCommaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_functor_comma_endgame (A : AdmissibleClass) :
    ConstrainedFunctorCommaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FunctorCategoriesCommaCategoriesCanonicalLaneLean
end HautevilleHouse