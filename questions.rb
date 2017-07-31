module MathGame
  class Question

    def self.generate_questions(current_player, x, y)

      # start with a question
      puts "#{current_player.name}: What does #{x} plus #{y} equal?"
      print '> '
      ans = gets.chomp.to_i

      # check if the answer is correct
      if x + y == ans
        puts "#{current_player.name}: YES! You are correct."
      else
        current_player.lives -= 1
        puts "#{current_player.name}: Seriously? No!"
      end
    end
  end
end
