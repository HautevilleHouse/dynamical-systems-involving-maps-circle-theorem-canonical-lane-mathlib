import HautevilleHouse.DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean.CircleDynamics
import HautevilleHouse.DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean.DenjoyTheorem

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean

def ConstrainedCircleMapClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_circle_map_endgame (A : AdmissibleClass) :
    ConstrainedCircleMapClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean
end HautevilleHouse
