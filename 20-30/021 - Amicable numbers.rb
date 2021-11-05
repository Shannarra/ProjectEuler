require_relative '../util'

# https://projecteuler.net/problem=21

def d(n)
  sum = 0
  (1..(n-1)).each {|x| sum += x if n % x == 0}
  sum
end

pairs = []

(1..10000).each do |x|
  next if pairs.include?(x)
  res = d(x)
  if d(res) == x
    pairs << x
    pairs << res
  end
end

assert_and_print pairs.uniq!.reduce(:+), 40284