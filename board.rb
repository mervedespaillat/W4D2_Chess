
class Board
    attr_reader :rows
    def initialize
        @rows = Array.new(8){Array.new(8)}
    
    end

    def [](pos)
        row, col = pos
        @rows[row][col]
    end

    def []=(pos,val)
        row, col = pos
        @rows[row][col] = val
    end

    def move_piece(start_pos, end_pos)

        # Check if start position has a piece
        piece = self[start_pos]
        if piece == nil
            raise "There is no piece here."
        end

        # Check if end position is within the grid/board
        # row, col = end_pos
        # if (row < 0 || row > 7) || (col < 0 || col > 7)
        #     raise "Not a valid end position"
        # end
  
        # Set piece at end position & remove from start
        self[end_pos] = piece
        self[start_pos] = nil


    end
        
        # raise "not a valid position" if valid_pos?(end_pos)


    def valid_pos?(pos)
        #checking if the position on the board

        if ((pos[0] < 8 || pos[0] >=0) && (pos[1] < 8 || pos[1] >=0)) && self[pos] == nil

            #check the piece's color at end_pos
            #add another condition for empty position
             return true
        end
        false



        
    end

private
# @null_piece = NullPiece


end

