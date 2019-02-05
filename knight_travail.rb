# The Odin Project, Data Structures and alogorithms asssignment pt II. The Knight chesspiece script.

require_relative 'chesspiece'
require_relative 'chessboard'

def knight_travails (start, finish)

    queue = [Knight.new(start)]
    found = false

    route = []
    until found
        current_knight = queue.shift
        if current_knight.posistion == finish
            route.unshift current_knight.posistion
            found = true

            until current_knight.previous_knight.nil?
                current_knight = current_knight.previous_knight
                route.unshift current_knight.posistion
            end
        end
         
        current_knight.possible_moves.each do |k| {queue << Knight.new(k, current_knight)}
        	
    end
    p route
end

knight_travails([0,0], [2,4])




