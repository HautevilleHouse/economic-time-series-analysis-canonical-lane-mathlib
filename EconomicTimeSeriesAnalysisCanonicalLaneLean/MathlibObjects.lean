import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicTimeSeriesAnalysisCanonicalLaneLean

structure EconomicSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EconomicAdmittedObject where
  space : EconomicSpace
  completeMarkets : Prop
  rationalExpectations : Prop
  equilibriumModel : Type
  equilibriumTopology : TopologicalSpace equilibriumModel
  walrasianEquilibrium : Prop
  conclusion : walrasianEquilibrium

structure EconomicEndgameState where
  object : EconomicAdmittedObject

def EconomicWitnessClosed (O : EconomicAdmittedObject) : Prop :=
  O.walrasianEquilibrium

end EconomicTimeSeriesAnalysisCanonicalLaneLean
end HautevilleHouse
