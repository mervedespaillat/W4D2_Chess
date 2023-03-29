require_relative "board.rb"
class Piece
    attr_reader :color, :board, :pos
    def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = []
    end
end


