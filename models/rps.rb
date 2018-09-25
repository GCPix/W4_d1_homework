class RockPaperScissors
  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

#rock only beats scissors
#paper only beats rock
#Scissors only beats paper

#rock beats scissor beats paper beats rock (or draw)
#rock = 1, scissor = 2, paper = 3
#
# Another theory -I think I should be able to do something with an array but I cant figure it out yet
#
# if @hand1==@hand2 "Its a draw"
#
# options = ["rock", "scissor", "paper"]
#
# if @hand1.options.index < @hand2.options.index && #need to cover off rock, paper
#   @hand1 = winner


#tried to simplify this but it doesn't work unless I can find a way to find out what each hand plays.
  # def find_result
  #   if (@hand1 || @hand2) == "Rock"
  #     if (@hand1 || @hand2) == "Scissors"
  #       "Rock Wins"
  #     elsif (@hand1 || @hand2) == "Paper"
  #       "Paper Wins"
  #     else
  #       "It's a  draw"
  #     end
  #   elsif (@hand1 && @hand2) == "Scissors"
  #     "It's a draw"
  #   else
  #     "Scissors Wins"
  #   end


    if ((@hand1 == "Rock") && (@hand2 == "Scissors")) ||((@hand2 == "Rock") && (@hand1 == "Scissors"))
      if @hand1 == "Rock"
        return "Rock crushes Scissors, well done player 1"
      else
        return "Rock crushes Scissors, well done player 2"
      end

    elsif ((@hand1 == "Rock") && (@hand2 == "Paper")) || ((@hand2 == "Rock") && (@hand1 == "Paper"))
      if @hand1 == "Paper"
        return "Paper covers Rock, well done player 1"
      else
        return "Paper covers Rock, well done player 2"
      end

    elsif ((@hand1== "Paper") && (@hand2 == "Scissors")) || ((@hand2== "Paper") && (@hand1 == "Scissors"))
      if @hand1 == "Scissors"
        return "Scissors cuts Paper, well done player 1"
      else
        return "Scissors cuts Paper, well done player 2"
      end

    else
        return "It was draw"
  end
end
end
