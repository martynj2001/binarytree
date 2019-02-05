# The Odin Project, Data Structures and alogorithms asssignment pt II. The Knight chesspiece script.


class ChessPiece

    attr_accessor :piece, :pos_x, :pos_y, :possible_moves, :posistion
    attr_reader :moves

    def initialize (posistion)
        @posistion = posistion
        @moves = []
        @piece = nil
        @possible_moves = []
        set_possible_moves
    end

    def set_possible_moves
        @moves.each do |move| 
            x = @posistion[0] + move[0] # => 1, 1,  -1, -1, 2, 2,  -2, -2, 2, 2, 0, 0, 3, 3, -1, -1
            y = @posistion[1] + move[1] # => 2, -2, 2,  -2, 1, -1, 1,  -1, 4, 0, 4, 0, 3, 1, 3,  1
            @possible_moves << [x, y] if (0..7).include?(x) && (0..7).include?(y)
        end
    end

    def move_piece (new_posn)
        if @possible_moves.include?(new_posn)
            @posistion = new_posn
            @possible_moves = []
            set_possible_moves
        end
    end
end

class Knight < ChessPiece

    attr_accessor :previous_knight

    def initialize (posistion, previous_knight = nil)
        @piece = :knight
        @posistion = posistion
        @previous_knight = previous_knight
        @moves = [[1, 2], [1,-2], [-1, 2],[-1,-2],[2, 1],[2, -1],[-2, 1],[-2, -1]]
        @possible_moves = []
        set_possible_moves
    end

    def move_piece (new_posn)
        if @possible_moves.include?(new_posn)
            @previous_knight = current_knight
            @pos_x = new_posn[0]
            @pos_y = new_posn[1]
            @possible_moves = []
            set_possible_moves
        end
    end

    def current_knight
        self
    end
end

class Bishop < ChessPiece

end

class Pawn < ChessPiece

end


