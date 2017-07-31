# matches.rb

require 'pry'
require './players'
require './turns'

class Matches

  def self.generate_match

    # enter new players
    print "Player 1: Enter your name... "
    play1 = $stdin.gets.chomp
    print "Player 2: Enter your name... "
    play2 = $stdin.gets.chomp

    # initialize new players
    player1 = Players.new(play1)
    player2 = Players.new(play2)
    puts ""

    count = 0

    # end when player lives equal to zero
    while true do
      if count % 2 == 0
        player = player1
      else
        player = player2
      end

      x = rand(0..20)
      y = rand(0..20)

      # generate a new turn
      turn = Turns.new(player, x, y)
      turn.generate_turn
      puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3", ""

      # condition to exit the loop
      if player1.lives != 0 && player2.lives != 0
        puts "------------ NEW TURN ------------"
      else
        win_player = player1.lives == 0 ? player2 : player1
        puts "#{win_player.name} wins with a score of #{win_player.lives}/3"
        puts "------------ GAME OVER ------------"
        puts "Good bye!"
        exit(0)
      end

      count += 1
    end

  end

end