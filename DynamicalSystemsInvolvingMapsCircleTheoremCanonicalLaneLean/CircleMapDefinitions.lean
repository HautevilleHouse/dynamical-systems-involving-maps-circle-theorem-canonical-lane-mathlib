import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean

structure CircleMap {M : Type} [TopologicalSpace M] where
  domain : M
  codomain : M
  map : M → M
  continuousMap : Continuous map
  degree : ℤ
  liftToReal : ℝ → ℝ
  liftContinuous : Continuous liftToReal
  degreeProperty : ∀ (x : ℝ), liftToReal (x + 1) = liftToReal x + (degree : ℝ)

structure CircleMapSpace where
  carrier : Type
  topology : TopologicalSpace carrier

def CircleMapSet (X : CircleMapSpace) : Set (CircleMap (X.carrier)) := Set.univ

structure AdmittedCircleMapObject where
  space : CircleMapSpace
  circleMap : CircleMap (space.carrier)
  circleMapAdmitted : circleMap ∈ CircleMapSet space
  conclusion : circleMapAdmitted

end DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean
end HautevilleHouse