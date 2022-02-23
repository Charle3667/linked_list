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
puts "removing value - '#{my_list.pop}' - from end of list..."
p my_list.put_full_list
puts "Does the list contain an value of 'first'? Answer: #{my_list.contains?('first')}"
puts "Does the list contain an value of 'second'? Answer: #{my_list.contains?('second')}"
puts "Does the list contain an value of 'fifth'? Answer: #{my_list.contains?('fifth')}"
puts "The value 'first' is located at index: #{my_list.find('first')}"
puts "The value 'Start' is located at index: #{my_list.find('Start')}"
puts "The value 'fifth' is located at index: #{my_list.find('fifth')}"


