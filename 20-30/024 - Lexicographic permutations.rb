require_relative '../util'

RANGE = (0..9)

# https://projecteuler.net/problem=24
def solution
  RANGE.to_a.permutation(RANGE.count).each_with_index do |s, i| 
    return s.join.to_i if i+1 == 1_000_000 # i+1 since we're starting from 0

    s.join
  end
end

assert_and_print solution, 2783915460