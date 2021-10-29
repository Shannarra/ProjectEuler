require_relative '../util'

# https://projecteuler.net/problem=15

# n!/(k!k!), in this situation n = k*2. 
# Formula from: https://en.wikipedia.org/wiki/Binomial_coefficient
GRID_SIZE = 20
assert_and_print (
    factorial!(GRID_SIZE * 2)/(factorial!(GRID_SIZE) * factorial!(GRID_SIZE))
), 137846528820 