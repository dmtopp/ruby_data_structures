require './data_structures/node.rb'
require './data_structures/linked_list.rb'
require './data_structures/array_list.rb'

# my_sexy_node = Node.new('hi')
#
# puts my_sexy_node.value
# puts my_sexy_node.link
#
# my_sexy_linked_list = LinkedList.new()
# my_sexy_linked_list.append('hi')
# my_sexy_linked_list.append('yo')
# my_sexy_linked_list.append('swag')
# puts my_sexy_linked_list.get_node(2)
# puts my_sexy_linked_list.get_node(1)
# puts my_sexy_linked_list.get_node(0)
# # # my_sexy_linked_list.to_s
# # my_sexy_linked_list.append_to_pos('XD', 1)
# # # my_sexy_linked_list.to_s
# # my_sexy_linked_list.append_to_pos('buh', 0)
# # # my_sexy_linked_list.to_s
# # my_sexy_linked_list.append_to_pos('fuh', 2)
# # # my_sexy_linked_list.to_s
# # my_sexy_linked_list.append_to_pos('luh', 4)
# # # my_sexy_linked_list.to_s
# #
# # puts my_sexy_linked_list.get_node(4)
# # puts my_sexy_linked_list.get_node(0)
# # puts '---------------'
# #
# # my_sexy_linked_list.set_node('x', 0)
# # my_sexy_linked_list.set_node('xXx', 3)
#
# my_sexy_linked_list.to_s

array_list = ArrayList.new

array_list.to_s

array_list.append('lol')
array_list.to_s
array_list.get_pos(0)
array_list.set_pos('hey', 0)
array_list.to_s
