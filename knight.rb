# The Odin Project, Data Structures and alogorithms asssignment pt II. The Knight chesspiece script.

include binarytree.rb

class Vertex
    attr_accessor :name, :neighbours, :weight
    def initialize (name)
        :name = name
        :neighbours = []
        :weight = []
    end
end

class Graph


end

class Chess_Square
    attr_accessor :x_coord, :y_coord, :moves

    def initialize (x, y)
        @x_coord = x
        @y_coord = y
        @moves = []
    end

    def set_moves (piece)
        if piece == 'knight'
            #knight can only move 2 steps forward and 1 to side
            @moves << [x_coord + 1, y_coord + 2]
            @moves << [x_coord + 1, y_coord - 2]
            @moves << [x_coord - 1, y_coord + 2]
            @moves << [x_coord - 1, y_coord - 2]
            @moves << [x_coord + 2, y_coord + 1]
            @moves << [x_coord + 2, y_coord - 1]
            @moves << [x_coord - 1, y_coord - 1]
            @moves << [x_coord - 2, y_coord - 1]
        end
    end




