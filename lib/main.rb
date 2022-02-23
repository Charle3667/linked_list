require_relative 'linked_list'

my_list = LinkedList.new
my_list.prepend('first')
my_list.append('second')
my_list.append('third')
p my_list.put_full_list
my_list.prepend("Start")
p my_list.put_full_list
p my_list.size
puts "The head value is: #{my_list.head}"
puts "The tail value is: #{my_list.tail}"
puts "The value at index 2 is: #{my_list.at(2)}"


