require_relative 'Cart'

class Dealer
	attr_reader :deck

	def initialize

		@h_cart = {'6+'=>6, '7+'=>7, '8+'=>8, '9+'=>9, '10+'=>10, 'V+'=>2, 'D+'=>3, 'K+'=>4, 'A+'=>1,
				   '6^'=>6, '7^'=>7, '8^'=>8, '9^'=>9, '10^'=>10, 'V^'=>2, 'D^'=>3, 'K^'=>4, 'A^'=>1,
				   '6&'=>6, '7&'=>7, '8&'=>8, '9&'=>9, '10&'=>10, 'V&'=>2, 'D&'=>3, 'K&'=>4, 'A&'=>1,
		 		   '6%'=>6, '7%'=>7, '8%'=>8, '9%'=>9, '10%'=>10, 'V%'=>2, 'D%'=>3, 'K%'=>4, 'A%'=>1}
		@name ='Dealer'
		@deck = []
	end

	def dealer_cart
		@deck << t_cart
	end

	def game_score
		sum = 0
		@h_cart.each do |key, value|
			@deck.each do |cart| 
				if key == cart
				sum += value
				end
			end
		end
		p sum
	end

	def t_cart
		cart.take_cart
	end

	def cart
		cart = Cart.new
	end

	def sc
		# score = game_score
		# score.class

		if game_score <= 17
			p "now"
		else
			p "ok"
		end
	end
end
