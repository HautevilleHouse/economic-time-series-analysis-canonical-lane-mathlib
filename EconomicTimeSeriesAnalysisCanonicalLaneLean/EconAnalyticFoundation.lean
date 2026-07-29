import EconomicTimeSeriesAnalysisCanonicalLaneLean.EndpointClassification

namespace HautevilleHouse
namespace EconomicTimeSeriesAnalysisCanonicalLaneLean

structure EconAnalyticFoundation where
  model : PrimitiveEconModel
  modelEvidence : PrimitiveEconModelEvidence model
  timeSeries : PrimitiveTimeSeries
  timeSeriesEvidence : PrimitiveTimeSeriesEvidence timeSeries
  equilibrium : EquilibriumPackage model timeSeries
  equilibriumEvidence : EquilibriumEvidence equilibrium
  dynamics : DynamicsPackage equilibrium
  dynamicsEvidence : DynamicsEvidence dynamics
  utility : UtilityPackage dynamics
  utilityEvidence : UtilityEvidence utility
  growth : GrowthPackage utility
  growthEvidence : GrowthEvidence growth
  assetPricing : AssetPricingPackage growth
  assetPricingEvidence : AssetPricingEvidence assetPricing

def EconAnalyticFoundationClosed (A : EconAnalyticFoundation) : Prop :=
  PrimitiveEconModelClosed A.model ∧
  PrimitiveTimeSeriesClosed A.timeSeries ∧
  EquilibriumClosed A.equilibrium ∧
  DynamicsClosed A.dynamics ∧
  UtilityClosed A.utility ∧
  GrowthClosed A.growth ∧
  AssetPricingClosed A.assetPricing

theorem econ_analytic_foundation_closed_from_evidence
    (A : EconAnalyticFoundation) :
    EconAnalyticFoundationClosed A := by
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ ?_)))))
  · exact primitive_econ_model_closed_from_evidence A.model A.modelEvidence
  · exact primitive_time_series_closed_from_evidence A.timeSeries A.timeSeriesEvidence
  · exact equilibrium_closed_from_evidence A.equilibrium A.equilibriumEvidence
  · exact dynamics_closed_from_evidence A.dynamics A.dynamicsEvidence
  · exact utility_closed_from_evidence A.utility A.utilityEvidence
  · exact growth_closed_from_evidence A.growth A.growthEvidence
  · exact asset_pricing_closed_from_evidence A.assetPricing A.assetPricingEvidence

end EconomicTimeSeriesAnalysisCanonicalLaneLean
end HautevilleHouse