import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean

structure CircleMapDegreePackage where
  degree : ℤ
  liftMap : ℝ → ℝ
  degreeLiftRelation : Prop
  degreeAdditiveUnderComposition : Prop

structure CircleMapDegreeEvidence (D : CircleMapDegreePackage) where
  degreeLiftRelationClosed : D.degreeLiftRelation
  degreeAdditiveUnderCompositionClosed : D.degreeAdditiveUnderComposition

def CircleMapDegreeClosed (D : CircleMapDegreePackage) : Prop :=
  D.degreeLiftRelation ∧ D.degreeAdditiveUnderComposition

theorem circle_map_degree_closed_from_evidence
    (D : CircleMapDegreePackage) (E : CircleMapDegreeEvidence D) :
    CircleMapDegreeClosed D := by
  exact And.intro E.degreeLiftRelationClosed E.degreeAdditiveUnderCompositionClosed

end DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean
end HautevilleHouse