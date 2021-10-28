require_relative '../util'

# https://projecteuler.net/problem=4

results = []

(100..999).each do |x|
  (100..999).each do |y|
    if (x * y).to_s.reverse! == (x * y).to_s
      results << x * y
    end
  end
end

assert_and_print results.max, 906609