{-# LANGUAGE PackageImports #-}
module Lib
    (
      Lib.printAssetInfo
    ) where
import Paths_C
import "E" Lib as ELib
printAssetInfo :: IO ()
printAssetInfo = do
  p <- getDataFileName "C.txt"
  c <- readFile p
  putStrLn c
  ELib.printAssetInfo
