import EconomicTimeSeriesAnalysisCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EconomicTimeSeriesAnalysisCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def econProjection : Projection EconEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem econ_projection_idempotent (x : EconEndgameState) :
    econProjection.toFun (econProjection.toFun x) = econProjection.toFun x := by
  exact econProjection.idempotent x

end EconomicTimeSeriesAnalysisCanonicalLaneLean
end HautevilleHouse