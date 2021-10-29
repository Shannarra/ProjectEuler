require_relative '../util'

# https://projecteuler.net/problem=16

assert_and_print (2 ** 1000).to_s.chars.map(&:to_i).reduce(&:+), 1366