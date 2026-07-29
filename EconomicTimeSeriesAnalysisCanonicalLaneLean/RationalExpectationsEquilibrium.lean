import HautevilleHouse.EconomicTimeSeriesAnalysisCanonicalLaneLean.TimeSeriesDecomposition

namespace HautevilleHouse
namespace EconomicTimeSeriesAnalysisCanonicalLaneLean

structure RationalExpectationsEquilibrium (T : TimeSeriesDecomposition (GrowthModel (AssetPricing (UtilityRepresentation (ArrowDebreuEquilibrium))))) where
  informationSet : Type u
  expectationOperator : Type v
  equilibriumCondition : Prop
  selfFulfillingProphecy : Prop
  stabilityCondition : Prop
  saddlePath : Prop

structure RationalExpectationsEvidence (R : RationalExpectationsEquilibrium (TimeSeriesDecomposition (GrowthModel (AssetPricing (UtilityRepresentation (ArrowDebreuEquilibrium)))))) where
  equilibriumConditionClosed : R.equilibriumCondition
  selfFulfillingProphecyClosed : R.selfFulfillingProphecy
  stabilityConditionClosed : R.stabilityCondition
  saddlePathClosed : R.saddlePath

def RationalExpectationsClosed (R : RationalExpectationsEquilibrium (TimeSeriesDecomposition (GrowthModel (AssetPricing (UtilityRepresentation (ArrowDebreuEquilibrium)))))) : Prop :=
  R.equilibriumCondition ∧ R.selfFulfillingProphecy ∧ R.stabilityCondition ∧ R.saddlePath

theorem rational_expectations_closed_from_evidence (R : RationalExpectationsEquilibrium (TimeSeriesDecomposition (GrowthModel (AssetPricing (UtilityRepresentation (ArrowDebreuEquilibrium)))))) (E : RationalExpectationsEvidence R) : RationalExpectationsClosed R := by
  exact And.intro E.equilibriumConditionClosed (And.intro E.selfFulfillingProphecyClosed (And.intro E.stabilityConditionClosed E.saddlePathClosed))

end EconomicTimeSeriesAnalysisCanonicalLaneLean
end HautevilleHouse
