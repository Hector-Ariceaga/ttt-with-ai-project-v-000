module Players
  class Computer < Player
    def move(board)
      turn = board.turn_count
      
      case turn
      when 0
        if !taken?(7)
          7
        elsif !taken
      end
    end 
  end
end
  