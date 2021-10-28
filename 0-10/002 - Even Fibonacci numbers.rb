require_relative '../util'

# https://projecteuler.net/problem=2
fibs = [1, 1]

begin
  b = fibs[fibs.count - 2]
  a = fibs.last
  fibs << (a + b)
end while fibs.last + fibs[fibs.count - 2] < 4_000_000 

assert_and_print fibs.select {|x| x % 2 == 0 }.sum, 4613732