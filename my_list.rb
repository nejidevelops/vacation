require_relative 'my_enumerable'

class MyList
  include MyEnumerable
  def initialize(*elements)
    @list = elements
  end

  def each(&block)
    @list.each do |element|
      block.call(element)
    end
  end
end
