module MyEnumerable
  def all?
    each do |element|
      return false unless yield(element)
    end
    true
  end

  def any?
    each do |element|
      return true if yield(element)
    end
    false
  end

  def filter
    result = []
    each do |element|
      result << element if yield(element)
    end
    result
  end
end

class MyList
  include MyEnumerable

  def initialize(*elements)
    @list = elements
  end

  def each
    @list.each do |element|
      yield element
    end
  end
end

# Create our list
list = MyList.new(1, 2, 3, 4)
puts list.inspect

# Test #all?
puts list.all? { |e| e < 5 }
# Should return true
puts list.all? { |e| e > 5 }
# Should return false

# Test #any?
puts list.any? { |e| e == 2 }
# Should return true
puts list.any? { |e| e == 5 }
# Should return false

# Test #filter
p list.filter { |e| e.even? }
# Should return [2, 4]
