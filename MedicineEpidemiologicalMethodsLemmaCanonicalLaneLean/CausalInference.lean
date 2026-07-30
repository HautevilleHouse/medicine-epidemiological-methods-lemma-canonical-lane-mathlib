import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineEpidemiologicalMethodsLemmaCanonicalLaneLean

structure CausalInferenceModelPackage where
  treatmentAssignment : Type
  outcomeVariable : Type
  confoundingVariables : Prop
  propensityScore : Prop
  instrumentalVariable : Prop
  causalEffect : Prop
  counterfactualConsistency : Prop

structure CausalInferenceModelEvidence (C : CausalInferenceModelPackage) where
  confoundingVariablesClosed : C.confoundingVariables
  propensityScoreClosed : C.propensityScore
  instrumentalVariableClosed : C.instrumentalVariable
  causalEffectClosed : C.causalEffect
  counterfactualConsistencyClosed : C.counterfactualConsistency

def CausalInferenceModelClosed (C : CausalInferenceModelPackage) : Prop :=
  C.confoundingVariables ∧ C.propensityScore ∧ C.instrumentalVariable ∧ C.causalEffect ∧ C.counterfactualConsistency

theorem causal_inference_model_closed_from_evidence (C : CausalInferenceModelPackage)
    (E : CausalInferenceModelEvidence C) : CausalInferenceModelClosed C := by
  exact And.intro E.confoundingVariablesClosed (And.intro E.propensityScoreClosed
    (And.intro E.instrumentalVariableClosed (And.intro E.causalEffectClosed E.counterfactualConsistencyClosed)))

end MedicineEpidemiologicalMethodsLemmaCanonicalLaneLean
end HautevilleHouse