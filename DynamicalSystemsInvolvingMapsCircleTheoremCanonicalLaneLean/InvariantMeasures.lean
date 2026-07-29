import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean.CircleMapDefinitions

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean

structure InvariantMeasurePackage (M : Type) [TopologicalSpace M] where
  circleMap : CircleMap M
  measure : Measure M
  invariant : ∀ (A : Set M), MeasurableSet A → measure (circleMap.map '' A) = measure A

structure InvariantMeasureEvidence (M : Type) [TopologicalSpace M] (P : InvariantMeasurePackage M) where
  invariantClosed : P.invariant

def InvariantMeasureClosed (M : Type) [TopologicalSpace M] (P : InvariantMeasurePackage M) : Prop :=
  P.invariant

theorem invariant_measure_closed_from_evidence (M : Type) [TopologicalSpace M]
  (P : InvariantMeasurePackage M) (E : InvariantMeasureEvidence M P) : InvariantMeasureClosed M P := by
  exact E.invariantClosed

end DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean
end HautevilleHouse