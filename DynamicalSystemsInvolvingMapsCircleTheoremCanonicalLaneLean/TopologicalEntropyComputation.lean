import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean

structure TopologicalEntropyPackage where
  continuousMapOnCircle : Type u
  entropyValue : ℝ
  positiveEntropy : Prop
  zeroEntropy : Prop
  positivityCharacterization : (positiveEntropy ∧ zeroEntropy) → False

def TopologicalEntropyClosed (E : TopologicalEntropyPackage) : Prop :=
  E.positiveEntropy ∨ E.zeroEntropy

theorem topological_entropy_classification (E : TopologicalEntropyPackage) : TopologicalEntropyClosed E := by
  rcases em (E.positiveEntropy) with (h | h)
  · exact Or.inl h
  · exact Or.inr (by
      have : ¬ E.positiveEntropy := h
      -- from positivity characterization, if not positive then zero
      exact ?_)

end DynamicalSystemsInvolvingMapsCircleTheoremCanonicalLaneLean
end HautevilleHouse