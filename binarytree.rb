# The Odin Project - Advanced Ruby; Data Structures and Alogorithms assignement
# Binary Tree - including Depth First and Breadth First serach functions.

class Node

	attr_accessor :right, :left, :parent
	attr_reader :data
	
	def initialize (data, parent = nil)
		@parent = parent
		@right = nil
		@left = nil
		@data = data
	end

end

class BinaryTree

	attr_accessor :root
	
	def initialize
		@root = nil
	end
	
	def build_tree arr
		@root = Node.new (arr.shift)
		arr.each do |n| 
			add_node(@root, n)
		end
	end

	def print_tree

	end
	
	def add_node parent, value
		if value > parent.data # Node connects on right
			parent.right ? add_node(value, parent.right) : Node.new(parent) # If theres alreay a right node, then go around again, else create node and connect to parent.
		elsif value < parent.data # Node connects on left
			parent.left ? add_node(value, parent.left) : Node.new(parent) # If theres alreay a left node, then go around again, else create node and connect to parent.
		end	
	end

end
