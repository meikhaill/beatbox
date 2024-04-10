require_relative 'linked_list.rb'
require_relative 'node.rb'

class BeatBox 
  attr_accessor :list, :beatcount, :rate, :voice
  
  def initialize()
    @beatcount = beatcount
    @list = LinkedList.new
    @rate = 500
    @voice = "default"
    @list_counter = []
  end

  def append(value)
    @list.append(value)
    @list_counter.push(value)
    return @list
  end

  def all
    puts @list.to_string
    return @list.to_string
  end

  def count
    @list_counter.size
  end

  def rate(value)
    @rate = value
  end

  def reset_rate
    @rate = 500
  end

  def reset_voice
    @voice = "default"
  end

  # def voice(value)
  #   @voice = value
  # end
  
  def play
    str = @list.to_string
    `say -r #{@rate} "#{str}"`
  end
end