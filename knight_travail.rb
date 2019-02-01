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

	puts "No destination" if finish.nil? 
	path = [start]
	queue = [start]
	knight = Knight.new ([start])
	knight.possible_moves.each do |m| 
		if m == finish
			path << m
			queue.clear
		else
			queue << m
		end
	end
	
	while queue.length > 0
		
		
	end
	
	puts "Knight Travails - #{path}"
end

knight_travails([0,0],[2,4])