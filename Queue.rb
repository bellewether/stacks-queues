class Queue
  def initialize
    @waiting_list = []
  end

  def enqueue(element)
    @waiting_list.push(element)
  end

  def dequeue
    return @waiting_list.shift
  end

  def front
    return @waiting_list.first
  end

  def size
    return @waiting_list.length
  end

  def empty?
    return size == 0
  end
end
