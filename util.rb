def assert_and_print(actual, expected)
  assert!(actual, expected)
  puts "✔️  Answer: #{actual} ✔️"
end

def assert!(actual, expected, msg = "Assertion failed. \nActual: #{actual}\nExpected:#{expected}")
  raise msg unless actual == expected
end

class Array
  def last
    self[self.count - 1]
  end
end
