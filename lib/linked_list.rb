class LinkedList
  attr_accessor :head, :counter

  def initialize
    @head = nil
    @counter = 0
    
  end

  def to_string(root = @head)
    arr = []
    if root != nil
      while root != nil
        arr.push(root.data)
        root = root.pointer
      end
    return arr.join(" ")
    end
  end

  def prepend(item, root = @head)
    new_head = Node.new(item)
    new_head.pointer = @head 
    @head = new_head
  end

  def append(item, root = @head)
    new_node = Node.new(item)
    if @head == nil
      @head = new_node
    else
      current = @head
      while current.pointer != nil
        current = current.pointer
      end
      current.pointer = new_node
    @counter += 1
    end
  end

  def count
    return @counter
  end

  def insert(index, value)
    current = @head

    (index - 1).times do
      unless current == nil
        current = current.pointer
      end
    end

    new_node = Node.new(value)
    new_node.pointer = current.pointer
    current.pointer = new_node
  end
end
