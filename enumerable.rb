module MyEnumerable
  def all?(&block)
    each do |element|
      return false unless block.call(element)
    end
    true
  end

  def any?(&block)
    each do |element|
      return true if block.call(element)
    end
    false
  end

  def filter(&block)
    result = []
    each do |element|
      result << element if block.call(element)
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
# Should return [2, 4]
p list.filter { |e| e.even? }
