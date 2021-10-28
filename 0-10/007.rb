require_relative '../util'

# https://projecteuler.net/problem=7

require 'prime'

# What is the 10 001st prime number?
assert_and_print Prime.take(10001).lazy.to_a.last, 104743