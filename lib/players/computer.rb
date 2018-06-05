require 'pry'
module Players
  class Computer < Player
    def move(board)
      turn = board.turn_count
      
      case turn
      when 0
        '7' if !board.taken(7)
      end
      
    end 
  end
end
  