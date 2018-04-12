module Lib
    ( printAssetInfo
    ) where
import Paths_E
printAssetInfo :: IO ()
printAssetInfo = do
  p <- getDataFileName "E.txt"
  c <- readFile p
  putStrLn c
