module Solution where

isPalindrome s = s == reverse s
palindromes = filter (isPalindrome . show) [10000..998001]
isCandidate n m = n `mod` m == 0 && n `div` m >= 100 && n `div` m <= 999
candidates n = filter (flip isCandidate n) palindromes

solution = maximum (concat ( map candidates [100..999]))


