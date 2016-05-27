class NodeStack
  def initialize
    @top = nil
  end

  def push(item)
    @top = Node.new(item, @top)
  end

  def pop
    if @top
      node = @top
      @top = node.link
      return node.value
    else
      raise Exception.new('Stack is empty!')
    end
  end

end
