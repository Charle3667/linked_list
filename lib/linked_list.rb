

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
    array.join(' -> ')
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

  # I think that #pop could be better. I think that there is a reason that @tails is used, and using it would make #pop
  # work better If #pop could reference the tail value, the tail could be set to nil and the the previous value could be
  # set to tail

  def pop
    current_node = @head
    while !current_node.next_node.next_node.nil?
      current_node = current_node.next_node
    end
    saved_node = current_node.next_node
    current_node.next_node = nil
    saved_node.value
  end

  def contains?(value)
    current_node = @head
    answer = false
    while !current_node.nil?
      answer = true if current_node.value == value
      current_node = current_node.next_node
    end
    answer
  end

  def find(value)
    it = 0
    current_node = @head
    if contains?(value)
      until current_node.value == value
        current_node = current_node.next_node
        it += 1
      end
      return it
    else
      return nil
    end
  end

  class Node
    attr_accessor :next_node, :value

    def initialize(value = nil, next_node = nil)
      @value = value
      @next_node = next_node
    end
  end
end
