class Cart
	attr_reader :cart_new

	def initialize
		@cart = 0
 		   
		@suits = ['+', '*', '%', '&']
		@a_cart = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'V', 'D', 'K', 'A']
		
		@cart_new = deck
	end

	def deck
		@suits.product(@a_cart).map{|arr| arr.join}
	end

	def take_cart
		@cart = @cart_new.shuffle.first
		@cart_new.delete(@cart)
		#cart_new = @cart.collect![rand(arr.count)]
	end

end