require './data_structures/node'
require 'rspec'

describe Node do
  before :each do
    @my_sexy_node = Node.new('value')
  end

  it 'should have a default link of nil' do
    expect(@my_sexy_node.link).to eq(nil)
  end

  it 'should have a value' do
    expect(@my_sexy_node.value).not_to be_nil
  end

  it 'should be an instance of Node' do
    expect(@my_sexy_node).to be_an_instance_of Node
  end

end
