import EconomicTimeSeriesAnalysisCanonicalLaneLean.MacroeconomicFoundation
import Mathlib.Data.Real.Basic

/-!
# Time Series Econometrics Package

This module defines time series models such as ARIMA and GARCH.
-/

namespace HautevilleHouse
namespace EconomicTimeSeriesAnalysisCanonicalLaneLean

structure TimeSeriesModel (M : MacroeconomicFoundation) where
  observations : List ℝ
  parameters : List ℝ
  specification : Prop

def TimeSeriesClosed {M : MacroeconomicFoundation} (T : TimeSeriesModel M) : Prop :=
  T.specification

theorem time_series_closed {M : MacroeconomicFoundation} (T : TimeSeriesModel M) : TimeSeriesClosed T :=
  T.specification

end EconomicTimeSeriesAnalysisCanonicalLaneLean
end HautevilleHouse
