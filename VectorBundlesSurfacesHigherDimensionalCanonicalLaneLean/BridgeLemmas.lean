import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  VectorBundleWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end VectorBundlesSurfacesHigherDimensionalCanonicalLaneLean
end HautevilleHouse