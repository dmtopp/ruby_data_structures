require './data_structures/array_list'
require 'rspec'

test_val_one = 'Everybody say heyooooo!'
test_val_two = 'Keep those hands up!'

describe ArrayList do
  before :each do
    @array_list = ArrayList.new
  end

  it 'should be an instance of ArrayList' do
    expect(@array_list).to be_an_instance_of ArrayList
  end

  it 'should get the value of an element' do
    @array_list.append(test_val_one)

    expect(@array_list.get_pos(0)).to eq(test_val_one)
  end

  it 'should set the value of an element' do
    @array_list.append(test_val_one)
    @array_list.set_pos(test_val_two, 0)

    expect(@array_list.get_pos(0)).to eq(test_val_two)
  end

  it 'should append new elements to the end of the array' do
    @array_list.append(test_val_one)
    @array_list.append(test_val_two)

    expect(@array_list.get_pos(1)).to eq(test_val_two)
  end

  it 'should raise an exception if we attempt to get an index that is out of bounds' do
    expect{@array_list.get_pos(100)}.to raise_exception('Index out of bounds!')
  end

  it 'should raise an exception if we attempt to set an index that is out of bounds' do
    expect{@array_list.set_pos(test_val_one, 100)}.to raise_exception('Index out of bounds!')
  end


end
