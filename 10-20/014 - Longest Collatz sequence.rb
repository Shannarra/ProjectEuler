require_relative '../util'

# https://projecteuler.net/problem=14

longest_chain = [1,0] # [start, len]

(1..999_999).each do |x|
  start = x; len = 1
  until x == 1
    x = (x % 2 == 0) ? x / 2 : 3 * x + 1
    len += 1
  end
  longest_chain = [start, len] if longest_chain[1] < len
end

assert_and_print longest_chain, [837799, 525]