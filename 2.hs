module Solution where

phi = ( 1 + sqrt 5 ) / 2
fib n = round ( phi ** n / sqrt 5 )

accumulate n sum | value > 4000000    = sum
                 | value `mod` 2 == 0 = accumulate ( n + 1 ) ( sum + value )
                 | otherwise          = accumulate ( n + 1 ) sum
                 where value = fib n

solution = accumulate 1 0
