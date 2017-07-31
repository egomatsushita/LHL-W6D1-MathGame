# turns.rb

require './questions'

class Turns

  def initialize(current_player, x, y)
    @current_player = current_player
    @x = x
    @y = y
  end

  def generate_turn
    Questions.generate_questions(@current_player, @x, @y)
  end
end
