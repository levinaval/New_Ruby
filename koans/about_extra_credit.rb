class DiceSet
  attr_reader :values

  def initialize
    @values = []
  end

  def roll(num_rolls)
    @values = Array.new(num_rolls) { rand(1..6) }
  end
end

class Player
  attr_reader :name, :score

  def initialize(name)
    @name = name
    @score = 0
    @score_this_turn = 0
    @turn_in_progress = false
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

    count_of_values = values.group_by(&:itself).transform_values(&:count)

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
    @score_this_turn = 0
    @turn_in_progress = false
  end
end

class Game
  WINNING_SCORE = 3000

  def initialize(player_names)
    @players = player_names.map { |name| Player.new(name) }
    @dice_set = DiceSet.new
    @current_player_index = 0
    @final_round = false
  end

  def play_game
    until @final_round
      puts "\n\n#{current_player.name}'s turn! Press Enter to roll the dice."
      gets.chomp

      values = current_player.roll_dice(@dice_set)
      print_roll(values)

      if current_player.score_this_turn(values) == 0
        puts "#{current_player.name} scored 0 this turn and lost all accumulated points."
        @current_player_index = next_player_index
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
        @current_player_index = next_player_index
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
    @players[@current_player_index]
  end

  def next_player_index
    (@current_player_index + 1) % @players.size
  end

  def print_roll(values)
    puts "\n#{current_player.name} rolled: #{values.join(', ')}"
  end
end

# Exemplo de como jogar o jogo:
# Coloque os nomes dos jogadores abaixo
player_names = ["Player 1", "Player 2", "Player 3"]
game = Game.new(player_names)
game.play_game
