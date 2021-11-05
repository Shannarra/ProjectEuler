require_relative '../util'

def position(letter)
  letter.upcase.ord - 95.ord + 1
end
  
# https://projecteuler.net/problem=22
indexes = ('a'..'z').each_with_index.map{|l,i| [l, i+1]}.to_h
sum = 0; names = read_asset!('20-30', "022-names")[0].split(',').sort!
names.each_with_index {|x, ind| sum += ind * (x.chars.map{|y| (position y).abs}).reduce(:+)}

assert_and_print sum, 3099206674