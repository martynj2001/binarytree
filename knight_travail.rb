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