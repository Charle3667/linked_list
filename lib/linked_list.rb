

class LinkedList
  attr_accessor :name

  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    if @head.nil?
      @head = Node.new(value, @tails)
    else
      current_node = @head
      while !current_node.next_node.nil?
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(value, @tails)
    end
  end

  def prepend(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = Node.new(value, @tails)
    else
      new_node.next_node = @head
      @head = new_node
    end
  end

  def put_full_list
    array = []
    current_node = @head
    while !current_node.nil?
      array.push(current_node.value)
      current_node = current_node.next_node
    end
    array
  end

  def size
    it = 0
    current_node = @head
    while !current_node.nil?
      it +=1
      current_node = current_node.next_node
    end
    it
  end

  def head
    @head.value
  end

  def tail
    current_node = @head
    while !current_node.next_node.nil?
      current_node = current_node.next_node
    end
    current_node.value
  end

  def at(index)
    it = 0
    current_node = @head
    while it < (index)
      current_node = current_node.next_node
      it += 1
    end
    current_node.value
  end

  class Node
    attr_accessor :next_node, :value

    def initialize(value = nil, next_node = nil)
      @value = value
      @next_node = next_node
    end
  end
end
