import EconomicTimeSeriesAnalysisCanonicalLaneLean.MacroeconomicFoundation
import EconomicTimeSeriesAnalysisCanonicalLaneLean.AssetPricing
import EconomicTimeSeriesAnalysisCanonicalLaneLean.GrowthModel
import EconomicTimeSeriesAnalysisCanonicalLaneLean.Equilibrium
import EconomicTimeSeriesAnalysisCanonicalLaneLean.TimeSeriesEconometrics

/-!
# Final Theorem: Constrained Economic Time Series Closure
-/

namespace HautevilleHouse
namespace EconomicTimeSeriesAnalysisCanonicalLaneLean

def ConstrainedEconomicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_economic_endgame (A : AdmissibleClass) : ConstrainedEconomicClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EconomicTimeSeriesAnalysisCanonicalLaneLean
end HautevilleHouse
