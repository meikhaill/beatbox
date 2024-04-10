require 'rspec'
require_relative 'spec_helper.rb' # Adjust the path as necessary

RSpec.describe LinkedList do
 describe '#initialize' do
    it 'returns the expected output for given input' do
      bb = BeatBox.new
      expect(bb.list).to be_a(LinkedList)
    end
 end

 describe '#to_string' do
    it 'returns a stirng of the full list' do
      list = LinkedList.new
      list.prepend("hello")
      list.append("world")
      expect(list.to_string).to eq("hello world")
    end
  end

  describe '#pop' do
    it 'pops an item off the end of the list' do
      list = LinkedList.new
      list.prepend("hello")
      list.append("world")
      list.append("its")
      list.append("me")
      list.pop
      expect(list.to_string).to eq("hello world its")
    end
  end

  describe '#includes?' do
    it 'sees if something is included in the list' do
      list = LinkedList.new
      list.prepend("hello")
      list.append("world")
      list.append("its")
      list.append("me")
      expect(list.includes?("its")).to eq(true)
      expect(list.includes?("dog")).to eq(false)
    end
  end

  describe '#prepend' do
    it 'prepends an item to the list' do
      list = LinkedList.new
      list.prepend("hello")
      list.append("world")
      list.append("its")
      list.append("me")
      expect(list.head.data).to eq("hello")
      list.prepend("hi")
      expect(list.head.data).to eq("hi")
      expect(list.head.pointer.data).to eq("hello")
    end
  end

  describe '#append' do
    it 'appends an item to the end of the list' do
      list = LinkedList.new
      list.prepend("hello")
      list.append("world")
      list.append("its")
      list.append("me")
      expect(list.head.pointer.data).to eq("world")
    end
  end

  describe 'count' do
    it 'describes the count of items' do
      list = LinkedList.new
      list.prepend("hello")
      list.append("world")
      list.append("its")
      list.append("me")
      expect(list.count).to eq(4)
    end
  end

  describe '#insert' do
    it 'inserts an item wherever you want it' do
      list = LinkedList.new
      list.prepend("hello")
      list.append("world")
      list.append("its")
      list.append("me")
      list.insert(2, "inserted")
      expect(list.to_string).to eq("hello world inserted its me")
    end
  end




end