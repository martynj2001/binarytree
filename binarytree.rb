# The Odin Project - Advanced Ruby; Data Structures and Alogorithms assignement
# Binary Tree - including Depth First and Breadth First serach functions.

class Node

	attr_accessor :right, :left, :parent
	attr_reader :data
	
	def initialize (data, parent = nil)
		@data = data
		@parent = parent
		@right = nil
		@left = nil
	end

end

class BinaryTree

	attr_accessor :root
	
	def initialize
		@root = nil
	end
	
	def build_tree arr
		@root = Node.new (arr.shift)
		self.print_node (@root)
		arr.each do |n| 
			add_node(@root, n)
		end
	end
	
	def print_tree 
	
		
	end

	def print_node node
	
		puts "[ #{node.parent ? node.parent.data : nil} ]"
		puts "( #{node.data} )"
		puts "[ #{node.right ? node.right.data : nil} ]"
		puts "[ #{node.left ? node.left.data : nil} ]"

	end
	
	def add_node parent, value
		if value > parent.data # Node connects on right
			puts "#{value} is greater than #{parent.data}"
			puts "parent.right #{parent.right ? ' exists.' : ' doesn\'t exist.'}"
			parent.right ? add_node(value, parent.right) : parent.right = Node.new(value, parent) # If theres alreay a right node, then go around again, else create node and connect to parent.
		elsif value < parent.data # Node connects on left
			puts "#{value} is greater than #{parent.data}"
			puts "parent.left #{parent.left ? ' exists.' : ' doesn\'t exist.'}"
			parent.left ? add_node(value, parent.left) : parent.left = Node.new(value, parent) # If theres alreay a left node, then go around again, else create node and connect to parent.
		end	
	end

end

list = BinaryTree.new
list.build_tree ([5,1,4,7,22,42,31,100])

list.print_node (list.root)