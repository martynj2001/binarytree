# The Odin Project, Data Structures and alogorithms asssignment pt II. The Knight chesspiece script.


class ChessPiece

    attr_accessor :piece, :pos_x, :pos_y, :possible_moves :previous_coord
    attr_reader :moves

    def initialize (posistion)
        @moves = []
        @piece = nil
        @pos_x = posistion[0]
        @pos_y = posistion[1]
        @possible_moves = []
        set_possible_moves
    end

    def set_possible_moves
        @moves.each do |move| 
            x = @pos_x + move[0] # => 1, 1,  -1, -1, 2, 2,  -2, -2, 2, 2, 0, 0, 3, 3, -1, -1
            y = @pos_y + move[1] # => 2, -2, 2,  -2, 1, -1, 1,  -1, 4, 0, 4, 0, 3, 1, 3,  1
            @possible_moves << [x, y] if (0..7).include?(x) && (0..7).include?(y)
        end
    end

    def current_position
        current_position = [pos_x, pos_y]
    end

    def move_piece (new_posn)
        if @possible_moves.include?(new_posn)
            @pos_x = new_posn[0]
            @pos_y = new_posn[1]
            @possible_moves = []
            set_possible_moves
        end
    end
end

class Knight < ChessPiece

    def initialize (posistion)
        @piece = :knight
        @moves = [[1, 2], [1,-2], [-1, 2],[-1,-2],[2, 1],[2, -1],[-2, 1],[-2, -1]]
        @pos_x = posistion[0]
        @pos_y = posistion[1]
        @possible_moves = []
        set_possible_moves
    end
end

class Bishop < ChessPiece

end

class Pawn < ChessPiece

end


