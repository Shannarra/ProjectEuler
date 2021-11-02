require_relative '../util'

# https://projecteuler.net/problem=19

count = 0

(1901..2000).each {|y| (1..12).each {|m| count += 1 if (Time.new(y,m,1).wday == 0)}}

assert_and_print count, 171