require_relative '../util'

# https://projecteuler.net/problem=6

NUM = 100

sum = NUM * (NUM + 1) / 2 # Sn = (n(n + 1))/2
sum *= sum
sum_of_squares = (NUM * (NUM + 1) * (2 * NUM + 1)) / 6 # https://www.cuemath.com/algebra/sum-of-squares/

assert_and_print sum - sum_of_squares, 25164150