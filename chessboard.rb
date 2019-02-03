# Chess board class that builds a graph representation of a 8 x 8 chess board. each square or element will hold an object of class Chesspiece.

class Chesssquare

    attr_accessor :piece, :coord

    def initialize (piece = nil)
        @piece = piece
        @coord = nil
    end
end

class Chessboard

    attr_accessor :squares 

    def initialize 
        @squares = Hash.new
    end

    def create_empty_board
        coordinates = []
        (0..7).each {|x| (0..7).each {|y| coordinates << [x,y]}} 
        coordinates.each{|c| @squares[c] = Chesssquare.new}
    end

    def create_new_board
        # Layout traditional chessboard
    end

    def return_square (coord)
        return @squares[coord]
    end

    def return_piece (coord)
        return @squares[coord].piece
    end

    def set_piece (coord, piece)
        @squares[coord].piece = piece
    end

    def move_piece (start, finish)
        #Would need to check alsorts of stuff first, legal move, curretn .piece etc. 
        @squares[finish] = @squares[start]
        @squares[start].piece = nil
    end

    def print_board
        puts @squares
    end
end
