# The Odin Project, Data Structures and alogorithms asssignment pt II. The Knight chesspiece script.

require_relative 'chesspiece'


class Vertex

    attr_accessor :piece :coord :neighbours :weight

    def initialize (coordinates)
        @coord = coordinates
        @neighbours = []
        @weights = []
    end

end

class Graph

    attr_accessor :vertices

    def initialize
        @vertices = []
    end

    def add_vertex(coordinates)
        @vertices << Vertex.new(coordinates)
    end

    def find_vertex_by_coord (coordinates)
        @vertices.each {|vertex| return vertex if vertex.coord == coordinates}
        nil
    end

    def count
        @vertices.length
    end
end

def knight_travails (start, finish = nil)

	path = [start]
	queue = [start]
	knight = Knight.new ([start])
	while queue.length > 0
	 puts "No destination" if finish.nil? 
	 knight.possible_moves.each do |m| 
	 	if m == finish
	 		puts "Knight Travails - #{path << m}"
	 		return
		else
			queue << m
		end
	end
	#
	knight.move_piece
end

def breadth_first_search value = nil
	queue = [@root]
	while queue.length > 0
		print_node(queue[0]) if value.nil?
		queue << queue[0].right if !queue[0].right.nil?
		queue << queue[0].left if !queue[0].left.nil?
		return queue[0] if value == queue[0].data
		queue.shift
	end
end