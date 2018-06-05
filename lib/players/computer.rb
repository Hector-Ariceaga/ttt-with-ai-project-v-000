require 'pry'
module Players
  class Computer < Player
    def move(board)
      turn = board.turn_count
      
      case turn
      when 0
        if !board.taken?(7)
          '7' 
        end
      when 1 
        if !board.taken?(7)
          '7'
        elsif !board.taken?(1)
          '1'
        end
    end 
  end
end
  