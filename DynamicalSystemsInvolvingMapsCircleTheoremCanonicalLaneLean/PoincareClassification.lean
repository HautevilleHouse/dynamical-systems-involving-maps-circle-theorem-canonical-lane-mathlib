import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean

structure PoincareCircleClassification where
  orientationPreserving : Prop
  rotationNumberRational : Prop
  periodicPointExists : Prop
  topologicalConjugacy : Prop

structure PoincareClassificationEvidence (P : PoincareCircleClassification) where
  orientationPreservingClosed : P.orientationPreserving
  rotationNumberRationalClosed : P.rotationNumberRational
  periodicPointExistsClosed : P.periodicPointExists
  topologicalConjugacyClosed : P.topologicalConjugacy

def PoincareClassificationClosed (P : PoincareCircleClassification) : Prop :=
  P.orientationPreserving ∧ P.rotationNumberRational ∧ P.periodicPointExists ∧ P.topologicalConjugacy

theorem poincare_classification_closed_from_evidence (P : PoincareCircleClassification) (E : PoincareClassificationEvidence P) :
    PoincareClassificationClosed P := by
  exact And.intro E.orientationPreservingClosed (And.intro E.rotationNumberRationalClosed (And.intro E.periodicPointExistsClosed E.topologicalConjugacyClosed))

end DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean
end HautevilleHouse