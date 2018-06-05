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
        elsif !board.taken(3)
          '3'
        elsif !board.taken(9)
          '9'
        end
      when 2 
        if !board.taken(3)
          '3'
        elsif !board.taken(1)
          '1'
        elsif !board.taken(9)
          '9'
        end
      when 3
        if !board.taken(3)
          '3'
        elsif !board.taken(7)
          '7'
        elsif !board.taken(9)
          '9'
        end 
      when 4
        if board.taken(7) && board.taken(1)
          '4'
        elsif board.taken(7) && board.taken(3)
          '2'
        elsif board.taken(7) && board.taken(9)
          '8'
        end
        
        
      end
    end 
  end
end
  