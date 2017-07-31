
module MathGame
  class Turn
    def initialize(current_player, x, y)
      @current_player = current_player
      @x = x
      @y = y
    end

    def generate_turn
      Question.generate_questions(@current_player, @x, @y)
    end
  end
end
