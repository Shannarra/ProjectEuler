require 'set'
require 'prime'
require_relative '../util'

# https://projecteuler.net/problem=23

class Integer
    
  def divisors(x)
    return [] if self == 1
    primes = prime_division.flat_map{|prime, freq| [prime] * freq}
    (1...primes.size).each_with_object([1]) do |n, res|
      primes.combination(n).map{|combi| res << combi.inject(:*)}
    end.flatten.uniq
  end
  
  def abundant?
    self.divisors(self).sum > self
  end
end

RANGE = 1..28123

def solution1
  abundants = RANGE.select(&:abundant?)
  solution = (RANGE.to_set - abundants.repeated_combination(2).to_set { |x, y| x + y }).sum
end

def solution2
  abundant = RANGE.select do |x|
    primes = Prime.prime_division(x).flat_map{|prime, freq| [prime] * freq}
    (1...primes.size).each_with_object([1]) do |n, res|
      primes.combination(n).map{|combi| res << combi.inject(:*)}
    end.flatten.uniq.sum > x
  end

  (RANGE.to_set - abundant.repeated_combination(2).to_set {|x,y|x+y}).sum
end

time("solution1") { assert_and_print solution1, 4179871 }
time("solution2") { assert_and_print solution2, 4179871 }