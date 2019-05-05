# カードクラス
class Card
  def initialize(suit, number)
    @suit = suit
    @number = number
  end

  def show
    return "#{@suit}  of #{@number}"
  end

# J,Q,Kの処理
  def count
    if @number == "J" || @number == "Q" || @number == "K"
      return @number = 10
    else
      return @number.to_i
    end
  end
end
