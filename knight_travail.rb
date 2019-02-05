# The Odin Project, Data Structures and alogorithms asssignment pt II. The Knight chesspiece script.

require_relative 'chesspiece'
require_relative 'chessboard'

def knight_travails (knight, finish)

    queue = [knight] 
    found = false

    route = [knight.posistion]
    until found
        current_knight = queue.shift
        if current_knight.posistion == finish
            route.unshift current_knight.posistion
            found = true

            until current_knight.previous_knight == nil
                p current_knight.posistion
                p current_knight.previous_knight.posistion
                current_knight = current_knight.previous_knight
                p current_knight
                route.unshift current_knight.posistion
            end
        end
        current_knight.possible_moves.each {|k| queue << Knight.new(k, current_knight)}
    end
    p route
end

def bfs_dest(knight, dest)
    search_path = [knight.posistion]
    queue = [knight.posistion]
    while queue.length > 0
        knight.possible_moves.each do |s| 
            unless queue.include?(s)
                return puts "Destination found #{search_path << s}." if s == dest
                queue << s
                search_path << s
            end
        end
        queue.shift
        knight.move_piece(queue[0])
    end        
end

knight = Knight.new([0,0])
p knight.posistion
bfs_dest(knight, [2,4])
knight_travails(knight, [2,4])

# >> [0, 0]
# >> Destination found [[0, 0], [1, 2], [2, 1], [2, 4]].
# >> [2, 4]
# >> [0, 0]
# >> [[1, 2], [1, -2], [-1, 2], [-1, -2], [2, 1], [2, -1], [-2, 1], [-2, -1]]

# ~> NoMethodError
# ~> undefined method `posistion' for #<Array:0x00007fdda110ed80>
# ~>
# ~> knight_travail.rb:23:in `knight_travails'
# ~> knight_travail.rb:51:in `<main>'


