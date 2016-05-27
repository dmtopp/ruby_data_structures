require './data_structures/node'
require './data_structures/linked_list'
require 'rspec'

describe LinkedList do
  before :each do
    @my_sexy_linked_list = LinkedList.new
  end

  it 'should be an instance of LinkedList' do
    expect(@my_sexy_linked_list).to be_an_instance_of LinkedList
  end

  it 'should start as an empty list' do
    expect(@my_sexy_linked_list.to_s.length).to eq(0)
  end
end
