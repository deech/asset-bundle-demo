{-# LANGUAGE PackageImports #-}
module Lib
    (
      Lib.printAssetInfo
    ) where
import Paths_A
import "B" Lib as BLib
import "C" Lib as CLib

printAssetInfo :: IO ()
printAssetInfo = do
  p <- getDataFileName "A.txt"
  c <- readFile p
  putStrLn c
  BLib.printAssetInfo
  CLib.printAssetInfo
