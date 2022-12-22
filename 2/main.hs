module Main where

fibonacci :: Int -> [Int]
fibonacci n = 
  let fib 0 = 0
      fib 1 = 1
      fib n = fib (n-1) + fib (n-2)
  in  [fib i | i <- [0..n]]

main :: IO ()
main = putStr $ show $ fibonacci 10