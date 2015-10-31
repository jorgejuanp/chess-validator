########################################
# author: jorge juan p.
# date: october 2015
# exercise: CHESS VALIDATOR
# http://www.ironhack.com:3000/#/learning_unit/153
#########################################

class Board
  def initialize
    @grid = [["--", "--", "--", "--", "--", "--", "--", "--"],
            ["--", "--", "--", "--", "--", "--", "--", "--"],
            ["--", "--", "--", "--", "--", "--", "--", "--"],
            ["--", "--", "--", "--", "--", "--", "--", "--"],
            ["--", "--", "--", "--", "--", "--", "--", "--"],
            ["--", "--", "--", "--", "--", "--", "--", "--"],
            ["--", "--", "--", "--", "--", "--", "--", "--"],
            ["--", "--", "--", "--", "--", "--", "--", "--"]]
  end

  def load_board_status
    board_status = IO.readlines("archives/simple_board.txt").map &:split
    puts board_status
  end
end

# class Rook
#   def initialize(position, destination)
#     @current_position = [0, 0]
#     @destination =
#   end
#
#   def valid_move?(board, origin, destination)
#   end
# end


board = Board.new
board.load_board_status
