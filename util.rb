def assert_and_print(actual, expected)
  assert!(actual, expected)
  puts "✔️  Answer: #{actual} ✔️"
end

def assert!(actual, expected, msg = "Assertion failed. \nActual:  #{actual}\nExpected:#{expected}")
  raise msg unless actual == expected
end

def read_asset!(foldr, name)
  File
    .open("./#{foldr}/question_assets/#{name}.txt")
    .readlines
    .map(&:chomp)
end

# https://stackoverflow.com/a/45896909/11542917
def factorial!(n) 
  (1..n).inject(1) {|r,i| r*i } 
end

# https://stackoverflow.com/a/26220538/11542917
def in_words(int)
  numbers_to_name = {
      1000000 => "million",
      1000 => "thousand",
      100 => "hundred",
      90 => "ninety",
      80 => "eighty",
      70 => "seventy",
      60 => "sixty",
      50 => "fifty",
      40 => "forty",
      30 => "thirty",
      20 => "twenty",
      19=>"nineteen",
      18=>"eighteen",
      17=>"seventeen", 
      16=>"sixteen",
      15=>"fifteen",
      14=>"fourteen",
      13=>"thirteen",              
      12=>"twelve",
      11 => "eleven",
      10 => "ten",
      9 => "nine",
      8 => "eight",
      7 => "seven",
      6 => "six",
      5 => "five",
      4 => "four",
      3 => "three",
      2 => "two",
      1 => "one"
    }
  str = ""
  numbers_to_name.each do |num, name|
    if int == 0
      return str
    elsif int.to_s.length == 1 && int/num > 0
      return str + "#{name}"      
    elsif int < 100 && int/num > 0
      return str + "#{name}" if int%num == 0
      return str + "#{name} " + in_words(int%num)
    elsif int/num > 0
      return str + in_words(int/num) + " #{name} " + in_words(int%num)
    end
  end
end

class Array
  def last
    self[self.count - 1]
  end
end

require 'benchmark'
# Executes the given block and measures the performance in time
def time(name = 'Your fn', &block)
  puts "#{name} took #{Benchmark.measure { yield block}}"
end