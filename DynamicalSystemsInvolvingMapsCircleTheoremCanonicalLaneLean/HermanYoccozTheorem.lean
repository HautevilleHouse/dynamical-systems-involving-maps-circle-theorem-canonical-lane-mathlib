import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean

structure HermanYoccozData where
  analyticCircleDiffeo : Prop
  rotationNumberDiophantine : Prop
  linearization : Prop
  criticalRotationNumber : Prop

structure HermanYoccozEvidence (H : HermanYoccozData) where
  analyticCircleDiffeoClosed : H.analyticCircleDiffeo
  rotationNumberDiophantineClosed : H.rotationNumberDiophantine
  linearizationClosed : H.linearization
  criticalRotationNumberClosed : H.criticalRotationNumber

def HermanYoccozClosed (H : HermanYoccozData) : Prop :=
  H.analyticCircleDiffeo ∧ H.rotationNumberDiophantine ∧ H.linearization ∧ H.criticalRotationNumber

theorem herman_yoccoz_closed_from_evidence (H : HermanYoccozData) (E : HermanYoccozEvidence H) :
    HermanYoccozClosed H := by
  exact And.intro E.analyticCircleDiffeoClosed (And.intro E.rotationNumberDiophantineClosed (And.intro E.linearizationClosed E.criticalRotationNumberClosed))

end DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean
end HautevilleHouse