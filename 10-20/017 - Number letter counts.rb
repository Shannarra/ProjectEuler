require_relative '../util'

# https://projecteuler.net/problem=17

acc = 0
(0..1000).map{|x| in_words(x)}.map(&:strip).each {|x| acc += x.length}

assert_and_print acc, 20963