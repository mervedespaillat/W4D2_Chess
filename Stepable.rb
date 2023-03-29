module Stepable
    def moves
      # create array to collect moves
        moves = []

        move_diffs.each do |x, y|
            curr_x = self.pos[0]
            curr_y = self.pos[1]

            curr_x, curr_y = position

            curr_x += x
            curr_y += y
            position = [curr_x, curr_y]
            if board.valid_pos?(position) && Piece.pos[position].color != self.color
                #get back to it later to add
                moves << position
            end
        end

      # iterate through each of the piece's possible move_diffs
        # for each move_diff, increment the piece's position to generate a new position
        # add the new position to the moves array if it is:
          # on the board and empty
          # OR on the board and contains a piece of the opposite color
  
      # return the final array of moves
    end
  
    private
  
    def move_diffs
      # subclass implements this
      raise NotImplementedError
    end
  end
  
  
  # Note: you can invoke methods from the piece from within the module methods, 
  # and vice versa. It is a two way street!