require './data_structures/node'
require './data_structures/node_stack'
require 'rspec'

test_val_one = 'I\'m a real boy!'
test_val_two = 'Awww, shucks.'

describe NodeStack do
  before :each do
    @node_stack = NodeStack.new
  end

  it 'should be an instance of NodeStack' do
    expect(@node_stack).to be_an_instance_of NodeStack
  end

  it 'should initialize as an empty stack' do
    expect{ @node_stack.pop }.to raise_exception('Stack is empty!')
  end

  it 'should add and remove nodes from the \'top\' of the stack' do
    @node_stack.push(test_val_one)
    @node_stack.push(test_val_two)

    expect(@node_stack.pop).to eq(test_val_two)
  end

  it 'should raise an exception if the stack is empty' do
    @node_stack.push(test_val_one)
    @node_stack.pop

    expect{ @node_stack.pop }.to raise_exception('Stack is empty!')
  end

end
