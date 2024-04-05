class Node

  attr_accessor :data, :pointer

  def initialize(data, pointer = nil)
    @data = data
    @pointer = pointer
  end

  def data
    return @data
  end

  def next_node
    return nil
  end


end