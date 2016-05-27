require './data_structures/node'
require './data_structures/linked_list'
require 'rspec'

test_val_one = 'Hi there!'
test_val_two = 'How goes it?'

describe LinkedList do
  before :each do
    @my_sexy_linked_list = LinkedList.new
  end

  it 'should be an instance of LinkedList' do
    expect(@my_sexy_linked_list).to be_an_instance_of LinkedList
  end

  it 'should start as an empty list' do
    expect(@my_sexy_linked_list.get_node(0)).to eq(nil)
  end

  it 'should get the value of a given node' do
    @my_sexy_linked_list.append(test_val_one)
    expect(@my_sexy_linked_list.get_node(0)).to eq(test_val_one)
  end

  it 'should append nodes to the end of the list' do
    @my_sexy_linked_list.append(test_val_one)
    @my_sexy_linked_list.append(test_val_two)
    expect(@my_sexy_linked_list.get_node(1)).to eq(test_val_two)
  end

  it 'should append nodes at the correct position in the list' do
    @my_sexy_linked_list.append(test_val_one)
    @my_sexy_linked_list.append(test_val_one)
    @my_sexy_linked_list.append(test_val_one)
    @my_sexy_linked_list.append_to_pos(test_val_two, 1)

    expect(@my_sexy_linked_list.get_node(1)).to eq(test_val_two)
  end

  it 'should set the value of a given node' do
    @my_sexy_linked_list.append(test_val_one)
    @my_sexy_linked_list.append(test_val_one)
    @my_sexy_linked_list.append(test_val_one)
    @my_sexy_linked_list.set_node(test_val_two, 1)

    expect(@my_sexy_linked_list.get_node(1)).to eq(test_val_two)
  end
end
