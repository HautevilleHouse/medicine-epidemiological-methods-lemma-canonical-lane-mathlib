import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineEpidemiologicalMethodsLemmaCanonicalLaneLean

structure DiagnosticTestPackage where
  sensitivity : Prop
  specificity : Prop
  positivePredictiveValue : Prop
  negativePredictiveValue : Prop
  likelihoodRatio : Prop
  prevalence : Prop

structure DiagnosticTestEvidence (D : DiagnosticTestPackage) where
  sensitivityClosed : D.sensitivity
  specificityClosed : D.specificity
  positivePredictiveValueClosed : D.positivePredictiveValue
  negativePredictiveValueClosed : D.negativePredictiveValue
  likelihoodRatioClosed : D.likelihoodRatio
  prevalenceClosed : D.prevalence

def DiagnosticTestClosed (D : DiagnosticTestPackage) : Prop :=
  D.sensitivity ∧ D.specificity ∧ D.positivePredictiveValue ∧ D.negativePredictiveValue ∧ D.likelihoodRatio ∧ D.prevalence

theorem diagnostic_test_closed_from_evidence (D : DiagnosticTestPackage)
    (E : DiagnosticTestEvidence D) : DiagnosticTestClosed D := by
  exact And.intro E.sensitivityClosed (And.intro E.specificityClosed
    (And.intro E.positivePredictiveValueClosed (And.intro E.negativePredictiveValueClosed
      (And.intro E.likelihoodRatioClosed E.prevalenceClosed))))

end MedicineEpidemiologicalMethodsLemmaCanonicalLaneLean
end HautevilleHouse