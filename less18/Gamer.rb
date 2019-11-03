require_relative 'Cart'

class Gamer
	attr_reader :deck
	attr_reader :name

	def initialize(name)
		@h_cart = {'6+'=>6, '7+'=>7, '8+'=>8, '9+'=>9, '10+'=>10, 'V+'=>2, 'D+'=>3, 'K+'=>4, 'A+'=>1,
				   '6^'=>6, '7^'=>7, '8^'=>8, '9^'=>9, '10^'=>10, 'V^'=>2, 'D^'=>3, 'K^'=>4, 'A^'=>1,
				   '6&'=>6, '7&'=>7, '8&'=>8, '9&'=>9, '10&'=>10, 'V&'=>2, 'D&'=>3, 'K&'=>4, 'A&'=>1,
		 		   '6%'=>6, '7%'=>7, '8%'=>8, '9%'=>9, '10%'=>10, 'V%'=>2, 'D%'=>3, 'K%'=>4, 'A%'=>1}
		@name = name
		@deck = []
	end

	def deck_show
    	@deck.each{|cart| p cart}
  	end

	def game_cart(cart)
		@deck << cart
	end

	def game_score
		sum = 0
		@h_cart.each do |key, value|
			@deck.each do|cart| 
				if key == cart
				sum += value
				end
			end
		end
		p sum.to_i

	end

	def deck_count
		deck.count
	end

end
