require 'rspec'
require_relative 'spec_helper.rb' # Adjust the path as necessary

RSpec.describe BeatBox do
 describe '#initialize' do
    it 'returns the expected output for given input' do
      bb = BeatBox.new
      expect(bb.list).to be_a(LinkedList)
    end
 end

 describe '#append' do
    it 'can append a value to the linked list' do
      bb = BeatBox.new
      bb.append("hello world")
      expect(bb.list.head.data).to eq("hello world")
      bb.append("hello all")
      expect(bb.list.head.pointer.data).to eq("hello all")
    end
  end

  describe '#all' do
    it 'can return full linked list as a string' do
      bb = BeatBox.new
      bb.append("hello")
      bb.append("world")
      expect(bb.all).to eq("hello world")
    end
  end

  describe '#count' do 
    it 'can count how many items in a linked list' do
      bb = BeatBox.new
      bb.append("hello")
      bb.append("world")
      bb.append("its")
      bb.append("me")
      expect(bb.count).to eq(4)
    end
  end

 


end