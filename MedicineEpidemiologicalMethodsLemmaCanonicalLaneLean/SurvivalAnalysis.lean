import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineEpidemiologicalMethodsLemmaCanonicalLaneLean

structure SurvivalModelPackage where
  hazardFunction : Type
  survivalFunction : Type
  censoringMechanism : Prop
  proportionalHazards : Prop
  kaplanMeierEstimator : Prop
  logRankTest : Prop

structure SurvivalModelEvidence (S : SurvivalModelPackage) where
  censoringMechanismClosed : S.censoringMechanism
  proportionalHazardsClosed : S.proportionalHazards
  kaplanMeierEstimatorClosed : S.kaplanMeierEstimator
  logRankTestClosed : S.logRankTest

def SurvivalModelClosed (S : SurvivalModelPackage) : Prop :=
  S.censoringMechanism ∧ S.proportionalHazards ∧ S.kaplanMeierEstimator ∧ S.logRankTest

theorem survival_model_closed_from_evidence (S : SurvivalModelPackage)
    (E : SurvivalModelEvidence S) : SurvivalModelClosed S := by
  exact And.intro E.censoringMechanismClosed (And.intro E.proportionalHazardsClosed
    (And.intro E.kaplanMeierEstimatorClosed E.logRankTestClosed))

end MedicineEpidemiologicalMethodsLemmaCanonicalLaneLean
end HautevilleHouse