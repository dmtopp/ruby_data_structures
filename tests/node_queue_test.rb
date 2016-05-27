require './data_structures/node'
require './data_structures/node_queue'
require 'rspec'

test_val_one = 'Mom\'s pancakes.'
test_val_two = 'Finger-lickin\' good!'

describe NodeQueue do
  before :each do
    @node_queue = NodeQueue.new
  end

  it 'should be an instance of NodeQueue' do
    expect(@node_queue).to be_an_instance_of NodeQueue
  end

  it 'should initialize as an empty queue' do
    expect{ @node_queue.pop }.to raise_exception('Queue is empty!')
  end

  it 'should add nodes to the \'back\' of the queue and remove them from the \'front\'' do
    @node_queue.push(test_val_one)
    @node_queue.push(test_val_two)

    expect(@node_queue.pop).to eq(test_val_one)
    expect(@node_queue.pop).to eq(test_val_two)
  end

  it 'should raise an exception if the queue is empty' do
    @node_queue.push(test_val_one)
    @node_queue.pop

    expect{ @node_queue.pop }.to raise_exception('Queue is empty!')
  end

end
