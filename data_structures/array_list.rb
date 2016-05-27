class ArrayList
  def initialize
    STARTING_LENGTH = 10
    @array = [nil] * STARTING_LENGTH
    @list_length = 0
    @array_length = STARTING_LENGTH
  end

  def append_to_pos(value, position)
    if @list_length == @array_length
      @array += [nil] * @array_length
      @array_length *= 2
    end

    @array[@list_length] = value
    @list_length += 1

  end

  def get_pos(position)
    @array[position]
  end

  def set_pos(value, position)
    @array[position] = value
  end


end # end class
