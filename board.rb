
class Board
    attr_accessor :board
    def initialize 
    row = Array.new(8){Array.new(8)}
    
    end

    def [](pos)
        row, col = pos
        @row[row][col]
    end

    def []=(pos,val)
        row, col = pos
        @row[row][col] = val
    end

    def move_piece(start_pos, end_pos)
        
        raise "not a valid position" if valid_pos?(end_pos)


    end

    def valid_pos?(pos)
        #checking if the position on the board
        if ((pos[0] < 8 && pos[0] >=0) && (pos[1] < 8 && pos[1] >=0)) &&
            self[pos] == null_piece
            #add another condition for empty position
             return true
        end
        false
    end

private
@null_piece = NullPiece


end