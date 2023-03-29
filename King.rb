require_relative 'piece'
require_relative 'stepable'

class King < Piece
  include Stepable

  def symbol
    '♚'.colorize(color)
  end

  protected

  def move_diffs
    [
        [1, 0],
        [1, 1],
        [1, -1],
        [0, 1],
        [-1, -1],
        [-1, 1],
        [-1, 0],
        [0, -1]

    ]
    # return an array of diffs representing where a King can step to
  end