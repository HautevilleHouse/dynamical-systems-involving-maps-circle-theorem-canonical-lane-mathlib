import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean.DenjoyTheorem

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean

structure PeriodicPointPackage {R : CircleRotationPackage} (D : DenjoyPackage R) where
  periodicPointsDense : Prop
  rationalRotationCondition : Prop
  topologicalTransitivity : Prop

structure PeriodicPointEvidence {R : CircleRotationPackage} {D : DenjoyPackage R} (P : PeriodicPointPackage D) where
  periodicPointsDenseClosed : P.periodicPointsDense
  rationalRotationConditionClosed : P.rationalRotationCondition
  topologicalTransitivityClosed : P.topologicalTransitivity

def PeriodicPointClosed {R : CircleRotationPackage} {D : DenjoyPackage R} (P : PeriodicPointPackage D) : Prop :=
  P.periodicPointsDense ∧ P.rationalRotationCondition ∧ P.topologicalTransitivity

theorem periodic_point_closed_from_evidence {R : CircleRotationPackage} {D : DenjoyPackage R} (P : PeriodicPointPackage D) (E : PeriodicPointEvidence P) : PeriodicPointClosed P := by
  exact And.intro E.periodicPointsDenseClosed (And.intro E.rationalRotationConditionClosed E.topologicalTransitivityClosed)

end DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean
end HautevilleHouse