require_relative '../util'

# https://projecteuler.net/problem=10

require 'prime'
#Find the sum of all the primes below two million.
assert_and_print Prime.take_while {|x| x <= 1_999_999}.sum, 142_913_828_922