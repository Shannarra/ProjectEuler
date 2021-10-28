require_relative '../util'

# https://projecteuler.net/problem=9

#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

results = []; found = false

# a brute force way of finding those numbers:
(3..500).each do |a|
  break if found
  (4..500).each do |b|
    break if found
    (5..500).each do |c|
      break if found
      if a*a + b*b == c*c && a + b + c == 1000
        found = true
        results = [a,b,c]
      end
    end
  end
end

assert_and_print results, [200, 375, 425]
assert_and_print results.inject(:*), 31875000 # idiomatic way of getting the product