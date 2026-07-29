import EconomicTimeSeriesAnalysisCanonicalLaneLean.ArrowDebreuEquilibrium

namespace HautevilleHouse
namespace EconomicTimeSeriesAnalysisCanonicalLaneLean

structure UtilityTheoryPackage where
  preferenceRelation : Type
  utilityRepresentation : Type
  completeness : Prop
  transitivity : Prop
  continuity : Prop
  localNonSatiation : Prop
  utilityFunctionExists : Prop

structure UtilityTheoryEvidence (P : UtilityTheoryPackage) where
  completenessClosed : P.completeness
  transitivityClosed : P.transitivity
  continuityClosed : P.continuity
  localNonSatiationClosed : P.localNonSatiation
  utilityFunctionExistsClosed : P.utilityFunctionExists

def UtilityTheoryClosed (P : UtilityTheoryPackage) : Prop :=
  P.completeness ∧ P.transitivity ∧ P.continuity ∧ P.localNonSatiation ∧ P.utilityFunctionExists

theorem utility_theory_closed_from_evidence
    (P : UtilityTheoryPackage) (E : UtilityTheoryEvidence P) :
    UtilityTheoryClosed P := by
  exact And.intro E.completenessClosed
    (And.intro E.transitivityClosed
      (And.intro E.continuityClosed
        (And.intro E.localNonSatiationClosed E.utilityFunctionExistsClosed)))

end EconomicTimeSeriesAnalysisCanonicalLaneLean
end HautevilleHouse
