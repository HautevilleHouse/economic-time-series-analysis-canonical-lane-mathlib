import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicTimeSeriesAnalysisCanonicalLaneLean

structure UtilityMaximizationPackage where
  preferencesComplete : Prop
  utilityFunctionExists : Prop
  budgetConstraintGiven : Prop
  optimalConsumptionExists : Prop

structure UtilityMaximizationEvidence (U : UtilityMaximizationPackage) where
  preferencesCompleteClosed : U.preferencesComplete
  utilityFunctionExistsClosed : U.utilityFunctionExists
  budgetConstraintGivenClosed : U.budgetConstraintGiven
  optimalConsumptionExistsClosed : U.optimalConsumptionExists

def UtilityMaximizationClosed (U : UtilityMaximizationPackage) : Prop :=
  U.preferencesComplete ∧ U.utilityFunctionExists ∧
  U.budgetConstraintGiven ∧ U.optimalConsumptionExists

theorem utility_maximization_closed_from_evidence
    (U : UtilityMaximizationPackage) (E : UtilityMaximizationEvidence U) :
    UtilityMaximizationClosed U := by
  exact And.intro E.preferencesCompleteClosed
    (And.intro E.utilityFunctionExistsClosed
      (And.intro E.budgetConstraintGivenClosed E.optimalConsumptionExistsClosed))

end EconomicTimeSeriesAnalysisCanonicalLaneLean
end HautevilleHouse