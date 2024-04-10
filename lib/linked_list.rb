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

  def find(index, num_of_elements)
    
  end

  def pop
    current = @head
    until current.pointer.pointer == nil
      current = current.pointer
      puts "this is the current #{current}"
    end
    current.pointer = nil
  end

  def includes?(value)
    unless @head == nil
      current = @head
    end

    if current == nil
      return false
    end

    while current != nil
      if current.data == value
        puts "is true"
        return true
      end
      current = current.pointer
    end
    puts "not true yet"
    return false
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

  #with count, if an item is removed, it still counts it, WIP
  #count also returns zero based, so + 1 is there to fix that, shouldnt be permanent
  def count
    return @counter + 1
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
