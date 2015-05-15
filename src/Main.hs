module Main where

import Words

main = do
    input <- readFile "warandpeace.txt"
    putStrLn (commonWords 10 input)
