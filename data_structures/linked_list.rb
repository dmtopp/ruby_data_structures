class LinkedList

  def initialize
    @head = nil
  end

  def to_s
    node = @head
    puts node.value

    while node.link
      node = node.link
      puts node.value
    end

    puts '---------------'

  end

  def append(value)
    new_node = Node.new(value)

    if @head
      node = @head
      while node.link
        node = node.link
      end
      node.link = new_node
    else
      @head = new_node
    end

  end

  # append a new node to a 0-indexed position
  def append_to_pos(value, position)
    new_node = Node.new(value)

    if !@head
      @head = new_node
    elsif position == 0
      new_node.link = @head
      @head = new_node
    else
      node = @head
      # go to the position before where we want to append
      (0...position - 1).each do
        node = node.link
      end

      new_node.link = node.link
      node.link = new_node

    end

  end

  # get the value of a node at a position
  def get_node(position)
    if (@head)
      node = @head

      (0...position).each do
        node = node.link
      end

      return node.value
    else
      return nil
    end
  end

  def set_node(value, position)
    node = @head

    (0...position).each do
      node = node.link
    end

    node.value = value

  end


end # end class
