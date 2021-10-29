require_relative '../util'

# https://projecteuler.net/problem=3

require 'prime'
TESTNUM = 600_851_475_143  

assert_and_print TESTNUM.prime_division.last[0], 6857