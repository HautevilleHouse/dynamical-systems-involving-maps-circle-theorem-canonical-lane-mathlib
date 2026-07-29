import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean

structure RotationNumberPackage where
  rotationNumber : ℝ
  rationalRotation : Prop
  irrationalRotation : Prop
  periodicOrbitDensity : rationalRotation ↔ (∃ (p : ℕ), rotationNumber * p ∈ ℤ)
  topologicalTransitivity : irrationalRotation → (∀ U V open, ∃ n, f^n(U) ∩ V ≠ ∅)

def RotationNumberClosed (R : RotationNumberPackage) : Prop :=
  R.rationalRotation ∨ R.irrationalRotation

theorem rotation_number_classification (R : RotationNumberPackage) : RotationNumberClosed R := by
  rcases em (∃ (p : ℕ), R.rotationNumber * p ∈ ℤ) with (h | h)
  · exact Or.inl h
  · exact Or.inr h

end DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean
end HautevilleHouse