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
			if parent.right
				puts "parent already has a right node"
				add_node(parent.right, value)
			else
				puts "Create New node on the right"
				parent.right = Node.new (value, parent)
			end
			# parent.right ? add_node(value, parent.right) : Node.new(parent) # If theres alreay a right node, then go around again, else create node and connect to parent.
		elsif value < parent.data # Node connects on left
			puts "#{value} is less than #{parent.data}"
			if parent.left
				puts "Parent already has left node: #{parent.left.data}"
				add_node(parent.left, value)
			else
				puts "Create New node on left"
				parent.left = Node.new (value, parent)
				puts "New left node added to #{parent.data}"
			end
			# parent.left ? add_node(value, parent.left) : Node.new(parent) # If theres alreay a left node, then go around again, else create node and connect to parent.
		end	
	end

end

list = BinaryTree.new
list.build_tree ([5,1,4,7,22,42,31,100])

list.print_node (list.root)