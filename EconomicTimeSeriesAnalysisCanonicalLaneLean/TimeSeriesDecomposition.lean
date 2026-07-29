import HautevilleHouse.EconomicTimeSeriesAnalysisCanonicalLaneLean.GrowthModel

namespace HautevilleHouse
namespace EconomicTimeSeriesAnalysisCanonicalLaneLean

structure TimeSeriesDecomposition (G : GrowthModel (AssetPricing (UtilityRepresentation (ArrowDebreuEquilibrium)))) where
  trendComponent : Type u
  seasonalComponent : Type v
  residualComponent : Type w
  additiveDecomposition : Prop
  stationarityResidual : Prop
  longRunVariance : Prop

structure TimeSeriesDecompositionEvidence (T : TimeSeriesDecomposition (GrowthModel (AssetPricing (UtilityRepresentation (ArrowDebreuEquilibrium))))) where
  additiveDecompositionClosed : T.additiveDecomposition
  stationarityResidualClosed : T.stationarityResidual
  longRunVarianceClosed : T.longRunVariance

def TimeSeriesDecompositionClosed (T : TimeSeriesDecomposition (GrowthModel (AssetPricing (UtilityRepresentation (ArrowDebreuEquilibrium))))) : Prop :=
  T.additiveDecomposition ∧ T.stationarityResidual ∧ T.longRunVariance

theorem time_series_decomposition_closed_from_evidence (T : TimeSeriesDecomposition (GrowthModel (AssetPricing (UtilityRepresentation (ArrowDebreuEquilibrium))))) (E : TimeSeriesDecompositionEvidence T) : TimeSeriesDecompositionClosed T := by
  exact And.intro E.additiveDecompositionClosed (And.intro E.stationarityResidualClosed E.longRunVarianceClosed)

end EconomicTimeSeriesAnalysisCanonicalLaneLean
end HautevilleHouse
