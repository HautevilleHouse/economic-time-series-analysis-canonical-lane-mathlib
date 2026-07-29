import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicTimeSeriesAnalysisCanonicalLaneLean

structure ArrowDebreuEconomy where
  timeHorizon : Nat
  stateSpace : Type
  commodities : Nat
  utilityFunction : Type
  productionSet : Type
  initialEndowment : Type
  equilibriumPrice : Prop
  equilibriumAllocation : Prop
  weierstrassMaximization : Prop
  coneCondition : Prop
  equilibriumPriceTerm : equilibriumPrice
  equilibriumAllocationTerm : equilibriumAllocation
  weierstrassMaximizationTerm : weierstrassMaximization
  coneConditionTerm : coneCondition

structure ArrowDebreuEvidence (E : ArrowDebreuEconomy) where
  equilibriumPriceClosed : E.equilibriumPrice
  equilibriumAllocationClosed : E.equilibriumAllocation
  weierstrassMaximizationClosed : E.weierstrassMaximization
  coneConditionClosed : E.coneCondition

def ArrowDebreuEquilibriumClosed (E : ArrowDebreuEconomy) : Prop :=
  E.equilibriumPrice ∧ E.equilibriumAllocation ∧ E.weierstrassMaximization ∧ E.coneCondition

theorem arrow_debreu_equilibrium_closed_from_evidence (E : ArrowDebreuEconomy) (Ev : ArrowDebreuEvidence E) :
    ArrowDebreuEquilibriumClosed E := by
  exact And.intro Ev.equilibriumPriceClosed
    (And.intro Ev.equilibriumAllocationClosed
      (And.intro Ev.weierstrassMaximizationClosed Ev.coneConditionClosed))

end EconomicTimeSeriesAnalysisCanonicalLaneLean
end HautevilleHouse