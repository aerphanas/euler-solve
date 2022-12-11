module Main where
--------------------------------------------------------------------------
-- Original English Problem

-- If we list all the natural numbers below 10 that are multiples of 
-- 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

-- Find the sum of all the multiples of 3 or 5 below 1000.
--------------------------------------------------------------------------
-- Indonesia

-- jika kelipatan 3 dibawah 10 adalah [3,6,9]
-- dan kelipatan 5 dibawah 10 adalah [5]
-- jadi kelipatan 3 dan 5 dibawah 10 adalah [3,5,6,9]
-- jumlah kelipatan 3 dan 5 adalah 23 (3+5+6+9)

-- maka berapakah jumlah kelipatan 3 dan 5 dibawah 1000
--------------------------------------------------------------------------

kelipatan :: String
kelipatan = show $ sum [x|x <- [0..999],x `mod` 3 == 0 || x `mod` 5 == 0]

main::IO ()
main = putStr kelipatan