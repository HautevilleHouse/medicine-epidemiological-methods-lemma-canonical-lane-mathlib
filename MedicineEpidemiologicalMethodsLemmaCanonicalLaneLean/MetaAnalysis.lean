import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineEpidemiologicalMethodsLemmaCanonicalLaneLean

structure MetaAnalysisModel where
  effectSize : Prop
  heterogeneity : Prop
  publicationBias : Prop
  randomEffectsModel : Prop
  forestPlot : Prop

structure MetaAnalysisEvidence (M : MetaAnalysisModel) where
  effectSizeClosed : M.effectSize
  heterogeneityClosed : M.heterogeneity
  publicationBiasClosed : M.publicationBias
  randomEffectsModelClosed : M.randomEffectsModel
  forestPlotClosed : M.forestPlot

def MetaAnalysisClosed (M : MetaAnalysisModel) : Prop :=
  M.effectSize ∧ M.heterogeneity ∧ M.publicationBias ∧ M.randomEffectsModel ∧ M.forestPlot

theorem meta_analysis_closed_from_evidence (M : MetaAnalysisModel) (E : MetaAnalysisEvidence M) : MetaAnalysisClosed M := by
  exact And.intro E.effectSizeClosed (And.intro E.heterogeneityClosed (And.intro E.publicationBiasClosed (And.intro E.randomEffectsModelClosed E.forestPlotClosed)))

end MedicineEpidemiologicalMethodsLemmaCanonicalLaneLean
end HautevilleHouse