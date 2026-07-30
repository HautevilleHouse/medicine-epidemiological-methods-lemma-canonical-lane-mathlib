import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineEpidemiologicalMethodsLemmaCanonicalLaneLean

structure CompartmentModelPackage where
  susceptibleClass : Type u
  infectedClass : Type v
  recoveredClass : Type w
  transmissionRate : Prop
  recoveryRate : Prop
  basicReproNumber : Prop
  endemicEquilibriumStable : Prop

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.transmissionRate ∧ C.recoveryRate ∧ C.basicReproNumber ∧ C.endemicEquilibriumStable

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  transmissionRateClosed : C.transmissionRate
  recoveryRateClosed : C.recoveryRate
  basicReproNumberClosed : C.basicReproNumber
  endemicEquilibriumStableClosed : C.endemicEquilibriumStable

theorem compartment_model_closed_from_evidence (C : CompartmentModelPackage)
    (E : CompartmentModelEvidence C) : CompartmentModelClosed C := by
  exact And.intro E.transmissionRateClosed
    (And.intro E.recoveryRateClosed
      (And.intro E.basicReproNumberClosed E.endemicEquilibriumStableClosed))

end MedicineEpidemiologicalMethodsLemmaCanonicalLaneLean
end HautevilleHouse
