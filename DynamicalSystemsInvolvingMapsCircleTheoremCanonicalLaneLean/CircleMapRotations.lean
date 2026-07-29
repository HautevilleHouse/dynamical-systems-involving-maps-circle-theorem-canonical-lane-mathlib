import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean

structure CircleRotationPackage where
  rotationNumber : ℝ
  mapFromCircle : ℝ → ℝ
  liftToReal : ℝ → ℝ
  rotationIrrelevant : rotationNumber ∈ ℚ → False

def CircleRotationClosed (R : CircleRotationPackage) : Prop :=
  R.rotationIrrelevant

end DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean
end HautevilleHouse