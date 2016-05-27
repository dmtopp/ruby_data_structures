class NodeQueue
  def initialize
    @front = nil
    @back = nil
  end

  def push(item)
    if @front
      node = @front
      while node.link
        node = node.link
      end

      node.link = Node.new(item)
    else
      @front = Node.new(item)
    end
  end

  def pop
    if @front
      node = @front
      @front = node.link
      return node.value
    else
      raise Exception.new('Queue is empty!')
    end
  end

end
