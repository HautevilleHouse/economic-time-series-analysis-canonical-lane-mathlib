import EconomicTimeSeriesAnalysisCanonicalLaneLean.EquilibriumModels

namespace HautevilleHouse
namespace EconomicTimeSeriesAnalysisCanonicalLaneLean

structure AssetPricingPackage {G : PrimitiveEconModel}
    (D : DynamicsPackage G) where
  stochasticDiscountFactor : Type
  pricingEquation : Prop
  noArbitrage : Prop
  riskNeutralMeasure : Prop
  expectedReturn : Prop

structure AssetPricingEvidence {G : PrimitiveEconModel}
    {D : DynamicsPackage G} (P : AssetPricingPackage D) where
  pricingEquationClosed : P.pricingEquation
  noArbitrageClosed : P.noArbitrage
  riskNeutralMeasureClosed : P.riskNeutralMeasure
  expectedReturnClosed : P.expectedReturn

def AssetPricingClosed {G : PrimitiveEconModel}
    {D : DynamicsPackage G} (P : AssetPricingPackage D) : Prop :=
  P.pricingEquation ∧ P.noArbitrage ∧ P.riskNeutralMeasure ∧ P.expectedReturn

theorem asset_pricing_closed_from_evidence
    {G : PrimitiveEconModel} {D : DynamicsPackage G}
    (P : AssetPricingPackage D) (E : AssetPricingEvidence P) :
    AssetPricingClosed P := by
  exact And.intro E.pricingEquationClosed
    (And.intro E.noArbitrageClosed
      (And.intro E.riskNeutralMeasureClosed E.expectedReturnClosed))

end EconomicTimeSeriesAnalysisCanonicalLaneLean
end HautevilleHouse