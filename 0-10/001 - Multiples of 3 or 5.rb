require_relative '../util'

# https://projecteuler.net/problem=1
sum = 0

(0..999).each {|x| sum += (x % 3 ==0 || x % 5 ==0 ) ? x : 0}

assert_and_print sum, 233168