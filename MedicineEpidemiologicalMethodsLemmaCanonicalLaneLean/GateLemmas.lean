import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineEpidemiologicalMethodsLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.remainderRecorded ∨ A.endpointSatisfied

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact Or.inr A.endpointSatisfied

end MedicineEpidemiologicalMethodsLemmaCanonicalLaneLean
end HautevilleHouse