require_relative 'piece'

class Pawn < Piece
    def symbol
        '♟️'.colorize(color)
    end
    
    def moves

    end

    def at_start_now?
        if (self.pos[0] == 1 || self.pos[0] == 6)
    end

end