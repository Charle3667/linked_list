
class Node
  attr_accessor :next, :value

  def initialize(value)
    @next = nil
    @value = value
  end
end

class LinkedList
  attr_accessor :name

  def initialize
    @head = nil
    @tail = nil
  end

  def ptq(entry)
    if @head.nil?
      @head = entry
      @tail = entry
    else
      entry.next = @head
      @head = entry
    end
  end
  
  def pbq(entry)
    if @head.nil?
      @head = entry
      @tail = entry
    else
      @tail.next = entry
      @tail = entry
    end
  end

  def rtq
    return nil if @head.nil?
    entry = @head
    @head = @head.next
    return entry
  end

end

list = LinkedList.new
p list.ptq(Node.new(4))
p list.pbq(Node.new(5))
puts list.rtq
p list.pbq(Node.new(7))
p list.pbq(Node.new(8))
puts list.rtq
puts list.rtq
puts list.rtq
