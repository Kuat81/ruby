
class Gamer
	attr_reader :deck
	attr_reader :name

	def initialize(name)
		@suits = ['+', '*', '%', '&']
		@cart = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'V', 'D', 'K', 'A']
		@h_cart = {}

		@name = name
		@deck = [] 
		deck_cart
	end

	def deck_show
    	@deck.each{|cart| print cart}
  	end

  	def deck
  		@deck
  	end

	def game_cart(cart)
		@deck << cart
	end

	def game_score
		sum = 0
		deck_cart.each do |key, value|
			@deck.each do|cart| 
				if key == cart
				sum += value
				end
			end
		end
		sum

	end

	def deck_count
		deck.count
	end

	def deck_cart
		h = {}
		@suits.product(@cart).each do |arr| 
				if arr[1].class == Integer
				h[arr] = arr[1]
			elsif arr[1].class == String && arr[1] != 'A'
				h[arr] = 10
			else
				h[arr] = 11
			end
		end
		h.each{|key, volume| @h_cart[key.join] = volume}
		@h_cart
	end

end
