require_relative '../util'

# https://projecteuler.net/problem=25

def solution(len)
  a = 0
  b = 1

  f_n = 1 # same as Fib(1) = 1

  while b.to_s.length < len do
    a, b, f_n = b, a+b, f_n+1
  end
  f_n
end

assert_and_print solution(1000), 4782