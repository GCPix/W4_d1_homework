class RockPaperScissors
  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

def find_result


    if ((@hand1 == "Rock") && (@hand2 == "Scissors")) ||((@hand2 == "Rock") && (@hand1 == "Scissors"))
      if @hand1 == "Rock"
        return "Rock crushes Scissors, well done player 1"
      else
        return "Rock crushes Scissors, well done player 2"
      end

    elsif ((@hand1 == "Rock") && (@hand2 == "Paper")) || ((@hand2 == "Rock") && (@hand1 == "Paper"))

      return "Paper covers Rock"

    elsif ((@hand1== "Paper") && (@hand2 == "Scissors")) || ((@hand2== "Paper") && (@hand1 == "Scissors"))
      return "Scissors cuts Paper"
    else
        return "It was draw"
  end
end
end
