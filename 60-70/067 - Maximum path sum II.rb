require_relative '../util'

=begin
  NOTICE:
  
  This file was added earlier than the rest of the family 60-70 due
  to the problem's corellation to problem 18 (Maximum path sum I),
  to read more use this link: https://projecteuler.net/problem=18
=end

# https://projecteuler.net/problem=67

lines = read_asset!('60-70', "067-triangle")

arr = [[]]
lines.each {|line| arr << line.split(" ").map(&:to_i)}

def max_adjacent_next_index(arr, row, x)
  new_x = (arr[row][x] < arr[row][x+1]) ? x + 1 : x
  
  if (x > 0)
      new_x = (arr[row][new_x] < arr[row][x-1]) ? x - 1 : new_x  
  end
  new_x
end

x = 0; sum = arr[1][0] + ((arr[2][0] < arr[2][1]) ? arr[2][1] : arr[2][0])

(1...(arr.count - 1)).each do |row|
  x = max_adjacent_next_index(arr, row+1, x)
  sum += arr[row+1][x]
end
sum += arr[-1][max_adjacent_next_index(arr, -1, x)]

assert_and_print sum, 7202