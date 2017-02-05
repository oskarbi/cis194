import Data.Monoid
import Test.Framework
import Test.Framework.Providers.HUnit
import Test.HUnit

import LibHomework01

main :: IO ()
main = defaultMainWithOpts
       [ testCase "toDigitsPositive" testToDigitsPositive
       , testCase "toDigitsOneDigit" testToDigitsOneDigit
       , testCase "toDigitsZero" testToDigitsZero
       , testCase "toDigitsNegative" testToDigitsNegative
       , testCase "toDigitsRevPositive" testToDigitsRevPositive
       , testCase "toDigitsRevOneDigit" testToDigitsRevOneDigit
       , testCase "toDigitsRevZero" testToDigitsRevZero
       , testCase "toDigitsRevNegative" testToDigitsRevNegative
       ] mempty

testToDigitsPositive :: Assertion
testToDigitsPositive = toDigits(1234) @?= [1,2,3,4]

testToDigitsOneDigit :: Assertion
testToDigitsOneDigit = toDigits(4) @?= [4]

testToDigitsZero :: Assertion
testToDigitsZero = toDigits(0) @?= []

testToDigitsNegative :: Assertion
testToDigitsNegative = toDigits(0) @?= []

testToDigitsRevPositive :: Assertion
testToDigitsRevPositive = toDigitsRev(1234) @?= [4,3,2,1]

testToDigitsRevOneDigit :: Assertion
testToDigitsRevOneDigit = toDigitsRev(4) @?= [4]

testToDigitsRevZero :: Assertion
testToDigitsRevZero = toDigitsRev(0) @?= []

testToDigitsRevNegative :: Assertion
testToDigitsRevNegative = toDigitsRev(0) @?= []
