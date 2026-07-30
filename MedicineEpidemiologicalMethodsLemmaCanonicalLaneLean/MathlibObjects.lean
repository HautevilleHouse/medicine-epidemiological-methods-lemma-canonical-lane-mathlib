import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineEpidemiologicalMethodsLemmaCanonicalLaneLean

structure EpidemiologySpace where
  carrier : Type
  population : Set carrier
  timeDomain : Type

structure EpidemiologyAdmittedObject where
  space : EpidemiologySpace
  compartmentModel : Prop
  diagnosticAccuracy : Prop
  survivalCurve : Prop
  conclusion : compartmentModel ∧ diagnosticAccuracy ∧ survivalCurve

def EpidemiologyWitnessClosed (O : EpidemiologyAdmittedObject) : Prop :=
  O.conclusion

end MedicineEpidemiologicalMethodsLemmaCanonicalLaneLean
end HautevilleHouse