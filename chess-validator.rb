########################################
# author: jorge juan p.
# date: october 2015
# exercise: CHESS VALIDATOR
# http://www.ironhack.com:3000/#/learning_unit/153

# get board status
# get moves (origin, destination)
# check indicated origin position in board; is there any piece?
# if YES, can that piece move to the indicated destination?
#########################################

class Board
  attr_reader :board_status, :moves

  def initialize
    @board_status = []
    @moves = []
  end

  def load_board_status
    @board_status = IO.readlines("archives/rooks_board.txt").map &:split
  end

  def load_moves
    @moves = IO.readlines("archives/simple_moves.txt").each do |line|
      line.split(" ")
    end
  end

  def print_board_status
    puts "This is the board status #{@board_status}"
  end

  # def translate_position(position)
  #   @coordinates = position.split("") #=> ["a", "8"]
  #   case coordinates[0]
  #   when "a"
  #     coordinates[0] = 0
  #   when "b"
  #     coordinates[0] = 1
  #   when "c"
  #     coordinates[0] = 2
  #   when "d"
  #     coordinates[0] = 3
  #   when "e"
  #     coordinates[0] = 4
  #   when "f"
  #     coordinates[0] = 5
  #   when "g"
  #     coordinates[0] = 6
  #   when "h"
  #     coordinates[0] = 7
  #   else
  #     puts "error!"
  #   end
  #
  #   case coordinates[1]
  #   when "8"
  #     coordinates[1] = 0
  #   when "7"
  #     coordinates[1] = 1
  #   when "6"
  #     coordinates[1] = 2
  #   when "5"
  #     coordinates[1] = 3
  #   when "4"
  #     coordinates[1] = 4
  #   when "3"
  #     coordinates[1] = 5
  #   when "2"
  #     coordinates[1] = 6
  #   when "1"
  #     coordinates[1] = 7
  #   else
  #     puts "error!"
  #   end
  #
  #   return @coordinates
  # end

  def position_satus?(position)
    if @board_status[position] == "--"
      puts "It's free!"
      return true
    else
      puts "Occupied by #{@board_status[position]}"
      return false
    end
  end
end


class Rook
  def initialize(name, position)
    @name = name
    @current_position = position
    # @destination = destination
  end

  # def move(board, origin destination)
  #   valid_move?(board, origin destination)
  #
  # end

  def valid_move?(board, origin, destination)

  end
end

rook = Rook.new("wB", [7, 0])
board = Board.new
board.load_board_status
board.print_board_status
board.position_free?([7, 0])
rook.valid_move?(board, [7, 0], [4, 0])
board.load_moves
