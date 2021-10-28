require_relative '../util'

# https://projecteuler.net/problem=12

require 'prime'

# https://stackoverflow.com/a/3398195/11542917
def factors_of(number)
  primes, powers = number.prime_division.transpose
  exponents = powers.map{|i| (0..i).to_a}
  divisors = exponents.shift.product(*exponents).map do |powers|
      primes.zip(powers).map{|prime, power| prime ** power}.inject(:*)
  end
  divisors.sort
end

num = 1; index = 1; done = false;

loop do
  index += 1
  num += index
  
  break if factors_of(num).count > 500
end

assert_and_print num, 76576500