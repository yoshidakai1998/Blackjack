# デッキクラス
class Deck
  def initialize
    @cards = []
    build
  end

# 山札作成
  def build
    for suit in ["♡", "♠", "♦︎", "♣︎"] do
      for number in ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"] do
        card = Card.new(suit, number)
        @cards << card
      end
    end
  end

# 山札シャッフル
  def shuffle
    cards_length =(@cards.count) - 1
    cards_length.step(1,-1) do |i|
      r = rand(i)
      @cards[i] , @cards[r] = @cards[r], @cards[i]
    end
  end

# 山札の上から一枚引く
  def draw_card
    @cards.pop
  end

# 得点が21になるようなカードを探して引く
  def destiny_draw_card(player)
    target = (21 - player.score_count)
    @cards.find { |card| (card.instance_variable_get :@number) == target.to_s }
  end
end