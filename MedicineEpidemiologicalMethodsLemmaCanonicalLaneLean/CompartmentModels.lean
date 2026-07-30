import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineEpidemiologicalMethodsLemmaCanonicalLaneLean

structure CompartmentModel where
  susceptible : Type u
  exposed : Type v
  infected : Type w
  recovered : Type x
  transitionRates : Prop
  conservationEquation : Prop
  basicReproductiveNumber : Prop

structure CompartmentModelEvidence (M : CompartmentModel) where
  transitionRatesClosed : M.transitionRates
  conservationEquationClosed : M.conservationEquation
  basicReproductiveNumberClosed : M.basicReproductiveNumber

def CompartmentModelClosed (M : CompartmentModel) : Prop :=
  M.transitionRates ∧ M.conservationEquation ∧ M.basicReproductiveNumber

theorem compartment_model_closed_from_evidence (M : CompartmentModel) (E : CompartmentModelEvidence M) : CompartmentModelClosed M := by
  exact And.intro E.transitionRatesClosed (And.intro E.conservationEquationClosed E.basicReproductiveNumberClosed)

end MedicineEpidemiologicalMethodsLemmaCanonicalLaneLean
end HautevilleHouse