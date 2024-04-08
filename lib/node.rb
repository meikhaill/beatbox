class Node

  attr_accessor :data, :pointer

  def initialize(data, pointer = nil)
    @data = data
    @pointer = pointer
    @@counter = 0
    @count = @@counter 
    @@counter += 1

  end

  def data
    return @data
  end

  def next_node
    return nil
  end


end