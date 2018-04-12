import Distribution.PackageDescription(PackageDescription)
import Distribution.Simple(defaultMainWithHooks, simpleUserHooks, Args, postCopy)
import qualified Distribution.Simple.AssetBundle as Bundle (postCopy, depsWithData)
import Distribution.Simple.LocalBuildInfo(LocalBuildInfo)
import Distribution.Simple.Setup(CopyFlags)

main = defaultMainWithHooks (simpleUserHooks { postCopy = myPostCopy })

myPostCopy :: Args -> CopyFlags -> PackageDescription -> LocalBuildInfo -> IO ()
myPostCopy args copyFlags pd localBuildInfo = do
  (postCopy simpleUserHooks) args copyFlags pd localBuildInfo
  deps <- Bundle.depsWithData localBuildInfo
  Bundle.postCopy Nothing deps args copyFlags pd localBuildInfo
