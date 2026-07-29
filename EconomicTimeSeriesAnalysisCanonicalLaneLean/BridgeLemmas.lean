import EconomicTimeSeriesAnalysisCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EconomicTimeSeriesAnalysisCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EconomicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EconomicTimeSeriesAnalysisCanonicalLaneLean
end HautevilleHouse
