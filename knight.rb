# The Odin Project, Data Structures and alogorithms asssignment pt II. The Knight chesspiece script.


class ChessPiece

    attr_accessor :pos_x, :pos_y, :possible_moves
    attr_reader :moves

    def initialize (posistion)
        @moves = []
        @pos_x = posistion[0]
        @pos_y = posistion[1]
        @possible_moves = []
        set_possible_moves
    end

    def set_possible_moves
        @moves.each do |move| 
            x = @pos_x + move[0] # => 1, 1,  -1, -1, 2, 2,  -2, -2
            y = @pos_y + move[1] # => 2, -2, 2,  -2, 1, -1, 1,  -1
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
        end
    end
end

class Knight < ChessPiece

    def initialize (posistion)
        @moves = [[1, 2], [1,-2], [-1, 2],[-1,-2],[2, 1],[2, -1],[-2, 1],[-2, -1]]
        @pos_x = posistion[0]
        @pos_y = posistion[1]
        @possible_moves = []
        set_possible_moves
    end
end

knight = Knight.new([0,0]) 
knight.possible_moves # => [[1, 2], [2, 1]]
knight.current_position # => [0, 0]
knight.move_piece ([1,2])
knight.current_position # => [1, 2]


