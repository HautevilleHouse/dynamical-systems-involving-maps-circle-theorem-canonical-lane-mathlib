import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean

structure MapCircleTheorem where
  circleMap : Type u
  continuousMap : TopologicalSpace circleMap
  degree : Int
  periodicPoints : Prop
  rotationNumber : Prop
  topologicalEntropy : Prop
  chaoticBehavior : Prop
  conclusion : chaoticBehavior ↔ (rotationNumber ∈ ℚ)

structure AdmissibleClass where
  object : MapCircleTheorem
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MapCircleTheorem.conclusion A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean
end HautevilleHouse