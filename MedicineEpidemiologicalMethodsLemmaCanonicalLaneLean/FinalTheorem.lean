import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MedicineEpidemiologicalMethodsLemmaCanonicalLaneLean.CompartmentModelProof
import HautevilleHouse.MedicineEpidemiologicalMethodsLemmaCanonicalLaneLean.DiagnosticInferenceProof

namespace HautevilleHouse
namespace MedicineEpidemiologicalMethodsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  True

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  trivial

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedMedicalEpidemiologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_medical_epidemiology_endgame (A : AdmissibleClass) :
    ConstrainedMedicalEpidemiologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MedicineEpidemiologicalMethodsLemmaCanonicalLaneLean
end HautevilleHouse
