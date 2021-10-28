def assert_and_print(guess, original)
  raise "Assertion failed. \nGot: #{guess}\nExpected:#{original}" unless guess == original

  puts "Answer: #{guess}"
end

class Array
  def last
    #raise 'Empty array!' if self.count == 0

    self[self.count - 1]
  end
end
