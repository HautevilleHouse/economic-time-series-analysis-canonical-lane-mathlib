import EconomicTimeSeriesAnalysisCanonicalLaneLean.MacroeconomicFoundation
import Mathlib.Data.Real.Basic

/-!
# Asset Pricing Package

This module defines asset pricing models including the stochastic discount factor and Euler equation.
-/

namespace HautevilleHouse
namespace EconomicTimeSeriesAnalysisCanonicalLaneLean

structure AssetPricingPackage (M : MacroeconomicFoundation) where
  price : ℝ
  dividend : ℝ
  discountFactor : ℝ
  eulerEquation : price * discountFactor = dividend

def AssetPricingClosed {M : MacroeconomicFoundation} (A : AssetPricingPackage M) : Prop :=
  A.eulerEquation

theorem asset_pricing_closed {M : MacroeconomicFoundation} (A : AssetPricingPackage M) : AssetPricingClosed A :=
  A.eulerEquation

end EconomicTimeSeriesAnalysisCanonicalLaneLean
end HautevilleHouse
