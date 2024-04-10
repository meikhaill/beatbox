require 'rspec'
require_relative 'spec_helper.rb' # Adjust the path as necessary

RSpec.describe Node do
 describe '#initialize' do
    it 'returns the expected output for given input' do
      node = Node.new("hello")
      expect(node.data).to eq("hello")
      expect(node).to be_a(Node)
    end
 end

 
end