import EconomicTimeSeriesAnalysisCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EconomicTimeSeriesAnalysisCanonicalLaneLean

structure PrimitiveEconModel where
  agentType : Type
  commoditySpace : Type
  preference : agentType -> commoditySpace -> commoditySpace -> Prop
  endowment : agentType -> commoditySpace
  priceSystem : commoditySpace -> ℝ
  budgetSet (a : agentType) : Set commoditySpace := {x | priceSystem x ≤ priceSystem (endowment a)}
  demand : agentType -> Set commoditySpace
  equilibriumPrice : commoditySpace -> ℝ
  equilibriumAllocation : agentType -> commoditySpace -> Prop
  equilibriumCondition : Prop

structure PrimitiveTimeSeries where
  timeIndex : Type
  initialTime : timeIndex
  transition : timeIndex -> timeIndex -> Prop
  stationarity : Prop
  ergodicity : Prop

end EconomicTimeSeriesAnalysisCanonicalLaneLean
end HautevilleHouse