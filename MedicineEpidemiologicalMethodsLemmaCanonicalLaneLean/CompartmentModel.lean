import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineEpidemiologicalMethodsLemmaCanonicalLaneLean

structure CompartmentModelPackage where
  population : Type
  susceptibles : population -> Prop
  infected : population -> Prop
  recovered : population -> Prop
  transitionRates : Prop
  basicReproNumber : Prop
  equilibriumStability : Prop

structure CompartmentModelEvidence (M : CompartmentModelPackage) where
  transitionRatesClosed : M.transitionRates
  basicReproNumberClosed : M.basicReproNumber
  equilibriumStabilityClosed : M.equilibriumStability

def CompartmentModelClosed (M : CompartmentModelPackage) : Prop :=
  M.transitionRates ∧ M.basicReproNumber ∧ M.equilibriumStability

theorem compartment_model_closed_from_evidence (M : CompartmentModelPackage)
    (E : CompartmentModelEvidence M) : CompartmentModelClosed M := by
  exact And.intro E.transitionRatesClosed (And.intro E.basicReproNumberClosed E.equilibriumStabilityClosed)

end MedicineEpidemiologicalMethodsLemmaCanonicalLaneLean
end HautevilleHouse