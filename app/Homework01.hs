module Main where

import LibHomework01

result1 = toDigits(1745)
result2 = toDigitsRev(1745)
result3 = toDigits(0)
result4 = toDigits(-17)

main = do
    print result1
    print result2
    print result3
    print result4
