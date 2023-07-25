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