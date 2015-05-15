module Words where

import Data.Char
import Data.List

countRuns = map (\g -> (length g, head g)) . group

showRun (count, word) = word ++ ": " ++ (show count) ++ "\n"

sortRuns = reverse . sort

commonWords n = concat . map showRun . take n . sortRuns .countRuns . sort . words . map toLower

