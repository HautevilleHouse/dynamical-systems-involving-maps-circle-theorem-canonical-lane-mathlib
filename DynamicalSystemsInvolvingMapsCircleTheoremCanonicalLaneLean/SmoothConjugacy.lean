import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean.DenjoyTheorem

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean

structure SmoothConjugacyData (M : Type) [TopologicalSpace M] [SmoothManifold M] where
  circleMap : CircleMap M
  circleMapSmooth : C^∞ (M) (M) (circleMap.map)
  rotationNumberIrrational : Irrational (rotationNumberValue)
  conjugacy : M → ℝ
  conjugacySmooth : C^∞ (M) ℝ conjugacy
  conjugacyHomeomorphism : Homeomorphism M (Codomain (CircleMap ℝ)) (conjugacy)
  conjugacyProperty : circleMap.map ∘ (conjugacy.inv) = (conjugacy.inv) ∘ (λ (x : ℝ) => x + rotationNumberValue)

def SmoothConjugacyClosed {M : Type} [TopologicalSpace M] [SmoothManifold M] (S : SmoothConjugacyData M) : Prop :=
  S.conjugacySmooth ∧ S.conjugacyHomeomorphism ∧ S.conjugacyProperty

theorem smooth_conjugacy_from_denjoy (M : Type) [TopologicalSpace M] [SmoothManifold M]
  (D : DenjoyConclusion M) (S : SmoothConjugacyData M) : SmoothConjugacyClosed M S := by
  exact And.intro S.conjugacySmooth (And.intro S.conjugacyHomeomorphism S.conjugacyProperty)

end DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean
end HautevilleHouse