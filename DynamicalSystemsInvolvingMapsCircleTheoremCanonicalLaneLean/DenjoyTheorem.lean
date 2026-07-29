import HautevilleHouse.DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean.CircleDynamics

/-!
# Denjoy Theorem Package

The Denjoy Theorem classifies the dynamics of circle homeomorphisms with irrational
rotation number: if the map is a C^1 diffeomorphism with derivative of bounded variation,
then it is topologically conjugate to an irrational rotation.
-/

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean

structure DenjoyPackage {G : CircleMapPackage} where
  irrationalRotation : Prop
  derivativeBoundedVariation : Prop
  topologicalConjugacy : Prop
  conjugacyToRotation : Prop

structure DenjoyEvidence {G : CircleMapPackage} (D : DenjoyPackage G) where
  irrationalRotationClosed : D.irrationalRotation
  derivativeBoundedVariationClosed : D.derivativeBoundedVariation
  topologicalConjugacyClosed : D.topologicalConjugacy
  conjugacyToRotationClosed : D.conjugacyToRotation

def DenjoyClosed {G : CircleMapPackage} (D : DenjoyPackage G) : Prop :=
  D.irrationalRotation ∧ D.derivativeBoundedVariation ∧
  D.topologicalConjugacy ∧ D.conjugacyToRotation

theorem denjoy_closed_from_evidence {G : CircleMapPackage} (D : DenjoyPackage G)
    (E : DenjoyEvidence D) : DenjoyClosed D := by
  exact And.intro E.irrationalRotationClosed
    (And.intro E.derivativeBoundedVariationClosed
      (And.intro E.topologicalConjugacyClosed E.conjugacyToRotationClosed))

end DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean
end HautevilleHouse
