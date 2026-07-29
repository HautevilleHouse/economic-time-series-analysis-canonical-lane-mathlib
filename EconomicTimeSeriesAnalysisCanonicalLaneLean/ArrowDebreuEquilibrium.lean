import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicTimeSeriesAnalysisCanonicalLaneLean

structure ArrowDebreuEquilibriumPackage where
  completenessOfMarkets : Prop
  equilibriumPricesExist : Prop
  equilibriumAllocationsParetoOptimal : Prop
  representativeAgentExists : Prop

structure ArrowDebreuEquilibriumEvidence (E : ArrowDebreuEquilibriumPackage) where
  completenessOfMarketsClosed : E.completenessOfMarkets
  equilibriumPricesExistClosed : E.equilibriumPricesExist
  equilibriumAllocationsParetoOptimalClosed : E.equilibriumAllocationsParetoOptimal
  representativeAgentExistsClosed : E.representativeAgentExists

def ArrowDebreuEquilibriumClosed (E : ArrowDebreuEquilibriumPackage) : Prop :=
  E.completenessOfMarkets ∧ E.equilibriumPricesExist ∧
  E.equilibriumAllocationsParetoOptimal ∧ E.representativeAgentExists

theorem arrow_debreu_equilibrium_closed_from_evidence
    (E : ArrowDebreuEquilibriumPackage) (Ev : ArrowDebreuEquilibriumEvidence E) :
    ArrowDebreuEquilibriumClosed E := by
  exact And.intro Ev.completenessOfMarketsClosed
    (And.intro Ev.equilibriumPricesExistClosed
      (And.intro Ev.equilibriumAllocationsParetoOptimalClosed Ev.representativeAgentExistsClosed))

end EconomicTimeSeriesAnalysisCanonicalLaneLean
end HautevilleHouse