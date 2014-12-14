module Solution where

dividesEvenly n m = n `mod` m == 0
dividesAllEvenly n ms = all (dividesEvenly n) ms

findSolution n | dividesAllEvenly n [1..20] = n
               | otherwise                  = findSolution (n+1)

solution = findSolution 2520
