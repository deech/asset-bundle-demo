module Lib
    ( printAssetInfo
    ) where
import Paths_D
printAssetInfo :: IO ()
printAssetInfo = do
  p <- getDataFileName "D.txt"
  c <- readFile p
  putStrLn c
