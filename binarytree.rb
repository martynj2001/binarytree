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
		arr.each do |n| 
			add_node(@root, n)
		end
	end
	
	def print_node node
	
		puts "[ #{node.parent ? node.parent.data : nil} ]:( #{node.data} ):[ #{node.right ? node.right.data : nil} ]:[ #{node.left ? node.left.data : nil} ]"
	end
	
	def add_node parent, value
		if value > parent.data # Node connects on right
			parent.right ? add_node(parent.right, value) : parent.right = Node.new(value, parent) # If theres alreay a right node, then go around again, else create node and connect to parent.
		elsif value < parent.data # Node connects on left
			parent.left ? add_node(parent.left, value) : parent.left = Node.new(value, parent) # If theres alreay a left node, then go around again, else create node and connect to parent.
		end	
	end
	
	def breadth_first_search value = nil
		queue = [@root]
		while queue.length > 0
			print_node(queue[0])
			queue << queue[0].right if !queue[0].right.nil?
			queue << queue[0].left if !queue[0].left.nil?
			return true if value == queue[0].data
			queue.shift
		end
	end
	
	def depth_first_search value

	end
end

list = BinaryTree.new
list.build_tree ([5,1,4,7,22,42,31,100])
list.breadth_first_search