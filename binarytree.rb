# The Odin Project - Advanced Ruby; Data Structures and Alogorithms assignement
# Binary Tree - including Depth First and Breadth First serach functions.

class Node

	attr_accessor :right, :left, :parent
	attr_reader :data
	
	def initialize (parent = nil, data)
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
	
	end
	
	def add_node value
		
	end

end
