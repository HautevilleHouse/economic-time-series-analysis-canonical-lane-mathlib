import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicTimeSeriesAnalysisCanonicalLaneLean

structure TimeSeriesStationarityPackage where
  weakStationarityDefined : Prop
  autocovarianceFunctionExists : Prop
  spectralDensityExists : Prop
  ergodicityCondition : Prop

structure TimeSeriesStationarityEvidence (T : TimeSeriesStationarityPackage) where
  weakStationarityDefinedClosed : T.weakStationarityDefined
  autocovarianceFunctionExistsClosed : T.autocovarianceFunctionExists
  spectralDensityExistsClosed : T.spectralDensityExists
  ergodicityConditionClosed : T.ergodicityCondition

def TimeSeriesStationarityClosed (T : TimeSeriesStationarityPackage) : Prop :=
  T.weakStationarityDefined ∧ T.autocovarianceFunctionExists ∧
  T.spectralDensityExists ∧ T.ergodicityCondition

theorem time_series_stationarity_closed_from_evidence
    (T : TimeSeriesStationarityPackage) (E : TimeSeriesStationarityEvidence T) :
    TimeSeriesStationarityClosed T := by
  exact And.intro E.weakStationarityDefinedClosed
    (And.intro E.autocovarianceFunctionExistsClosed
      (And.intro E.spectralDensityExistsClosed E.ergodicityConditionClosed))

end EconomicTimeSeriesAnalysisCanonicalLaneLean
end HautevilleHouse