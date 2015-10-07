class Deck
  def initialize(deck_size)
    @deck_size = deck_size
  end

  def chances_of_getting_card
    1 / @deck_size
  end
end

class MagicDeck
  def chances_of_getting_card
    # Noooooooooo....
    0.019
  end
end

