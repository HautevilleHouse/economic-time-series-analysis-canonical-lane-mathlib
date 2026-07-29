import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicTimeSeriesAnalysisCanonicalLaneLean

structure GrowthModelPackage where
  productionFunctionSpecified : Prop
  capitalAccumulationEquation : Prop
  consumptionOptimalityCondition : Prop
  steadyStateExists : Prop

structure GrowthModelEvidence (G : GrowthModelPackage) where
  productionFunctionSpecifiedClosed : G.productionFunctionSpecified
  capitalAccumulationEquationClosed : G.capitalAccumulationEquation
  consumptionOptimalityConditionClosed : G.consumptionOptimalityCondition
  steadyStateExistsClosed : G.steadyStateExists

def GrowthModelClosed (G : GrowthModelPackage) : Prop :=
  G.productionFunctionSpecified ∧ G.capitalAccumulationEquation ∧
  G.consumptionOptimalityCondition ∧ G.steadyStateExists

theorem growth_model_closed_from_evidence
    (G : GrowthModelPackage) (E : GrowthModelEvidence G) :
    GrowthModelClosed G := by
  exact And.intro E.productionFunctionSpecifiedClosed
    (And.intro E.capitalAccumulationEquationClosed
      (And.intro E.consumptionOptimalityConditionClosed E.steadyStateExistsClosed))

end EconomicTimeSeriesAnalysisCanonicalLaneLean
end HautevilleHouse