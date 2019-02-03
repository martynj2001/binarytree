# The Odin Project, Data Structures and alogorithms asssignment pt II. The Knight chesspiece script.

require_relative 'chesspiece'
require_relative 'chessboard'

def knight_travails (start, finish = nil)

end

def bfs_dest(knight, dest)
    search_path = [knight.value] 
    queue = [knight.value]
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
bfs_dest(knight, [4,4])

# >> Destination found [nil, [1, 2], [2, 1], [2, 4], [2, 0], [0, 4], [0, 0], [3, 3], [3, 1], [3, 6], [3, 2], [1, 6], [1, 2], [4, 5], [4, 3], [0, 5], [0, 3], [4, 4]].
