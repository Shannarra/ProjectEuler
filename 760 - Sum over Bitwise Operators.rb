require_relative './util'

# https://projecteuler.net/problem=760

def g(m,n) ((m^n) + (m | n) + (m & n)); end

def G(n_grand) 
  sum = 0

  (0..n_grand).each do |n_small|
    inner_value = 0
    (0..n_small).each do |k| 
      inner_value += g(k, n_small - k)
    end
    sum += inner_value
  end

  sum
end

assert_and_print G(10), 754
assert_and_print G(10**2), 583766
assert_and_print G(10**2)**9, 7873161731583857647376027588146585525314329750836736
assert_and_print G(10**2)**9 % 1_000_000_007, 51455571