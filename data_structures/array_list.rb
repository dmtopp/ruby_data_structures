class ArrayList
  STARTING_LENGTH = 10
  def initialize
    @array = [nil] * STARTING_LENGTH
    @list_length = 0
    @array_length = STARTING_LENGTH
  end

  def to_s
    puts '---------------'
    @array.each do |item|
      puts item
    end
    puts '---------------'
  end

  def append(value)
    if @list_length == @array_length
      @array += [nil] * @array_length
      @array_length *= 2
    end

    @array[@list_length] = value
    @list_length += 1

  end

  def get_pos(position)
    if position >= @array_length
      raise Exception.new('Index out of bounds!')
    else
      @array[position]
    end
  end

  def set_pos(value, position)
    if position >= @array_length
      raise Exception.new('Index out of bounds!')
    else
      @array[position] = value
    end
  end

end # end class
