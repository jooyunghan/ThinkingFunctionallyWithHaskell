module Words where

import Data.Char (toLower)
import Data.List (sort)

type Word = [Char]

type Run = (Int, Word)

countRuns :: [Word] -> [Run]
countRuns [] = []
countRuns (x:xs) =  let count = 1 + length (takeWhile (== x) xs)
                        in (count, x) : countRuns (dropWhile (== x) xs)

showRun :: Run -> String
showRun (count, word) = word ++ ": " ++ (show count) ++ "\n"

sortRuns :: [Run] -> [Run]
sortRuns = reverse . sort

commonWords :: Int -> String -> String
commonWords n = concat . map showRun . take n . sortRuns .countRuns . sort . words . map toLower

