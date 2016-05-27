class Node
  attr_accessor :value, :link

  def initialize(value, link=nil)
    @value = value
    @link = link
  end
end
