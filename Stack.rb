class Stack
  def initialize
    @store = Array.new
  end

  def push(element)
    @store.push(element) # @store << element
  end

  def pop
    return @store.pop # ruby has a method that pops off the last element in an array
  end

  def top
    return @store.last
  end

  def size
    return @store.length
  end

  def empty?
    return size == 0 # return @store.empty? # return @store.length == 0
  end
end
