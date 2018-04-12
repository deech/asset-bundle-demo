{-# LANGUAGE PackageImports #-}
module Lib
    (
      Lib.printAssetInfo
    ) where
import "D" Lib as DLib
printAssetInfo :: IO ()
printAssetInfo = DLib.printAssetInfo
