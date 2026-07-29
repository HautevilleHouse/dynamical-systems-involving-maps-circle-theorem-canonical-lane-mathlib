import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean.CircleMapDefinitions

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean

structure RotationNumberData (M : Type) [TopologicalSpace M] where
  circleMap : CircleMap M
  basePoint : ℝ
  liftValues : ℕ → ℝ
  liftRecurrence : ∀ (n : ℕ), circleMap.liftToReal (circleMap.liftToReal^n) (basePoint) = liftValues n

structure RotationNumberBound where
  existsRotationNumber : Prop
  rotationNumberValue : ℝ
  rotationNumberInUnitInterval : rotationNumberValue ∈ Set.Icc (0 : ℝ) 1

def RotationNumberClosed (M : Type) [TopologicalSpace M] (R : RotationNumberData M) : Prop :=
  ∃ (α : ℝ), α ∈ Set.Icc (0 : ℝ) 1 ∧
    ∀ (x : ℝ), Filter.Tendsto (λ (n : ℕ) => (R.circleMap.liftToReal^n x - x) / (n : ℝ)) Filter.atTop (𝓝 α)

theorem rotation_number_upper_bound (α : ℝ) (h : α ∈ Set.Icc (0 : ℝ) 1) : α ≤ 1 := h.2

end DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean
end HautevilleHouse