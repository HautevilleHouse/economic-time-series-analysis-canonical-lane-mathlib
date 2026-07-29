import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicTimeSeriesAnalysisCanonicalLaneLean

structure AssetPricingModel where
  statePriceDensity : Type
  discountFactor : Type
  pricingKernel : Type
  noArbitrage : Prop
  martingaleMeasure : Prop
  eulerEquation : Prop
  noArbitrageTerm : noArbitrage
  martingaleMeasureTerm : martingaleMeasure
  eulerEquationTerm : eulerEquation

structure AssetPricingEvidence (A : AssetPricingModel) where
  noArbitrageClosed : A.noArbitrage
  martingaleMeasureClosed : A.martingaleMeasure
  eulerEquationClosed : A.eulerEquation

def AssetPricingKernelClosed (A : AssetPricingModel) : Prop :=
  A.noArbitrage ∧ A.martingaleMeasure ∧ A.eulerEquation

theorem asset_pricing_kernel_closed_from_evidence (A : AssetPricingModel) (Ev : AssetPricingEvidence A) :
    AssetPricingKernelClosed A := by
  exact And.intro Ev.noArbitrageClosed
    (And.intro Ev.martingaleMeasureClosed Ev.eulerEquationClosed)

end EconomicTimeSeriesAnalysisCanonicalLaneLean
end HautevilleHouse