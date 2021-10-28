require_relative '../util'

# https://projecteuler.net/problem=5

# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

num = 2520
res = []  
#(1..20).each {|x| print "num % #{x} == 0 && "}

loop do
  num += 2520
  (1..20).each {|x| res << (num % x == 0)}
  break if res.all?
  res = []
end

assert_and_print num, 232792560