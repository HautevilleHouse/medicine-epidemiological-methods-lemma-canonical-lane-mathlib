import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineEpidemiologicalMethodsLemmaCanonicalLaneLean

structure PharmacokineticModel where
  drugConcentration : Type u
  absorptionRate : Prop
  eliminationRate : Prop
  volumeOfDistribution : Prop
  halfLife : Prop

structure PharmacokineticEvidence (P : PharmacokineticModel) where
  absorptionRateClosed : P.absorptionRate
  eliminationRateClosed : P.eliminationRate
  volumeOfDistributionClosed : P.volumeOfDistribution
  halfLifeClosed : P.halfLife

def PharmacokineticModelClosed (P : PharmacokineticModel) : Prop :=
  P.absorptionRate ∧ P.eliminationRate ∧ P.volumeOfDistribution ∧ P.halfLife

theorem pharmacokinetic_model_closed_from_evidence (P : PharmacokineticModel)
    (E : PharmacokineticEvidence P) : PharmacokineticModelClosed P := by
  exact And.intro E.absorptionRateClosed
    (And.intro E.eliminationRateClosed
      (And.intro E.volumeOfDistributionClosed E.halfLifeClosed))

end MedicineEpidemiologicalMethodsLemmaCanonicalLaneLean
end HautevilleHouse