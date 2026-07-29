import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean.MinimalSets

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean

structure ConjugacyPackage {R : CircleRotationPackage} {D : DenjoyPackage R} {P : PeriodicPointPackage D} {M : MinimalSetPackage} where
  conjugacyToRotation : Prop
  homeomorphismExists : Prop
  rotationNumberPreserved : Prop

structure ConjugacyEvidence {R : CircleRotationPackage} {D : DenjoyPackage R} {P : PeriodicPointPackage D} {M : MinimalSetPackage} (C : ConjugacyPackage) where
  conjugacyToRotationClosed : C.conjugacyToRotation
  homeomorphismExistsClosed : C.homeomorphismExists
  rotationNumberPreservedClosed : C.rotationNumberPreserved

def ConjugacyClosed {R : CircleRotationPackage} {D : DenjoyPackage R} {P : PeriodicPointPackage D} {M : MinimalSetPackage} (C : ConjugacyPackage) : Prop :=
  C.conjugacyToRotation ∧ C.homeomorphismExists ∧ C.rotationNumberPreserved

theorem conjugacy_closed_from_evidence {R : CircleRotationPackage} {D : DenjoyPackage R} {P : PeriodicPointPackage D} {M : MinimalSetPackage} (C : ConjugacyPackage) (E : ConjugacyEvidence C) : ConjugacyClosed C := by
  exact And.intro E.conjugacyToRotationClosed (And.intro E.homeomorphismExistsClosed E.rotationNumberPreservedClosed)

end DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean
end HautevilleHouse