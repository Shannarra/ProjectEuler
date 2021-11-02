require_relative '../util'

# https://projecteuler.net/problem=20

assert_and_print factorial!(100).to_s.chars.map(&:to_i).reduce(:+), 648