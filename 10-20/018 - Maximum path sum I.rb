require_relative '../util'

# https://projecteuler.net/problem=18

arr = [
  [75],
  [95, 64],
  [17, 47, 82],
  [18, 35, 87, 10],
  [20, 04, 82, 47, 65],
  [19, 01, 23, 75, 03, 34],
  [88, 02, 77, 73, 07, 63, 67],
  [99, 65, 04, 28, 06, 16, 70, 92],
  [41, 41, 26, 56, 83, 40, 80, 70, 33],
  [41, 48, 72, 33, 47, 32, 37, 16, 94, 29],
  [53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14],
  [70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57],
  [91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48],
  [63, 66, 04, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31],
  [04, 62, 98, 27, 23,  9, 70, 98, 73, 93, 38, 53, 60, 04, 23],
]

def max_adjacent_next_index(arr, row, x)
  new_x = (arr[row][x] < arr[row][x+1]) ? x + 1 : x

  if (x > 0)
    new_x = (arr[row][new_x] < arr[row][x-1]) ? x - 1 : new_x  
  end
  new_x
end


x = 0; sum = arr[0][0] + ((arr[1][0] < arr[1][1]) ? arr[1][1] : arr[1][0])

(1...(arr.count - 1)).each do |row|
  x = max_adjacent_next_index(arr, row+1, x)
  sum += arr[row+1][x]
end
sum += arr[-1][max_adjacent_next_index(arr, -1, x)]

assert_and_print sum + (arr[-1][x]), 1308