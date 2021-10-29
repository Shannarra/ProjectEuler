def assert_and_print(actual, expected)
  assert!(actual, expected)
  puts "✔️  Answer: #{actual} ✔️"
end

def assert!(actual, expected, msg = "Assertion failed. \nActual: #{actual}\nExpected:#{expected}")
  raise msg unless actual == expected
end

# https://stackoverflow.com/a/45896909/11542917
def factorial!(n) 
  (1..n).inject(1) {|r,i| r*i } 
end

class Array
  def last
    self[self.count - 1]
  end
end
