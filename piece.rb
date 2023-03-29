require_relative "board.rb"
class Piece
    attr_reader :color, :board, :pos
    def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
    @null_piece = NullPiece
    end
end


