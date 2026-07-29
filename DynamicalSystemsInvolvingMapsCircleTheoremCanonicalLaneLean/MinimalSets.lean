import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean.PeriodicPointClassification

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean

structure MinimalSetPackage {R : CircleRotationPackage} {D : DenjoyPackage R} {P : PeriodicPointPackage D} where
  minimalSetCharacterization : Prop
  eitherFiniteOrEntireCircle : Prop
  invariantClosedNonempty : Prop

structure MinimalSetEvidence {R : CircleRotationPackage} {D : DenjoyPackage R} {P : PeriodicPointPackage D} (M : MinimalSetPackage) where
  minimalSetCharacterizationClosed : M.minimalSetCharacterization
  eitherFiniteOrEntireCircleClosed : M.eitherFiniteOrEntireCircle
  invariantClosedNonemptyClosed : M.invariantClosedNonempty

def MinimalSetClosed {R : CircleRotationPackage} {D : DenjoyPackage R} {P : PeriodicPointPackage D} (M : MinimalSetPackage) : Prop :=
  M.minimalSetCharacterization ∧ M.eitherFiniteOrEntireCircle ∧ M.invariantClosedNonempty

theorem minimal_set_closed_from_evidence {R : CircleRotationPackage} {D : DenjoyPackage R} {P : PeriodicPointPackage D} (M : MinimalSetPackage) (E : MinimalSetEvidence M) : MinimalSetClosed M := by
  exact And.intro E.minimalSetCharacterizationClosed (And.intro E.eitherFiniteOrEntireCircleClosed E.invariantClosedNonemptyClosed)

end DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean
end HautevilleHouse