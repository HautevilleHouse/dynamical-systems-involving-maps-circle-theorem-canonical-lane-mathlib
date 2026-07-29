import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean

structure CircleRotationSet (M : Type u) [TopologicalSpace M] where
  rotationNumber : M → ℝ
  semiConjugacy : Prop
  periodicPointsDense : Prop
  topologicalTransitivity : Prop
  sensitivity : Prop

structure CircleRotationSetEvidence {M : Type u} [TopologicalSpace M] (R : CircleRotationSet M) where
  rotationNumberClosed : True
  semiConjugacyClosed : R.semiConjugacy
  periodicPointsDenseClosed : R.periodicPointsDense
  topologicalTransitivityClosed : R.topologicalTransitivity
  sensitivityClosed : R.sensitivity

def CircleRotationSetClosed {M : Type u} [TopologicalSpace M] (R : CircleRotationSet M) : Prop :=
  R.semiConjugacy ∧ R.periodicPointsDense ∧ R.topologicalTransitivity ∧ R.sensitivity

theorem circle_rotation_set_closed_from_evidence
    {M : Type u} [TopologicalSpace M] (R : CircleRotationSet M) (E : CircleRotationSetEvidence R) :
    CircleRotationSetClosed R := by
  exact And.intro E.semiConjugacyClosed (And.intro E.periodicPointsDenseClosed (And.intro E.topologicalTransitivityClosed E.sensitivityClosed))

end DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean
end HautevilleHouse