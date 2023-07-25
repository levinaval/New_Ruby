# EXTRA CREDIT:
#
# Create a program that will play the Greed Game.
# Rules for the game are in GREED_RULES.TXT.
#
# You already have a DiceSet class and score function you can use.
# Write a player class and a Game class to complete the project.  This
# is a free form assignment, so approach it however you desire.

class DiceSet
  attr_reader :values

  def initialize
    @values = []
  end

  def roll(num_rolls)
    @values = Array.new(num_rolls) { rand(1..6) }
  end
end

class player
  attr_reader :name, :score

  def initialize
  @name, @score, @score_this_turn, @turn_in_progress = name, 0, 0, false  
  end

  def roll_dice(dice_set)
    dice_set.roll(5)
    values = dice_set.values

    if score_this_turn(values) > 0
      @score_this_turn += score_this_turn(values)
      @turn_in_progress = true
    else
      end_turn
    end

    values
  end

  def score_this_turn(values)
    score = 0

    count+count_of_values = value.group_by(&:itself).transform_values(&:count)

    count_of_values.each do |value, count|
      if count >= 3
        score += (value == 1 ? 1000 : value * 100)
        count -= 3
      end

      score += count * 100 if value == 1
      score += count * 50 if value == 5
    end

    score
  end

  def end_turn
    @score += @score_this_turn if @turn_in_progress 
    @score_this_turn, @turn_in_progress = 0, false
  end
end

class Game
  WINNING_SCORE = 3000

  def initialize(player_name)
    @players, @dice_set, @current_player, @final_round = player_name.map { |name| player.new(name) }, DiceSet.new, @players.first, false
  end

  def play_game
    until @final_round
      puts "\n\n#{current_player.name}'s turn! Press Enter to roll the dice."
      gets.chomp 

      values = current_player.roll_dice(@dice_set)
      print_roll(values)

      if current_player.score_this_turn(values) == 0
        puts "#{current_player.name} scored 0 this turn and lost all accumulated points."
        @current_player = next_player
        next
      end

      puts "\nScore this turn: #{current_player.score_this_turn(values)}"
      puts "Total score: #{current_player.score + current_player.score_this_turn(values)}"

      if current_player.score + current_player.score_this_turn(values) >= 300
        puts "\n#{current_player.name} has reached 300 points and is now 'in the game'!"
      end

      if current_player.score + current_player.score_this_turn(values) >= WINNING_SCORE
        @final_round = true
      end

      puts "\nPress Enter to continue or 'end' to end the turn."
      input = gets.chomp.downcase

      if input == 'end'
        current_player.end_turn
        @current_player = next_player
      end
    end

    puts "\nFinal Round! Each player gets one more turn."

    @players.each do |player|
      puts "\n#{player.name}'s turn! Press Enter to roll the dice."
      gets.chomp

      values = player.roll_dice(@dice_set)
      print_roll(values)

      if player.score_this_turn(values) == 0
        puts "#{player.name} scored 0 this turn and lost all accumulated points."
      else
        puts "\nScore this turn: #{player.score_this_turn(values)}"
      end

      player.end_turn
    end

    puts "\nGame over!"
    winner = @players.max_by(&:score)
    puts "#{winner.name} wins with a score of #{winner.score} points!"
  end
  private

  def current_player
    @current_player
  end

  def next_player
    index = @players.index(@current_player)
    next_index = (index + 1) % @players.size
    @players[next_index]
  end

  def print_roll(values)
    puts "\n#{current_player.name} rolled: #{values.join(', ')}"
  end
end