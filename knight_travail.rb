# The Odin Project, Data Structures and alogorithms asssignment pt II. The Knight chesspiece script.

require_relative 'chesspiece'


class Vertex

    attr_accessor :piece :value :neighbours :weight

    def initialize (value)
        @value = coordinates
        @neighbours = []
        @weights = []
    end

    def add_edge (vertex, weight = 1)
        @neighbours << vertex
        @weights << 1
    end

end

class Graph

    attr_accessor :vertices

    def initialize
        @vertices = {}
    end

    def add_vertex(vertex)
        @vertices[vertex.value] = vertex
    end

    def add_edge (vertex_1, vertex_2)
        #Need to re-read Hash.
        @vertices[vertex_1].add_edge(@vertices[vertex_2])
        @vertices[vertex_2].add_edge(@vertices[vertex_1])
    end

    def count
        @vertices.length
    end

    def bfs (value)

    end

    def dfs (value)

    end


end

def knight_travails (start, finish = nil)

end

knight_travails([0,0],[2,4])