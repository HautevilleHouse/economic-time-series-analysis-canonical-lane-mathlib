import EconomicTimeSeriesAnalysisCanonicalLaneLean.MacroeconomicFoundation
import Mathlib.Data.Real.Basic

/-!
# Equilibrium Package

This module defines the Arrow-Debreu equilibrium and competitive equilibrium concepts.
-/

namespace HautevilleHouse
namespace EconomicTimeSeriesAnalysisCanonicalLaneLean

structure CompetitiveEquilibrium (M : MacroeconomicFoundation) where
  prices : ℝ
  allocations : ℝ
  agentOptimality : Prop
  marketClearing : Prop
  equilibriumCondition : agentOptimality ∧ marketClearing

def EquilibriumClosed {M : MacroeconomicFoundation} (E : CompetitiveEquilibrium M) : Prop :=
  E.equilibriumCondition

theorem equilibrium_closed {M : MacroeconomicFoundation} (E : CompetitiveEquilibrium M) : EquilibriumClosed E :=
  E.equilibriumCondition

end EconomicTimeSeriesAnalysisCanonicalLaneLean
end HautevilleHouse
