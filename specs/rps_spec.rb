require('minitest/autorun')
require('minitest/rg')
require_relative('../models/rps.rb')

class Rps_test < Minitest::Test
  def setup
    @rock = RockPaperScissors.new("Rock", "Scissors")
    @rock1 = RockPaperScissors.new("Scissors", "Rock")
    @paper = RockPaperScissors.new("Rock", "Paper")
    @paper1 = RockPaperScissors.new("Paper", "Rock")
    @scissors = RockPaperScissors.new("Paper", "Scissors")
    @scissors1 = RockPaperScissors.new("Scissors", "Paper")
    @draw = RockPaperScissors.new("Rock", "Rock")
  end

  def test_rock_win__1
    assert_equal("Rock crushes Scissors, well done player 1", @rock.find_result)
  end
  def test_rock_win__2
    assert_equal("Rock crushes Scissors, well done player 2", @rock1.find_result)
  end
  def test_paper_win__1
    assert_equal("Paper covers Rock, well done player 2", @paper.find_result)
  end
  def test_paper_win__2
    assert_equal("Paper covers Rock, well done player 1", @paper1.find_result)
  end

  def test_scissors_win__1
    assert_equal("Scissors cuts Paper, well done player 2", @scissors.find_result)
  end
  def test_scissors_win__2
    assert_equal("Scissors cuts Paper, well done player 1", @scissors1.find_result)
  end

  def test_draw
    assert_equal("It was draw", @draw.find_result)
  end
end
