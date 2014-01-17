class Card
	attr_accessor :number, :suit

	def initialize(number, suit)
		@number = number
		@suit = suit
	end
end

#card1 = Card.new(6, "hearts")
#card2 = Card.new(8, "spade")
#card3 = Card.new(9, "diamonds")
#card4 = Card.new(7, "club")
#card5 = Card.new(13, "hearts")

#card1 = Card.new(6, "club")
#card2 = Card.new(8, "club")
#card3 = Card.new(9, "club")
#card4 = Card.new(7, "club")
#card5 = Card.new(10, "club")

card1 = Card.new(1, "club")
card2 = Card.new(10, "club")
card3 = Card.new(11, "club")
card4 = Card.new(12, "club")
card5 = Card.new(13, "club")

class Dealer
	attr_accessor :cards

	def initialize(cards)
		@cards = cards
	end

	def is_flush?
		numbers = @cards.collect {|card| card.number}
		suits = @cards.collect {|card| card.suit}

		if suits.uniq.size == 1
			numbers.sort!
			if numbers.first == 1
				if numbers.last - numbers.first == 4 || 14 - numbers[1] == 4
					return "flush"
				else
					return "not flush"
				end
			else
				if numbers.last - numbers.first == 4
					return "flush"
				else
					return "not flush"
				end
			end
		else
			return "not flush"
		end
	end
end

dealer = Dealer.new([card1, card2, card3, card4, card5])
p dealer.is_flush?
