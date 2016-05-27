require './data_structures/node.rb'
require './data_structures/linked_list.rb'

my_sexy_node = Node.new('hi')

puts my_sexy_node.value
puts my_sexy_node.link

my_sexy_linked_list = LinkedList.new()
my_sexy_linked_list.append('hi')
my_sexy_linked_list.append('yo')
my_sexy_linked_list.append('swag')
# my_sexy_linked_list.to_s
my_sexy_linked_list.append_to_pos('XD', 1)
# my_sexy_linked_list.to_s
my_sexy_linked_list.append_to_pos('buh', 0)
# my_sexy_linked_list.to_s
my_sexy_linked_list.append_to_pos('fuh', 2)
# my_sexy_linked_list.to_s
my_sexy_linked_list.append_to_pos('luh', 4)
# my_sexy_linked_list.to_s

puts my_sexy_linked_list.get_node(4)
puts my_sexy_linked_list.get_node(0)
puts '---------------'

my_sexy_linked_list.set_node('x', 0)
my_sexy_linked_list.set_node('xXx', 3)

my_sexy_linked_list.to_s
