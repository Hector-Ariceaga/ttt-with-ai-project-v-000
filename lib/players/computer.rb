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
        if !board.taken?(5)
          '5'
        elsif !board.taken?(7)
          '7'
        elsif !board.taken?(1)
          '1'
        elsif !board.taken?(3)
          '3'
        elsif !board.taken?(9)
          '9'
        elsif !board.taken?(2)
          '2'
        elsif !board.taken?(4)
          '4'
        elsif !board.taken?(6)
          '2'
        elsif !board.taken?(8)
          '2'
        end
      when 2 
        if board.position(5) != 'O'
          if !board.taken?(3)
            '3'
          elsif !board.taken?(1)
            '1'
          elsif !board.taken?(9)
            '9'
          end
        elsif board.position(5) == 'O' 
          '3'
        elsif board.position(9) == 'O'
          '3'
        elsif board.position(3) == 'O'
          '9'
        end
      when 3
        if board.position(7) == 'X' && board.position(3) == 'X'
          '5'
        elsif board.position(7) == 'X' && board.position(1) == 'X'
          '4'
        elsif board.position(7) == 'X' && board.position(9) == 'X'
          '8'
        end 
      when 4
        if board.position(1) == 'X' && board.position(5) == 'X'
          '4'
        elsif board.position(7) == 'X' && board.position(3) == 'X'
          '5'
        elsif board.position(7) == 'X' && board.position(9) == 'X'
          '8'
        end
      when 5
        if board.position(1) == 'O' && board.position(3) == 'O'
          '2'
        elsif board.position(1) == 'O' && board.position(7) == 'O'
          '4'
        elsif board.position(1) == 'O' && board.position(9) == '8'
      end
        
      end
    end 
  end
end
  