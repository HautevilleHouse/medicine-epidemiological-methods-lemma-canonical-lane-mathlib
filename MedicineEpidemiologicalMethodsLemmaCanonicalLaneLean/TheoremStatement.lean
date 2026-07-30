import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineEpidemiologicalMethodsLemmaCanonicalLaneLean

structure MedicineAdmittedObject where
  studyDesign : Type
  population : Type
  exposure : Type
  outcome : Type
  associationMeasure : Prop
  confoundingControlled : Prop
  conclusion : associationMeasure ∧ confoundingControlled

def MedicineWitnessClosed (O : MedicineAdmittedObject) : Prop :=
  O.associationMeasure ∧ O.confoundingControlled

end MedicineEpidemiologicalMethodsLemmaCanonicalLaneLean
end HautevilleHouse
