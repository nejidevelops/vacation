require_relative 'my_list.rb'
require_relative 'my_enumerable.rb'

# Create our list
list = MyList.new(1, 2, 3, 4)
puts list.inspect

# Test #all?
puts(list.all? { |e| e < 5 }) # Should return true
puts(list.all? { |e| e > 5 }) # Should return false

# Test #any?
puts(list.any? { |e| e == 2 }) # Should return true
puts(list.any? { |e| e == 5 }) # Should return false

# Test #filter
# Should return [2, 4]
p list.filter(&:even?)
